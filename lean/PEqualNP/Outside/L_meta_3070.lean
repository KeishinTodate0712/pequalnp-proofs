import Mathlib
import PEqualNP.Defs

namespace PEqualNP.Outside.L_meta_3070

open PEqualNP.CircuitLowerBounds

private def gateOK (g : Gate) : Prop :=
  g.op ∈ ({GateOp.and, GateOp.or, GateOp.not} : Set GateOp) ∧ g.inputs.length ≤ 2

private def relevant {α : Type} (op : GateOp) (inputs : List α) : List α :=
  if op.eval [false] = true then inputs.take 1 else inputs

private def selected (zeros : List ℕ) (g : Gate) : Bool :=
  zeros.any fun k => (relevant g.op g.inputs).contains k

private def initial {n : ℕ} (wires : List (Option (Fin n))) : List (Bool ⊕ ℕ) :=
  wires.map fun o => o.elim (.inl false) (fun i => .inr i.val)

private def value (w : List Bool) : Bool ⊕ ℕ → Bool :=
  Sum.elim id (fun i => w.getD i false)

private def valid (m : ℕ) : Bool ⊕ ℕ → Prop :=
  Sum.elim (fun _ => True) (fun i => i < m)

private def wiresFrom (gs : List Gate) (w : List Bool) : List Bool :=
  gs.foldl (fun w g => w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]) w

private lemma wiresFrom_suffix (gs : List Gate) (w : List Bool) :
    ∃ t, wiresFrom gs w = w ++ t ∧ t.length = gs.length := by
  induction gs generalizing w with
  | nil => exact ⟨[], by simp [wiresFrom], rfl⟩
  | cons g gs ih =>
    let b := g.op.eval (g.inputs.map fun i => w.getD i false)
    obtain ⟨t, ht, hl⟩ := ih (w ++ [b])
    exact ⟨b :: t, by change wiresFrom gs (w ++ [b]) = _; simp [ht], by simp [hl]⟩

private lemma getD_snoc_ne {α : Type} (l : List α) (b d : α) (i : ℕ) (hi : i ≠ l.length) :
    (l ++ [b]).getD i d = l.getD i d := by
  by_cases h : i < l.length
  · exact List.getD_append _ _ _ _ h
  · rw [List.getD_eq_default _ _ (by simp; omega), List.getD_eq_default _ _ (by omega)]

private def reduceGate (m : ℕ) : GateOp → List (Bool ⊕ ℕ) → Option Gate × (Bool ⊕ ℕ)
  | .not, [] => (none, .inl true)
  | .not, .inl c :: _ => (none, .inl (!c))
  | .not, .inr i :: _ => (some ⟨.not, [i]⟩, .inr m)
  | op, [] => (none, .inl (op.eval []))
  | _, [a] => (none, a)
  | op, [.inl c, .inl d] => (none, .inl (op.eval [c, d]))
  | op, [.inl c, .inr i] => (none, bif c == op.eval [] then .inr i else .inl c)
  | op, [.inr i, .inl c] => (none, bif c == op.eval [] then .inr i else .inl c)
  | op, [.inr i, .inr j] => (some ⟨op, [i, j]⟩, .inr m)
  | _, _ => (none, .inl false)

private lemma reduceGate_sound (op : GateOp)
    (hop : op ∈ ({GateOp.and, GateOp.or, GateOp.not} : Set GateOp))
    (w : List Bool) (inputs : List (Bool ⊕ ℕ)) (hlen : inputs.length ≤ 2)
    (hv : ∀ a ∈ inputs, valid w.length a) :
    let r := reduceGate w.length op inputs
    valid (w.length + r.1.toList.length) r.2 ∧
      value (wiresFrom r.1.toList w) r.2 = op.eval (inputs.map (value w)) := by
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hop
  rcases hop with rfl | rfl | rfl
  all_goals
    rcases inputs with _ | ⟨a, _ | ⟨b, _ | ⟨d, l⟩⟩⟩
    · simp [reduceGate, value, valid, wiresFrom, GateOp.eval]
    · cases a <;> simp_all [reduceGate, value, valid, wiresFrom, GateOp.eval]
    · rcases a with c | i <;> rcases b with e | j <;> (try cases c) <;> (try cases e) <;>
        simp_all [reduceGate, value, valid, wiresFrom, GateOp.eval]
    · simp at hlen

private lemma reduceGate_emits (op : GateOp)
    (hop : op ∈ ({GateOp.and, GateOp.or, GateOp.not} : Set GateOp))
    (m : ℕ) (inputs : List (Bool ⊕ ℕ)) (g : Gate)
    (he : (reduceGate m op inputs).1 = some g) :
    g.op = op ∧ g.inputs.length ≤ 2 ∧ ∀ c, Sum.inl c ∉ relevant op inputs := by
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hop
  rcases hop with rfl | rfl | rfl <;>
    rcases inputs with _ | ⟨a, _ | ⟨b, _ | ⟨d, l⟩⟩⟩ <;>
    (try cases a) <;> (try cases b) <;>
    simp_all [reduceGate, relevant, GateOp.eval] <;> subst g <;> simp

private def reduceAt (n : ℕ) (acc : List (Bool ⊕ ℕ) × List Gate) (g : Gate) :
    Option Gate × (Bool ⊕ ℕ) :=
  reduceGate (n + acc.2.length) g.op (g.inputs.map fun i => acc.1.getD i (.inl false))

private def advance (n : ℕ) (acc : List (Bool ⊕ ℕ) × List Gate) (g : Gate) :
    List (Bool ⊕ ℕ) × List Gate :=
  let r := reduceAt n acc g
  (acc.1 ++ [r.2], acc.2 ++ r.1.toList)

private def invariant (n : ℕ) (x w : List Bool) (acc : List (Bool ⊕ ℕ) × List Gate) : Prop :=
  acc.1.length = w.length ∧ ∀ i : ℕ,
    valid (n + acc.2.length) (acc.1.getD i (.inl false)) ∧
      value (wiresFrom acc.2 x) (acc.1.getD i (.inl false)) = w.getD i false

private lemma invariant_step (n : ℕ) (x w : List Bool) (hx : x.length = n)
    (acc : List (Bool ⊕ ℕ) × List Gate) (g : Gate) (hg : gateOK g)
    (hinv : invariant n x w acc) :
    invariant n x (wiresFrom [g] w) (advance n acc g) := by
  obtain ⟨hlen, hi⟩ := hinv
  let old := wiresFrom acc.2 x
  obtain ⟨t, ht, htl⟩ := wiresFrom_suffix acc.2 x
  have hold : old.length = n + acc.2.length := by simp [old, ht, hx, htl]
  let inputs := g.inputs.map fun i => acc.1.getD i (.inl false)
  let r := reduceAt n acc g
  have hs := reduceGate_sound g.op hg.1 old inputs (by simpa [inputs] using hg.2)
    (by
      intro a ha
      obtain ⟨i, _, rfl⟩ := List.mem_map.1 ha
      rw [hold]
      exact (hi i).1)
  have hvalues : inputs.map (value old) = g.inputs.map fun i => w.getD i false := by
    rw [List.map_map]
    exact List.map_congr_left fun i _ => (hi i).2
  change valid (old.length + (reduceGate old.length g.op inputs).1.toList.length)
      (reduceGate old.length g.op inputs).2 ∧ _ at hs
  rw [hold] at hs
  change valid (n + acc.2.length + r.1.toList.length) r.2 ∧
      value (wiresFrom r.1.toList old) r.2 = g.op.eval (inputs.map (value old)) at hs
  have hnew : wiresFrom (acc.2 ++ r.1.toList) x = wiresFrom r.1.toList old := by
    simp [wiresFrom, List.foldl_append, old]
  refine ⟨by simp [advance, wiresFrom, hlen], ?_⟩
  intro i
  change valid (n + (acc.2 ++ r.1.toList).length) ((acc.1 ++ [r.2]).getD i (.inl false)) ∧
    value (wiresFrom (acc.2 ++ r.1.toList) x) ((acc.1 ++ [r.2]).getD i (.inl false)) =
      (w ++ [g.op.eval (g.inputs.map fun j => w.getD j false)]).getD i false
  rw [List.length_append, ← Nat.add_assoc, hnew]
  by_cases he : i = acc.1.length
  · subst i
    rw [show (acc.1 ++ [r.2]).getD acc.1.length (.inl false) = r.2 by simp, hlen]
    exact ⟨hs.1, by simpa [hvalues] using hs.2⟩
  · rw [getD_snoc_ne _ _ _ _ he, getD_snoc_ne _ _ _ _ (by omega)]
    have hv := (hi i).1
    have heq := (hi i).2
    obtain ⟨u, hu, _⟩ := wiresFrom_suffix r.1.toList old
    rw [hu]
    cases ha : acc.1.getD i (.inl false) with
    | inl c =>
      rw [ha] at heq
      exact ⟨trivial, heq⟩
    | inr j =>
      rw [ha] at hv heq
      change j < n + acc.2.length at hv
      exact ⟨by change j < n + acc.2.length + r.1.toList.length; omega,
        (List.getD_append _ _ _ _ (by omega)).trans heq⟩

private lemma compile_sound (n : ℕ) (x : List Bool) (hx : x.length = n)
    (gs : List Gate) (hgs : ∀ g ∈ gs, gateOK g)
    (w : List Bool) (acc : List (Bool ⊕ ℕ) × List Gate) (hi : invariant n x w acc) :
    invariant n x (wiresFrom gs w) (gs.foldl (advance n) acc) := by
  induction gs generalizing w acc with
  | nil => exact hi
  | cons g gs ih =>
    exact ih (fun a ha => hgs a (List.mem_cons_of_mem _ ha)) _ _
      (invariant_step n x w hx acc g (hgs g List.mem_cons_self) hi)

private lemma compile_budget (n : ℕ) (zeros : List ℕ) (gs : List Gate) (hgs : ∀ g ∈ gs, gateOK g)
    (acc : List (Bool ⊕ ℕ) × List Gate) (ha : ∀ g ∈ acc.2, gateOK g)
    (hz : ∀ k ∈ zeros, k < acc.1.length ∧ acc.1.getD k (.inl false) = .inl false) :
    (∀ g ∈ (gs.foldl (advance n) acc).2, gateOK g) ∧
      (gs.foldl (advance n) acc).2.length + (gs.filter (selected zeros)).length ≤
        acc.2.length + gs.length := by
  induction gs generalizing acc with
  | nil => exact ⟨ha, by simp⟩
  | cons g gs ih =>
    let r := reduceAt n acc g
    have hg := hgs g List.mem_cons_self
    have hemits (g' : Gate) (hm : g' ∈ r.1.toList) : gateOK g' ∧ selected zeros g = false := by
      have he : r.1 = some g' := by cases e : r.1 <;> simp_all
      obtain ⟨hop, hlen, hconst⟩ := reduceGate_emits g.op hg.1 _ _ g' he
      refine ⟨⟨hop ▸ hg.1, hlen⟩, ?_⟩
      apply Bool.eq_false_iff.mpr
      intro hsel
      obtain ⟨k, hk, hmem⟩ := List.any_eq_true.mp hsel
      apply hconst false
      have hmapped : relevant g.op (g.inputs.map fun i => acc.1.getD i (.inl false)) =
          (relevant g.op g.inputs).map (fun i => acc.1.getD i (.inl false)) := by
        unfold relevant
        split <;> simp
      rw [hmapped]
      exact List.mem_map.2 ⟨k, by simpa using hmem, (hz k hk).2⟩
    have hanext : ∀ a ∈ (advance n acc g).2, gateOK a := by
      intro a hm
      change a ∈ acc.2 ++ r.1.toList at hm
      exact (List.mem_append.mp hm).elim (ha a) (fun h => (hemits a h).1)
    have hznext : ∀ k ∈ zeros, k < (advance n acc g).1.length ∧
        (advance n acc g).1.getD k (.inl false) = .inl false := by
      intro k hk
      obtain ⟨hlt, hval⟩ := hz k hk
      exact ⟨by simp [advance]; omega, (List.getD_append _ _ _ _ hlt).trans hval⟩
    obtain ⟨hf, hb⟩ := ih (fun a hm => hgs a (List.mem_cons_of_mem _ hm)) _ hanext hznext
    refine ⟨hf, ?_⟩
    change (gs.foldl (advance n) (advance n acc g)).2.length +
      (List.filter (selected zeros) (g :: gs)).length ≤ acc.2.length + (g :: gs).length
    change _ ≤ (acc.2 ++ r.1.toList).length + gs.length at hb
    rw [List.filter_cons, List.length_cons]
    cases e : r.1 with
    | none =>
      simp [e] at hb
      cases selected zeros g <;> simp <;> omega
    | some g' =>
      have h := (hemits g' (by simp [e])).2
      simp [e] at hb
      simp [h]
      omega

private lemma initial_invariant {n : ℕ} (wires : List (Option (Fin n))) (x : Fin n → Bool) :
    invariant n (List.ofFn x) (wires.map fun o => o.elim false x) (initial wires, []) := by
  refine ⟨by simp [initial], ?_⟩
  intro i
  simp only [initial, List.getD_eq_getElem?_getD, List.getElem?_map]
  cases wires[i]? with
  | none => simp [value, valid]
  | some o =>
    cases o with
    | none => simp [value, valid]
    | some j => simp [value, valid, wiresFrom, List.getElem?_ofFn, j.isLt]

end PEqualNP.Outside.L_meta_3070

open PEqualNP.Outside.L_meta_3070

theorem PEqualNP.Outside.L_meta_3070 : ∀ (x1 : ℕ) (x2 : PEqualNP.CircuitLowerBounds.Circuit) (x3 : List (Option (Fin x1))) (x4 : List ℕ), PEqualNP.MetaComplexity.FanInTwo x2 → (∀ x6 ∈ x4, x3[x6]? = Option.some Option.none) → (∃ (x7 : Fin x1 → Bool) (x8 : Fin x1 → Bool), x2.eval (List.map (fun (x9 : Option (Fin x1)) => x9.elim Bool.false x7) x3) ≠ x2.eval (List.map (fun (x9 : Option (Fin x1)) => x9.elim Bool.false x8) x3)) → ∃ (x8 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.FanInTwo x8 ∧ x8.size + (List.filter (fun (x9 : PEqualNP.CircuitLowerBounds.Gate) => x4.any fun (x10 : ℕ) => (if x9.op.eval [Bool.false] = Bool.true then List.take (1 : ℕ) x9.inputs else x9.inputs).contains x10) x2.gates).length ≤ x2.size ∧ ∀ (x9 : Fin x1 → Bool), x8.eval (List.ofFn x9) = x2.eval (List.map (fun (x10 : Option (Fin x1)) => x10.elim Bool.false x9) x3) := by
  intro n C wires zeros hC hz hnc
  let acc := C.gates.foldl (advance n) (initial wires, [])
  have hgs : ∀ g ∈ C.gates, gateOK g := hC
  have hzinit : ∀ k ∈ zeros, k < (initial wires).length ∧
      (initial wires).getD k (.inl false) = .inl false := by
    intro k hk
    exact ⟨by simpa [initial] using (List.getElem?_eq_some_iff.mp (hz k hk)).1,
      by simp [initial, List.getD_eq_getElem?_getD, List.getElem?_map, hz k hk]⟩
  obtain ⟨hfan, hsize⟩ := compile_budget n zeros C.gates hgs (initial wires, [])
    (by simp) hzinit
  have heval (x : Fin n → Bool) :
      value (wiresFrom acc.2 (List.ofFn x)) (acc.1.getD C.output (.inl false)) =
        C.eval (wires.map fun o => o.elim false x) :=
    ((compile_sound n (List.ofFn x) (by simp) C.gates hgs _ _ (initial_invariant wires x)).2 C.output).2
  cases ho : acc.1.getD C.output (.inl false) with
  | inl c =>
    obtain ⟨x, y, hxy⟩ := hnc
    exact False.elim (hxy (by rw [← heval x, ← heval y, ho]; rfl))
  | inr i =>
    refine ⟨⟨acc.2, i⟩, hfan, ?_, ?_⟩
    · change acc.2.length + (C.gates.filter (selected zeros)).length ≤ C.gates.length
      simpa only [List.length_nil, Nat.zero_add] using hsize
    · intro x
      rw [← heval x, ho]
      rfl
