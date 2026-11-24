import Mathlib
import PEqualNP.Defs

set_option maxHeartbeats 20000000 in
set_option maxRecDepth 4096 in
theorem PEqualNP.Outside.R_meta_3130_1
    (h2537 : ∀ (x1 : ℕ), PEqualNP.MetaComplexity.HasCircuitSize (9 : ℕ) (fun (x2 : Fin (9 : ℕ) → Bool) => x2 (0 : Fin (9 : ℕ)) && x2 (1 : Fin (9 : ℕ)) || x2 (1 : Fin (9 : ℕ)) && x2 (2 : Fin (9 : ℕ)) || x2 (2 : Fin (9 : ℕ)) && x2 (3 : Fin (9 : ℕ)) || x2 (0 : Fin (9 : ℕ)) && x2 (5 : Fin (9 : ℕ)) || x2 (1 : Fin (9 : ℕ)) && x2 (6 : Fin (9 : ℕ)) || x2 (2 : Fin (9 : ℕ)) && x2 (7 : Fin (9 : ℕ)) || x2 (3 : Fin (9 : ℕ)) && x2 (8 : Fin (9 : ℕ)) || x2 (5 : Fin (9 : ℕ)) && x2 (7 : Fin (9 : ℕ)) || x2 (6 : Fin (9 : ℕ)) && x2 (8 : Fin (9 : ℕ)) || x2 (8 : Fin (9 : ℕ)) && x2 (5 : Fin (9 : ℕ))) x1 → (13 : ℕ) ≤ x1)
    (h2012 : have x1 : (Fin (9 : ℕ) → Bool) → Bool := fun (x1 : Fin (9 : ℕ) → Bool) => [(1 : ℕ), (12 : ℕ), (23 : ℕ), (34 : ℕ), (40 : ℕ), (5 : ℕ), (16 : ℕ), (27 : ℕ), (38 : ℕ), (57 : ℕ), (68 : ℕ), (85 : ℕ)].any fun (x2 : ℕ) => x1 (Fin.ofNat (9 : ℕ) (x2 / (10 : ℕ))) && x1 (Fin.ofNat (9 : ℕ) (x2 % (10 : ℕ))); ¬PEqualNP.MetaComplexity.HasCircuitSize (9 : ℕ) x1 (14 : ℕ))
    (hC6_9 : ¬ PEqualNP.MetaComplexity.HasCircuitSize 8 (fun (x : Fin 8 → Bool) => x 0 && x 1 || x 1 && x 2 || x 2 && x 3 || x 3 && x 4 || x 4 && x 5 || x 5 && x 0 || x 6 || x 7) 9)
    (hC6_10 : ∀ (C : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.FanInTwo C → C.size ≤ 10 →
      (have reads : PEqualNP.CircuitLowerBounds.Gate → Prop := fun (g : PEqualNP.CircuitLowerBounds.Gate) => g.inputs[0]? = some (1 : ℕ) ∨ g.op ≠ PEqualNP.CircuitLowerBounds.GateOp.not ∧ (1 : ℕ) ∈ g.inputs;
        ∀ (i : Fin C.gates.length), reads (C.gates.get i) →
          (C.gates.get i).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧ ∀ (j : Fin C.gates.length), reads (C.gates.get j) → j = i) →
      ∃ x : Fin 8 → Bool, C.eval (List.ofFn x) ≠ (fun (x : Fin 8 → Bool) => x 0 && x 1 || x 1 && x 2 || x 2 && x 3 || x 3 && x 4 || x 4 && x 5 || x 5 && x 0 || x 6 || x 7) x) :
    ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit),   PEqualNP.MetaComplexity.FanInTwo x1 →     x1.size ≤ (14 : ℕ) →       have x4 : PEqualNP.CircuitLowerBounds.Gate → ℕ → Prop := fun (x4 : PEqualNP.CircuitLowerBounds.Gate) (x5 : ℕ) => x4.inputs[(0 : ℕ)]? = Option.some x5 ∨ x4.op ≠ PEqualNP.CircuitLowerBounds.GateOp.not ∧ x5 ∈ x4.inputs;       (∀ x5 ∈ [(4 : ℕ), (6 : ℕ)], ∃! x7 : Fin x1.gates.length, x4 (x1.gates.get x7) x5) →         ∀ (x6 : Finset (Fin x1.gates.length)),           x6.card + (11 : ℕ) ≤ x1.size →             (∀ x8 ∉ x6, ∀ x10 ∈ [(4 : ℕ), (6 : ℕ), (9 : ℕ)], ¬x4 (x1.gates.get x8) x10) →               (∀ x9 ∉ x6,                   ∀ x11 ∈ (x1.gates.get x9).inputs,                     x4 (x1.gates.get x9) x11 →                       have x14 : (Fin (7 : ℕ) → Bool) → Bool := fun (x14 : Fin (7 : ℕ) → Bool) => ({ gates := List.take (↑x9) x1.gates, output := (0 : ℕ) : PEqualNP.CircuitLowerBounds.Circuit }.wires [x14 (4 : Fin (7 : ℕ)), x14 (3 : Fin (7 : ℕ)), x14 (0 : Fin (7 : ℕ)), x14 (5 : Fin (7 : ℕ)), Bool.false, x14 (1 : Fin (7 : ℕ)), Bool.false, x14 (2 : Fin (7 : ℕ)), x14 (6 : Fin (7 : ℕ)), Bool.false]).getD x11 Bool.false;                       ∃ (x15 : Fin (7 : ℕ) → Bool) (x16 : Fin (7 : ℕ) → Bool), x14 x15 ≠ x14 x16) →                 ∃ (x10 : Fin (9 : ℕ) → Bool), x1.eval (List.ofFn x10 ++ [x10 (4 : Fin (9 : ℕ)) || x10 (6 : Fin (9 : ℕ))]) ≠ (fun (x11 : Fin (9 : ℕ) → Bool) => [(1 : ℕ), (12 : ℕ), (23 : ℕ), (34 : ℕ), (40 : ℕ), (5 : ℕ), (16 : ℕ), (27 : ℕ), (38 : ℕ), (57 : ℕ), (68 : ℕ), (85 : ℕ)].any fun (x12 : ℕ) => x11 (Fin.ofNat (9 : ℕ) (x12 / (10 : ℕ))) && x11 (Fin.ofNat (9 : ℕ) (x12 % (10 : ℕ)))) x10 := by
  have evalAnd : ∀ l : List Bool, PEqualNP.CircuitLowerBounds.GateOp.and.eval l = l.all id := fun _ => rfl
  have evalOr : ∀ l : List Bool, PEqualNP.CircuitLowerBounds.GateOp.or.eval l = l.any id := fun _ => rfl
  have evalNot : ∀ l : List Bool, PEqualNP.CircuitLowerBounds.GateOp.not.eval l = !(l.headD false) := fun _ => rfl
  have sizeEq : ∀ c : PEqualNP.CircuitLowerBounds.Circuit, c.size = c.gates.length := fun _ => rfl
  let wiresFrom : List PEqualNP.CircuitLowerBounds.Gate → List Bool → List Bool := fun gs w =>
    gs.foldl (fun w g => w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]) w
  let simpNot : ℕ → List (Bool ⊕ ℕ) → Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ) := fun m l =>
    l.casesOn (motive := fun _ => Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ)) (none, Sum.inl true)
      (fun a _ => Sum.elim (fun c => (none, Sum.inl (!c)))
        (fun j => (some ⟨PEqualNP.CircuitLowerBounds.GateOp.not, [j]⟩, Sum.inr m)) a)
  let simpAnd : ℕ → List (Bool ⊕ ℕ) → Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ) := fun m l =>
    l.casesOn (motive := fun _ => Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ)) (none, Sum.inl true)
      (fun a t => t.casesOn (motive := fun _ => Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ)) (none, a)
        (fun b t2 => t2.casesOn (motive := fun _ => Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ))
          (Sum.elim
            (fun c => Sum.elim (fun d => (none, Sum.inl (c && d)))
              (fun k => (none, bif c then Sum.inr k else Sum.inl false)) b)
            (fun j => Sum.elim (fun d => (none, bif d then Sum.inr j else Sum.inl false))
              (fun k => (some ⟨PEqualNP.CircuitLowerBounds.GateOp.and, [j, k]⟩, Sum.inr m)) b) a)
          (fun _ _ => (none, Sum.inl false))))
  let simpOr : ℕ → List (Bool ⊕ ℕ) → Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ) := fun m l =>
    l.casesOn (motive := fun _ => Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ)) (none, Sum.inl false)
      (fun a t => t.casesOn (motive := fun _ => Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ)) (none, a)
        (fun b t2 => t2.casesOn (motive := fun _ => Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ))
          (Sum.elim
            (fun c => Sum.elim (fun d => (none, Sum.inl (c || d)))
              (fun k => (none, bif c then Sum.inl true else Sum.inr k)) b)
            (fun j => Sum.elim (fun d => (none, bif d then Sum.inl true else Sum.inr j))
              (fun k => (some ⟨PEqualNP.CircuitLowerBounds.GateOp.or, [j, k]⟩, Sum.inr m)) b) a)
          (fun _ _ => (none, Sum.inl false))))
  let simplify : PEqualNP.CircuitLowerBounds.GateOp → ℕ → List (Bool ⊕ ℕ) → Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ) := fun op m ins =>
    op.casesOn (motive := fun _ => Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ)) (simpAnd m ins) (simpOr m ins)
      (simpNot m ins) (fun _ => (none, Sum.inl false)) (none, Sum.inl false)
  let sval : List Bool → Bool ⊕ ℕ → Bool := fun w s =>
    Sum.elim (fun c => c) (fun j => w.getD j false) s
  let svalid : ℕ → Bool ⊕ ℕ → Prop := fun m s =>
    Sum.elim (fun _ => True) (fun j => j < m) s
  let Ok : PEqualNP.CircuitLowerBounds.Gate → Prop := fun g =>
    g.op ∈ ({PEqualNP.CircuitLowerBounds.GateOp.and, PEqualNP.CircuitLowerBounds.GateOp.or, PEqualNP.CircuitLowerBounds.GateOp.not} : Set PEqualNP.CircuitLowerBounds.GateOp) ∧ g.inputs.length ≤ 2
  let NOk : PEqualNP.CircuitLowerBounds.Gate → Prop := fun g => Ok g ∧ (g.op = PEqualNP.CircuitLowerBounds.GateOp.not → g.inputs.length ≤ 1)
  let normGate : PEqualNP.CircuitLowerBounds.Gate → PEqualNP.CircuitLowerBounds.Gate := fun g =>
    g.op.casesOn (motive := fun _ => PEqualNP.CircuitLowerBounds.Gate) g g ⟨PEqualNP.CircuitLowerBounds.GateOp.not, g.inputs.take 1⟩ (fun _ => g) g
  let elimStep : ℕ → List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate → PEqualNP.CircuitLowerBounds.Gate → List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate :=
    fun n acc g =>
      (acc.1 ++ [(simplify g.op (n + acc.2.length)
          (g.inputs.map fun i => acc.1.getD i (Sum.inl false))).2],
        acc.2 ++ (simplify g.op (n + acc.2.length)
          (g.inputs.map fun i => acc.1.getD i (Sum.inl false))).1.toList)
  let elim : ℕ → List PEqualNP.CircuitLowerBounds.Gate → List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate → List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate :=
    fun n gs acc => gs.foldl (elimStep n) acc
  let Inv : ℕ → List Bool → List Bool → List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate → Prop := fun n y w acc =>
    acc.1.length = w.length ∧ ∀ i : ℕ,
      svalid (n + acc.2.length) (acc.1.getD i (Sum.inl false)) ∧
      sval (wiresFrom acc.2 y) (acc.1.getD i (Sum.inl false)) = w.getD i false
  have simplify_ok : ∀ (op : PEqualNP.CircuitLowerBounds.GateOp) (m : ℕ) (ins : List (Bool ⊕ ℕ)),
      ∀ g ∈ (simplify op m ins).1, Ok g := by
    intro op m ins g hg
    clear h2537 h2012 hC6_9 hC6_10
    cases op <;> simp only [simplify] at hg
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨c, l⟩⟩⟩ <;> (try cases a) <;> (try cases b) <;>
        simp [simpAnd] at hg <;> (subst hg; simp [Ok])
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨c, l⟩⟩⟩ <;> (try cases a) <;> (try cases b) <;>
        simp [simpOr] at hg <;> (subst hg; simp [Ok])
    · rcases ins with _ | ⟨a, l⟩ <;> (try cases a) <;>
        simp [simpNot] at hg <;> (subst hg; simp [Ok])
    · simp at hg
    · simp at hg
  have simplify_count : ∀ (op : PEqualNP.CircuitLowerBounds.GateOp) (m : ℕ) (ins : List (Bool ⊕ ℕ)),
      (op = PEqualNP.CircuitLowerBounds.GateOp.and ∨ op = PEqualNP.CircuitLowerBounds.GateOp.or ∨ op = PEqualNP.CircuitLowerBounds.GateOp.not) → ins.length ≤ 2 →
      (op = PEqualNP.CircuitLowerBounds.GateOp.not → ins.length ≤ 1) → (∃ c, Sum.inl c ∈ ins) →
      (simplify op m ins).1 = none := by
    intro op m ins hop hlen hnot hc
    clear h2537 h2012 hC6_9 hC6_10 simplify_ok
    obtain ⟨c, hc⟩ := hc
    rcases hop with rfl | rfl | rfl
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨d, l⟩⟩⟩ <;> (try cases a) <;> (try cases b) <;>
        simp_all [simplify, simpAnd]
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨d, l⟩⟩⟩ <;> (try cases a) <;> (try cases b) <;>
        simp_all [simplify, simpOr]
    · have := hnot rfl
      rcases ins with _ | ⟨a, _ | ⟨b, l⟩⟩ <;> (try cases a) <;> simp_all [simplify, simpNot]
  have simplify_sound : ∀ (op : PEqualNP.CircuitLowerBounds.GateOp), (op = PEqualNP.CircuitLowerBounds.GateOp.and ∨ op = PEqualNP.CircuitLowerBounds.GateOp.or ∨ op = PEqualNP.CircuitLowerBounds.GateOp.not) →
      ∀ (w : List Bool) (ins : List (Bool ⊕ ℕ)), ins.length ≤ 2 →
      (∀ s ∈ ins, svalid w.length s) →
      svalid (w.length + (simplify op w.length ins).1.toList.length) (simplify op w.length ins).2 ∧
      sval (wiresFrom (simplify op w.length ins).1.toList w) (simplify op w.length ins).2
        = op.eval (ins.map (sval w)) := by
    intro op hop w ins hlen hv
    clear h2537 h2012 hC6_9 hC6_10 simplify_ok simplify_count
    rcases hop with rfl | rfl | rfl
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨d, l⟩⟩⟩
      · simp [simplify, simpAnd, svalid, sval, evalAnd]
      · cases a <;> simp_all [simplify, simpAnd, svalid, sval, wiresFrom]
      · cases a <;> cases b <;> (try rename_i c e; cases c) <;> (try cases e) <;>
          simp_all [simplify, simpAnd, svalid, sval, wiresFrom]
      · simp at hlen
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨d, l⟩⟩⟩
      · simp [simplify, simpOr, svalid, sval, evalOr]
      · cases a <;> simp_all [simplify, simpOr, svalid, sval, wiresFrom]
      · cases a <;> cases b <;> (try rename_i c e; cases c) <;> (try cases e) <;>
          simp_all [simplify, simpOr, svalid, sval, wiresFrom]
      · simp at hlen
    · rcases ins with _ | ⟨a, l⟩
      · simp [simplify, simpNot, svalid, sval, evalNot]
      · cases a <;> simp_all [simplify, simpNot, svalid, sval, wiresFrom]
  have wiresFrom_append : ∀ (gs gs' : List PEqualNP.CircuitLowerBounds.Gate) (w : List Bool),
      wiresFrom (gs ++ gs') w = wiresFrom gs' (wiresFrom gs w) := by
    intro gs gs' w
    simp [wiresFrom, List.foldl_append]
  have wiresFrom_prefix : ∀ (gs : List PEqualNP.CircuitLowerBounds.Gate) (w : List Bool),
      ∃ t : List Bool, wiresFrom gs w = w ++ t ∧ t.length = gs.length := by
    intro gs
    induction gs with
    | nil => intro w; exact ⟨[], by simp [wiresFrom], rfl⟩
    | cons g gs ih =>
      intro w
      obtain ⟨t, ht, hl⟩ := ih (w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)])
      refine ⟨g.op.eval (g.inputs.map fun i => w.getD i false) :: t, ?_, by simp [hl]⟩
      have : wiresFrom (g :: gs) w
          = wiresFrom gs (w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]) := rfl
      rw [this, ht]; simp
  have length_wiresFrom : ∀ (gs : List PEqualNP.CircuitLowerBounds.Gate) (w : List Bool),
      (wiresFrom gs w).length = w.length + gs.length := by
    intro gs w
    obtain ⟨t, ht, hl⟩ := wiresFrom_prefix gs w
    rw [ht]; simp [hl]
  have getD_snoc_ne : ∀ {α : Type} (L : List α) (S d : α) (j : ℕ), j ≠ L.length →
      (L ++ [S]).getD j d = L.getD j d := by
    intro α L S d j h
    by_cases hj : j < L.length
    · exact List.getD_append _ _ _ _ hj
    · rw [List.getD_eq_default _ _ (by simp; omega), List.getD_eq_default _ _ (by omega)]
  have getD_snoc_eq : ∀ {α : Type} (L : List α) (S d : α), (L ++ [S]).getD L.length d = S := by
    intro α L S d
    simp
  have normGate_eval : ∀ (g : PEqualNP.CircuitLowerBounds.Gate) (F : ℕ → Bool),
      (normGate g).op.eval ((normGate g).inputs.map F) = g.op.eval (g.inputs.map F) := by
    intro g F
    obtain ⟨op, inputs⟩ := g
    cases op <;> simp only [normGate]
    cases inputs <;> simp [evalNot]
  have normGate_nok : ∀ g : PEqualNP.CircuitLowerBounds.Gate, Ok g → NOk (normGate g) := by
    intro g h
    obtain ⟨op, inputs⟩ := g
    obtain ⟨hop, hlen⟩ := h
    rcases hop with h | h | h
    · have : op = PEqualNP.CircuitLowerBounds.GateOp.and := h
      subst this; exact ⟨⟨Or.inl rfl, hlen⟩, by simp [normGate]⟩
    · have : op = PEqualNP.CircuitLowerBounds.GateOp.or := h
      subst this; exact ⟨⟨Or.inr (Or.inl rfl), hlen⟩, by simp [normGate]⟩
    · have : op = PEqualNP.CircuitLowerBounds.GateOp.not := h
      subst this
      refine ⟨⟨Or.inr (Or.inr rfl), ?_⟩, fun _ => ?_⟩ <;> simp [normGate] <;> omega
  have wiresFrom_norm : ∀ (gs : List PEqualNP.CircuitLowerBounds.Gate) (w : List Bool),
      wiresFrom (gs.map normGate) w = wiresFrom gs w := by
    intro gs
    induction gs with
    | nil => intro w; rfl
    | cons g gs ih =>
      intro w
      have s1 : wiresFrom ((g :: gs).map normGate) w = wiresFrom (gs.map normGate)
          (w ++ [(normGate g).op.eval ((normGate g).inputs.map fun i => w.getD i false)]) := rfl
      have s2 : wiresFrom (g :: gs) w
          = wiresFrom gs (w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]) := rfl
      rw [s1, s2, normGate_eval, ih]
  have elim_getD : ∀ (n k : ℕ) (d : Bool ⊕ ℕ) (gs : List PEqualNP.CircuitLowerBounds.Gate)
      (acc : List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate),
      k < acc.1.length → (elim n gs acc).1.getD k d = acc.1.getD k d := by
    intro n k d gs
    induction gs with
    | nil => intro acc _; rfl
    | cons g gs ih =>
      intro acc hk
      have h3 : elim n (g :: gs) acc = elim n gs (elimStep n acc g) := rfl
      rw [h3, ih (elimStep n acc g) (by simp [elimStep]; omega)]
      exact getD_snoc_ne _ _ _ _ (by omega)
  have toList_length_le : ∀ (o : Option PEqualNP.CircuitLowerBounds.Gate), o.toList.length ≤ 1 := by
    intro o
    cases o <;> simp
  have elim_ok : ∀ (n : ℕ) (gs : List PEqualNP.CircuitLowerBounds.Gate) (acc : List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate),
      (∀ g ∈ acc.2, Ok g) → ∀ g ∈ (elim n gs acc).2, Ok g := by
    intro n gs
    induction gs with
    | nil => intro acc h; exact h
    | cons g gs ih =>
      intro acc h
      apply ih (elimStep n acc g)
      intro g' hg'
      rcases List.mem_append.1 hg' with h1 | h1
      · exact h g' h1
      · exact simplify_ok _ _ _ g' (by simpa using h1)
  have valid_mono : ∀ {m m' : ℕ}, m ≤ m' → ∀ s : Bool ⊕ ℕ, svalid m s → svalid m' s := by
    intro m m' h s hs
    cases s with
    | inl _ => trivial
    | inr j => exact lt_of_lt_of_le hs h
  have val_append : ∀ (w t : List Bool) (s : Bool ⊕ ℕ), svalid w.length s →
      sval (w ++ t) s = sval w s := by
    intro w t s hs
    cases s with
    | inl _ => rfl
    | inr j => exact List.getD_append _ _ _ _ hs
  have inv_elim : ∀ (n : ℕ) (y : List Bool), y.length = n → ∀ (gs : List PEqualNP.CircuitLowerBounds.Gate)
      (w : List Bool) (acc : List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate), (∀ g ∈ gs, Ok g) → Inv n y w acc →
      Inv n y (wiresFrom gs w) (elim n gs acc) := by
    intro n y hy gs
    induction gs with
    | nil => intro w acc _ h; exact h
    | cons g gs ih =>
      intro w acc hok h
      apply ih (w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]) (elimStep n acc g)
        (fun g' hg' => hok g' (List.mem_cons_of_mem _ hg'))
      obtain ⟨hl, hi⟩ := h
      set w' := wiresFrom acc.2 y with hw'
      have lw' : w'.length = n + acc.2.length := by rw [hw', length_wiresFrom, hy]
      set ins := g.inputs.map fun i => acc.1.getD i (Sum.inl false) with hins
      have hgok := hok g List.mem_cons_self
      have hs := simplify_sound g.op hgok.1 w' ins (by simpa [hins] using hgok.2)
        (by
          intro s hs
          obtain ⟨a, _, rfl⟩ := List.mem_map.1 hs
          rw [lw']; exact (hi a).1)
      rw [lw'] at hs
      set r := simplify g.op (n + acc.2.length) ins with hr
      have hvals : ins.map (sval w') = g.inputs.map fun i => w.getD i false := by
        rw [hins, List.map_map]
        apply List.map_congr_left
        intro a _
        exact (hi a).2
      have hnew : wiresFrom (acc.2 ++ r.1.toList) y = wiresFrom r.1.toList w' := by
        rw [wiresFrom_append]
      obtain ⟨t, ht, htl⟩ := wiresFrom_prefix r.1.toList w'
      refine ⟨by simp [elimStep, hl], ?_⟩
      intro i
      show svalid (n + (acc.2 ++ r.1.toList).length) ((acc.1 ++ [r.2]).getD i (Sum.inl false)) ∧
        sval (wiresFrom (acc.2 ++ r.1.toList) y) ((acc.1 ++ [r.2]).getD i (Sum.inl false)) = _
      rw [hnew, List.length_append, ← Nat.add_assoc]
      by_cases hil : i = acc.1.length
      · subst hil
        rw [getD_snoc_eq, hl, getD_snoc_eq]
        exact ⟨hs.1, by rw [hs.2, hvals]⟩
      · rw [getD_snoc_ne _ _ _ _ hil, getD_snoc_ne _ _ _ _ (by omega)]
        refine ⟨valid_mono (by omega) _ (hi i).1, ?_⟩
        rw [ht, val_append _ _ _ (by rw [lw']; exact (hi i).1)]
        exact (hi i).2
  have elim_cons : ∀ (n : ℕ) (g : PEqualNP.CircuitLowerBounds.Gate) (gs : List PEqualNP.CircuitLowerBounds.Gate) (acc : List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate),
      elim n (g :: gs) acc = elim n gs (elimStep n acc g) := fun _ _ _ _ => rfl
  have elim_append : ∀ (n : ℕ) (pre post : List PEqualNP.CircuitLowerBounds.Gate) (acc : List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate),
      elim n (pre ++ post) acc = elim n post (elim n pre acc) := by
    intro n pre post acc
    simp [elim, List.foldl_append]
  have elim_fst_len : ∀ (n : ℕ) (gs : List PEqualNP.CircuitLowerBounds.Gate) (acc : List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate),
      (elim n gs acc).1.length = acc.1.length + gs.length := by
    intro n gs
    induction gs with
    | nil => intro acc; rfl
    | cons g gs ih =>
      intro acc
      rw [elim_cons, ih]
      simp only [elimStep, List.length_append, List.length_cons, List.length_nil]
      omega
  have elim_split_getD : ∀ (n : ℕ) (pre : List PEqualNP.CircuitLowerBounds.Gate) (g : PEqualNP.CircuitLowerBounds.Gate) (post : List PEqualNP.CircuitLowerBounds.Gate)
      (acc : List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate) (a : ℕ) (d : Bool ⊕ ℕ),
      a ≤ acc.1.length + pre.length →
      (elim n (pre ++ g :: post) acc).1.getD a d = (elimStep n (elim n pre acc) g).1.getD a d := by
    intro n pre g post acc a d h
    rw [elim_append, elim_cons, elim_getD n a d post _ (by
      show a < ((elim n pre acc).1 ++ [_]).length
      rw [List.length_append, elim_fst_len, List.length_singleton]; omega)]
  have elim_gate_stat : ∀ (n : ℕ) (gs : List PEqualNP.CircuitLowerBounds.Gate) (acc : List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate) (p : ℕ)
      (hp : p < gs.length),
      (elim n gs acc).1.getD (acc.1.length + p) (Sum.inl false) =
        (simplify gs[p].op (n + (elim n (gs.take p) acc).2.length)
          (gs[p].inputs.map fun i => (elim n (gs.take p) acc).1.getD i (Sum.inl false))).2 := by
    intro n gs acc p hp
    have hs : gs = gs.take p ++ gs[p] :: gs.drop (p + 1) := by
      rw [List.getElem_cons_drop]
      exact (List.take_append_drop p gs).symm
    have hlen : (gs.take p).length = p := by simp; omega
    conv_lhs => rw [hs]
    rw [elim_split_getD n (gs.take p) gs[p] (gs.drop (p + 1)) acc _ _ (by omega)]
    show ((elim n (gs.take p) acc).1 ++ [_]).getD (acc.1.length + p) (Sum.inl false) = _
    rw [show acc.1.length + p = (elim n (gs.take p) acc).1.length by rw [elim_fst_len, hlen],
      getD_snoc_eq]
  have eqComm : ∀ {α : Type} (a b : α), (a = b) = (b = a) := fun _ _ => propext eq_comm
  have listMemCons : ∀ {α : Type} (a b : α) (l : List α), (a ∈ b :: l) = (a = b ∨ a ∈ l) :=
    fun _ _ _ => propext List.mem_cons
  have listMemNil : ∀ {α : Type} (a : α), (a ∈ ([] : List α)) = False :=
    fun a => propext (List.mem_nil_iff a)
  have finsetMemInsert : ∀ {α : Type} [DecidableEq α] (a b : α) (s : Finset α),
      (a ∈ insert b s) = (a = b ∨ a ∈ s) := fun _ _ _ => propext Finset.mem_insert
  have finsetMemSingleton : ∀ {α : Type} (a b : α), (a ∈ ({b} : Finset α)) = (a = b) :=
    fun _ _ => propext Finset.mem_singleton
  let effective : PEqualNP.CircuitLowerBounds.Gate → ℕ → Prop := fun g k => g.inputs[0]? = some k ∨ g.op ≠ PEqualNP.CircuitLowerBounds.GateOp.not ∧ k ∈ g.inputs
  have norm_read : ∀ g k, k ∈ (normGate g).inputs ↔ effective g k := by
    intro g k
    obtain ⟨op, ins⟩ := g
    cases op <;> cases ins <;> simp [normGate, effective, eqComm]
  have expand9 : ∀ x : Fin 9 → Bool, x = ![x 0, x 1, x 2, x 3, x 4, x 5, x 6, x 7, x 8] := by
    intro x
    funext i
    fin_cases i <;> rfl
  have expand8 : ∀ x : Fin 8 → Bool, x = ![x 0, x 1, x 2, x 3, x 4, x 5, x 6, x 7] := by
    intro x
    funext i
    fin_cases i <;> rfl
  let edge : (Fin 9 → Bool) → Bool := fun x =>
    [1, 12, 23, 34, 40, 5, 16, 27, 38, 57, 68, 85].any fun k : ℕ =>
      x (Fin.ofNat 9 (k / 10)) && x (Fin.ofNat 9 (k % 10))
  let cut : (Fin 9 → Bool) → Bool := fun y =>
    y 0 && y 1 || y 1 && y 2 || y 2 && y 3 || y 0 && y 5 || y 1 && y 6 ||
      y 2 && y 7 || y 3 && y 8 || y 5 && y 7 || y 6 && y 8 || y 8 && y 5
  let cycle : (Fin 8 → Bool) → Bool := fun y =>
    y 0 && y 1 || y 1 && y 2 || y 2 && y 3 || y 3 && y 4 || y 4 && y 5 || y 5 && y 0 || y 6 || y 7
  let inp : (Fin 9 → Bool) → List Bool := fun x => List.ofFn x ++ [x 4 || x 6]
  let xA : (Fin 9 → Bool) → Fin 9 → Bool := fun y => ![y 0,y 1,y 2,y 3,false,y 5,y 6,y 7,y 8]
  let xB : (Fin 9 → Bool) → Fin 9 → Bool := fun y => ![y 1,y 0,y 5,y 8,y 6,y 2,false,y 7,y 3]
  let xK : (Fin 8 → Bool) → Fin 9 → Bool := fun y => ![y 6,y 0,y 5,y 7,true,y 3,y 1,y 4,y 2]
  let xD : (Fin 7 → Bool) → Fin 9 → Bool := fun y => ![y 4,y 3,y 0,y 5,false,y 1,false,y 2,y 6]
  let initA : List (Bool ⊕ ℕ) := [.inr 0,.inr 1,.inr 2,.inr 3,.inl false,.inr 5,.inr 6,.inr 7,.inr 8,.inr 6]
  let initB : List (Bool ⊕ ℕ) := [.inr 1,.inr 0,.inr 5,.inr 8,.inr 6,.inr 2,.inl false,.inr 7,.inr 3,.inr 6]
  let initK : List (Bool ⊕ ℕ) := [.inr 6,.inr 0,.inr 5,.inr 7,.inl true,.inr 3,.inr 1,.inr 4,.inr 2,.inl true]
  let initU : List (Bool ⊕ ℕ) := [.inr 0,.inr 1,.inr 2,.inr 3,.inr 4,.inr 5,.inr 6,.inr 7,.inr 8,.inl false]
  let ones : List (Fin 9) → Fin 9 → Bool := fun l i => l.contains i
  have inpLen : ∀ x, (inp x).length = 10 := by intro x; simp [inp]
  have keyA0 : ∀ b0 b1 b2 b3 b4 b5 b6 b7 b8 : Bool,
      edge (xA ![b0,b1,b2,b3,b4,b5,b6,b7,b8]) = cut ![b0,b1,b2,b3,b4,b5,b6,b7,b8] := by decide
  have keyB0 : ∀ b0 b1 b2 b3 b4 b5 b6 b7 b8 : Bool,
      edge (xB ![b0,b1,b2,b3,b4,b5,b6,b7,b8]) = cut ![b0,b1,b2,b3,b4,b5,b6,b7,b8] := by decide
  have keyK0 : ∀ b0 b1 b2 b3 b4 b5 b6 b7 : Bool,
      edge (xK ![b0,b1,b2,b3,b4,b5,b6,b7]) = cycle ![b0,b1,b2,b3,b4,b5,b6,b7] := by decide
  have keyA : ∀ y, edge (xA y) = cut y := by
    intro y
    conv_lhs => rw [expand9 y]
    exact keyA0 _ _ _ _ _ _ _ _ _
  have keyB : ∀ y, edge (xB y) = cut y := by
    intro y
    conv_lhs => rw [expand9 y]
    exact keyB0 _ _ _ _ _ _ _ _ _
  have keyK : ∀ y, edge (xK y) = cycle y := by
    intro y
    conv_lhs => rw [expand8 y]
    exact keyK0 _ _ _ _ _ _ _ _
  have initInv : ∀ n (sym : List (Bool ⊕ ℕ)) (y w : List Bool),
      w = sym.map (sval y) → (∀ s ∈ sym, svalid n s) → Inv n y w (sym, []) := by
    intro n sym y w hw hv
    subst w
    refine ⟨by simp, fun i => ?_⟩
    simp only [List.length_nil, Nat.add_zero]
    by_cases hi : i < sym.length
    · rw [List.getD_eq_getElem _ _ hi, List.getD_eq_getElem _ _ (by simpa using hi), List.getElem_map]
      exact ⟨hv _ (List.getElem_mem _), rfl⟩
    · rw [List.getD_eq_default _ _ (by omega), List.getD_eq_default _ _ (by simp; omega)]
      exact ⟨trivial, rfl⟩
  have invA : ∀ y : Fin 9 → Bool, Inv 9 (List.ofFn y) (inp (xA y)) (initA, []) := by
    intro y
    apply initInv
    · rfl
    · simp [initA, svalid]
  have invB : ∀ y : Fin 9 → Bool, Inv 9 (List.ofFn y) (inp (xB y)) (initB, []) := by
    intro y
    apply initInv
    · unfold inp
      rw [show (xB y 4 || xB y 6) = y 6 from Bool.or_false _]
      rfl
    · simp [initB, svalid]
  have invK : ∀ y : Fin 8 → Bool, Inv 8 (List.ofFn y) (inp (xK y)) (initK, []) := by
    intro y
    apply initInv
    · rfl
    · simp [initK, svalid]
  have invU : ∀ y : Fin 9 → Bool, Inv 9 (List.ofFn y) (List.ofFn y ++ [false]) (initU, []) := by
    intro y
    apply initInv
    · rfl
    · simp [initU, svalid]
  let W : List PEqualNP.CircuitLowerBounds.Gate → List Bool → ℕ → Bool := fun gs w j => (wiresFrom gs w).getD j false
  let fallback : PEqualNP.CircuitLowerBounds.Gate := ⟨PEqualNP.CircuitLowerBounds.GateOp.or, []⟩
  let atGate : List PEqualNP.CircuitLowerBounds.Gate → ℕ → PEqualNP.CircuitLowerBounds.Gate := fun gs j => gs.getD j fallback
  have atGate_eq : ∀ gs j (hj : j < gs.length), atGate gs j = gs[j] := by
    intro gs j hj
    exact List.getD_eq_getElem _ _ hj
  have W_input : ∀ gs w j, j < w.length → W gs w j = w.getD j false := by
    intro gs w j hj
    obtain ⟨t, ht, _⟩ := wiresFrom_prefix gs w
    unfold W
    rw [ht, List.getD_append _ _ _ _ hj]
  have W_default : ∀ gs w j, w.length + gs.length ≤ j → W gs w j = false := by
    intro gs w j hj
    exact List.getD_eq_default _ _ (by rwa [length_wiresFrom])
  have W_gate : ∀ gs w i (hi : i < gs.length), W gs w (w.length + i) =
      (atGate gs i).op.eval ((atGate gs i).inputs.map fun k => if k < w.length + i then W gs w k else false) := by
    intro gs w i hi
    rw [atGate_eq _ _ hi]
    have split : gs = gs.take i ++ gs[i] :: gs.drop (i + 1) := by
      rw [List.getElem_cons_drop]
      exact (List.take_append_drop i gs).symm
    let pre := wiresFrom (gs.take i) w
    have plen : pre.length = w.length + i := by simp [pre, length_wiresFrom, Nat.min_eq_left hi.le]
    obtain ⟨t, ht, _⟩ := wiresFrom_prefix (gs.drop (i+1))
      (pre ++ [gs[i].op.eval (gs[i].inputs.map fun k => pre.getD k false)])
    have all : wiresFrom gs w =
        (pre ++ [gs[i].op.eval (gs[i].inputs.map fun k => pre.getD k false)]) ++ t := by
      conv_lhs => rw [split, wiresFrom_append]
      exact ht
    have hget : ∀ k, pre.getD k false = if k < w.length + i then W gs w k else false := by
      intro k
      split_ifs with hk
      · symm
        unfold W
        rw [all, List.getD_append _ _ _ _ (by simp; omega), List.getD_append _ _ _ _ (by omega)]
      · exact List.getD_eq_default _ _ (by omega)
    show (wiresFrom gs w).getD (w.length+i) false = _
    rw [all, List.getD_append _ _ _ _ (by simp; omega), ← plen, getD_snoc_eq]
    congr 1
    apply List.map_congr_left
    intro k _
    simpa only [plen] using hget k
  have agree : ∀ (gs hs : List PEqualNP.CircuitLowerBounds.Gate) (u v : List Bool) (n : ℕ) (good : ℕ → Prop),
      gs.length = hs.length → u.length = n → v.length = n →
      (∀ k, good k → u.getD k false = v.getD k false) →
      (∀ i < gs.length, good (n+i) → W gs u (n+i) = W hs v (n+i) ∨
        atGate gs i = atGate hs i ∧ ∀ k ∈ (atGate gs i).inputs, k < n+i → good k) →
      ∀ k, good k → W gs u k = W hs v k := by
    intro gs hs u v n good hlen hu hv hinit hstep k
    induction k using Nat.strong_induction_on with
    | ind k ih =>
      intro hk
      by_cases hin : k < n
      · rw [W_input _ _ _ (by omega), W_input _ _ _ (by omega)]
        exact hinit _ hk
      by_cases hout : n + gs.length ≤ k
      · rw [W_default _ _ _ (by omega), W_default _ _ _ (by omega)]
      let i := k - n
      have hi : i < gs.length := by omega
      have e : n+i = k := by omega
      rw [← e] at hk ⊢
      rcases hstep i hi hk with he | ⟨he, hgood⟩
      · exact he
      · rw [show n+i = u.length+i by omega, W_gate _ _ _ hi,
          show u.length+i = v.length+i by omega, W_gate _ _ _ (by omega), he]
        congr 1
        apply List.map_congr_left
        intro a ha
        split_ifs with hlt
        · apply ih a (by omega) (hgood a (he.symm ▸ ha) (by omega))
        · rfl
  let extend : ℕ → List PEqualNP.CircuitLowerBounds.Gate → List (Bool ⊕ ℕ) → List (Bool ⊕ ℕ) × List PEqualNP.CircuitLowerBounds.Gate :=
    fun n gs init => elim n gs (init, [])
  let result : ℕ → List PEqualNP.CircuitLowerBounds.Gate → List (Bool ⊕ ℕ) → ℕ → Option PEqualNP.CircuitLowerBounds.Gate × (Bool ⊕ ℕ) :=
    fun n gs init i =>
      let acc := extend n (gs.take i) init
      simplify (atGate gs i).op (n + acc.2.length)
        ((atGate gs i).inputs.map fun k => acc.1.getD k (.inl false))
  have takeSymbol : ∀ n gs init i k, i ≤ gs.length → k < init.length+i →
      (extend n (gs.take i) init).1.getD k (.inl false) = (extend n gs init).1.getD k (.inl false) := by
    intro n gs init i k hi hk
    have hk' : k < (extend n (gs.take i) init).1.length := by
      change k < (elim n (gs.take i) (init, [])).1.length
      rw [elim_fst_len, List.length_take, Nat.min_eq_left hi]
      exact hk
    conv_rhs => rw [← List.take_append_drop i gs]
    exact (show (elim n (gs.drop i) (extend n (gs.take i) init)).1.getD k (.inl false) = _ from
      elim_getD _ _ _ _ _ hk').symm.trans (by unfold extend; rw [elim_append])
  have initialSymbol : ∀ n gs init k, k < init.length →
      (extend n gs init).1.getD k (.inl false) = init.getD k (.inl false) := by
    intro n gs init k hk
    exact elim_getD _ _ _ _ _ hk
  have gateSymbol : ∀ n gs init i, i < gs.length →
      (extend n gs init).1.getD (init.length+i) (.inl false) = (result n gs init i).2 := by
    intro n gs init i hi
    simpa only [extend, result, atGate_eq gs i hi] using elim_gate_stat n gs (init, []) i hi
  have result_append : ∀ n gs hs init i, i < gs.length →
      result n (gs ++ hs) init i = result n gs init i := by
    intro n gs hs init i hi
    unfold result
    rw [List.take_append_of_le_length hi.le, atGate_eq _ _ (by simp; omega), atGate_eq _ _ hi,
      List.getElem_append_left hi]
  have count : ∀ n (gs : List PEqualNP.CircuitLowerBounds.Gate) init (S : Finset ℕ),
      (∀ i ∈ S, i < gs.length ∧ (result n gs init i).1 = none) →
      (extend n gs init).2.length + S.card ≤ gs.length := by
    intro n gs
    induction gs using List.reverseRecOn with
    | nil =>
      intro init S h
      have e : S = ∅ := Finset.eq_empty_of_forall_notMem fun i hi => by simpa using (h i hi).1
      simp [e, extend, elim]
    | append_singleton gs g ih =>
      intro init S h
      have hp := ih init (S.erase gs.length) (by
        intro i hi
        obtain ⟨hne, hm⟩ := Finset.mem_erase.mp hi
        obtain ⟨hlt, hh⟩ := h i hm
        have hi' : i < gs.length := by simp at hlt; omega
        exact ⟨hi', (congrArg Prod.fst (result_append n gs [g] init i hi')).symm.trans hh⟩)
      have hsplit : (extend n (gs ++ [g]) init).2 =
          (extend n gs init).2 ++ (result n (gs ++ [g]) init gs.length).1.toList := by
        unfold extend result
        have hi : gs.length < (gs ++ [g]).length := by simp
        rw [elim_append, List.take_append_length, atGate_eq _ _ hi, List.getElem_concat_length]
        all_goals rfl
      rw [hsplit, List.length_append, List.length_append, List.length_singleton]
      by_cases hm : gs.length ∈ S
      · rw [(h _ hm).2]
        simp only [Option.toList_none, List.length_nil, Nat.add_zero]
        have hcard := Finset.card_erase_of_mem hm
        have hpos : 1 ≤ S.card := Finset.card_pos.mpr ⟨_, hm⟩
        omega
      · rw [Finset.erase_eq_of_notMem hm] at hp
        have := toList_length_le (result n (gs ++ [g]) init gs.length).1
        omega
  have omit_of_const : ∀ n gs init i k b, i < gs.length → NOk (atGate gs i) →
      k ∈ (atGate gs i).inputs → k < init.length+i →
      (extend n gs init).1.getD k (.inl false) = .inl b → (result n gs init i).1 = none := by
    intro n gs init i k b hi hg hk hlt hc
    unfold result
    apply simplify_count _ _ _ hg.1.1 (by simpa using hg.1.2) (by simpa using hg.2)
    exact ⟨b, List.mem_map.mpr ⟨k, hk, (takeSymbol n gs init i k hi.le hlt).trans hc⟩⟩
  have finish : ∀ n gs init out (input : (Fin n → Bool) → List Bool) (f : (Fin n → Bool) → Bool),
      (∀ g ∈ gs, Ok g) →
      (∀ y, Inv n (List.ofFn y) (input y) (init, [])) →
      (∀ y, W gs (input y) out = f y) →
      (∃ u v, f u ≠ f v) →
      ∃ k, ∀ y, (⟨(extend n gs init).2, k⟩ : PEqualNP.CircuitLowerBounds.Circuit).eval (List.ofFn y) = f y := by
    intro n gs init out input f hok hin he hnc
    have h : ∀ y : Fin n → Bool,
        sval (wiresFrom (extend n gs init).2 (List.ofFn y)) ((extend n gs init).1.getD out (.inl false)) = f y :=
      fun y => ((inv_elim n (List.ofFn y) List.length_ofFn gs (input y) (init, []) hok (hin y)).2 out).2.trans (he y)
    cases hs : (extend n gs init).1.getD out (.inl false) with
    | inl b =>
      obtain ⟨u, v, huv⟩ := hnc
      have hu := h u
      have hv := h v
      rw [hs] at hu hv
      exact (huv (hu.symm.trans hv)).elim
    | inr k =>
      refine ⟨k, fun y => ?_⟩
      have hy := h y
      rw [hs] at hy
      exact hy
  have two_inputs : ∀ (l : List ℕ), l.length ≤ 2 → ∀ a b, a ∈ l → b ∈ l → a ≠ b →
      l = [a,b] ∨ l = [b,a] := by
    intro l hl a b ha hb hab
    rcases l with _ | ⟨x, _ | ⟨y, _ | ⟨z, l⟩⟩⟩
    · simp at ha
    · simp at ha hb; omega
    · simp only [listMemCons, listMemNil, or_false] at ha hb
      rcases ha with rfl | rfl <;> rcases hb with rfl | rfl <;>
        first | exact Or.inl rfl | exact Or.inr rfl | exact (hab rfl).elim
    · simp at hl
  have not_single : ∀ g, NOk g → g.op = PEqualNP.CircuitLowerBounds.GateOp.not → ∀ k ∈ g.inputs, g.inputs = [k] := by
    intro g h ho k hk
    have hl := h.2 ho
    rcases hi : g.inputs with _ | ⟨a, _ | ⟨b,l⟩⟩
    · simp [hi] at hk
    · simpa [hi, eqComm] using hk
    · simp [hi] at hl
  have or_true : ∀ (g : PEqualNP.CircuitLowerBounds.Gate) (F : ℕ → Bool) k, g.op = PEqualNP.CircuitLowerBounds.GateOp.or → k ∈ g.inputs → F k = true →
      g.op.eval (g.inputs.map F) = true := by
    intro g F k ho hk ht
    rw [ho, evalOr, List.any_eq_true]
    exact ⟨F k, List.mem_map.mpr ⟨k,hk,rfl⟩, ht⟩
  have not_or_false : ∀ g k, NOk g → g.op ≠ PEqualNP.CircuitLowerBounds.GateOp.or → k ∈ g.inputs →
      ∃ b, ∀ F : ℕ → Bool, F k = false → g.op.eval (g.inputs.map F) = b := by
    intro g k hg hn hk
    rcases hg.1.1 with ho | ho | ho
    · have ho : g.op = PEqualNP.CircuitLowerBounds.GateOp.and := ho
      refine ⟨false, fun F hf => ?_⟩
      rw [ho, evalAnd]
      cases hv : (g.inputs.map F).all id
      · rfl
      · exact (Bool.false_ne_true (hf.symm.trans (List.all_eq_true.mp hv _ (List.mem_map.mpr ⟨k,hk,rfl⟩)))).elim
    · exact (hn ho).elim
    · have ho : g.op = PEqualNP.CircuitLowerBounds.GateOp.not := ho
      refine ⟨true, fun F hf => ?_⟩
      rw [not_single g hg ho k hk, List.map_singleton, hf, ho]
      rfl
  have fan_extend : ∀ n gs init k, PEqualNP.MetaComplexity.FanInTwo (⟨(extend n gs init).2, k⟩ : PEqualNP.CircuitLowerBounds.Circuit) := by
    intro n gs init k
    exact elim_ok n gs (init, []) (by simp)
  have emitInfo : ∀ op m ins g, (simplify op m ins).1 = some g →
      (simplify op m ins).2 = .inr m ∧ g.op = op ∧ ∀ k ∈ g.inputs, (.inr k : Bool ⊕ ℕ) ∈ ins := by
    intro op m ins g h
    cases op
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨c,l⟩⟩⟩ <;> (try cases a) <;> (try cases b) <;>
        simp [simplify,simpAnd] at h <;> subst g <;> simp [simplify,simpAnd]
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨c,l⟩⟩⟩ <;> (try cases a) <;> (try cases b) <;>
        simp [simplify,simpOr] at h <;> subst g <;> simp [simplify,simpOr]
    · rcases ins with _ | ⟨a,l⟩ <;> (try cases a) <;>
        simp [simplify,simpNot] at h <;> subst g <;> simp [simplify,simpNot]
    · simp [simplify] at h
    · simp [simplify] at h
  have symMarker : ∀ op m ins, m ≠ 1 → (.inr 1 : Bool ⊕ ℕ) ∉ ins →
      (simplify op m ins).2 ≠ .inr 1 := by
    intro op m ins hm h
    cases op
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨c,l⟩⟩⟩
      · simp [simplify,simpAnd]
      · exact h ∘ List.mem_singleton.mpr ∘ Eq.symm
      · rcases a with a | a <;> rcases b with b | b
        · simp [simplify,simpAnd]
        · cases a <;> simp [simplify,simpAnd] at h ⊢ <;> first | exact h | exact Ne.symm h
        · cases b <;> simp [simplify,simpAnd] at h ⊢ <;> first | exact h | exact Ne.symm h
        · simp [simplify,simpAnd,hm]
      · simp [simplify,simpAnd]
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨c,l⟩⟩⟩
      · simp [simplify,simpOr]
      · exact h ∘ List.mem_singleton.mpr ∘ Eq.symm
      · rcases a with a | a <;> rcases b with b | b
        · simp [simplify,simpOr]
        · cases a <;> simp [simplify,simpOr] at h ⊢ <;> first | exact h | exact Ne.symm h
        · cases b <;> simp [simplify,simpOr] at h ⊢ <;> first | exact h | exact Ne.symm h
        · simp [simplify,simpOr,hm]
      · simp [simplify,simpOr]
    · rcases ins with _ | ⟨a,l⟩ <;> (try cases a) <;> simp [simplify,simpNot,hm]
    · simp [simplify]
    · simp [simplify]
  let Marked : List PEqualNP.CircuitLowerBounds.Gate → Prop := fun ls => ∀ i < ls.length, 1 ∈ (atGate ls i).inputs →
    (atGate ls i).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧ ∀ j < ls.length, 1 ∈ (atGate ls j).inputs → j = i
  let Clean : List PEqualNP.CircuitLowerBounds.Gate → Prop := fun ls => ∀ i < ls.length, 1 ∉ (atGate ls i).inputs
  have guard_append : ∀ (ls : List PEqualNP.CircuitLowerBounds.Gate) (g : PEqualNP.CircuitLowerBounds.Gate), Marked ls → (1 ∉ g.inputs ∨ Clean ls ∧ g.op = PEqualNP.CircuitLowerBounds.GateOp.or) →
      Marked (ls ++ [g]) ∧ (Clean ls → 1 ∉ g.inputs → Clean (ls ++ [g])) := by
    intro ls g hm he
    have base : ∀ i < ls.length, atGate (ls ++ [g]) i = atGate ls i := by
      intro i hi
      rw [atGate_eq _ _ (by simp; omega), atGate_eq _ _ hi, List.getElem_append_left hi]
    have last : atGate (ls ++ [g]) ls.length = g := by
      have h : ls.length < (ls ++ [g]).length := by simp
      rw [atGate_eq _ _ h, List.getElem_concat_length] <;> rfl
    have range : ∀ i < (ls ++ [g]).length, i < ls.length ∨ i = ls.length := by
      intro i hi
      simp at hi
      omega
    constructor
    · intro i hi hr
      rcases range i hi with ht | rfl
      · rw [base i ht] at hr ⊢
        obtain ⟨ho, hu⟩ := hm _ ht hr
        refine ⟨ho, fun j hj hR => ?_⟩
        rcases range j hj with hj' | rfl
        · exact hu _ hj' (base j hj' ▸ hR)
        · rw [last] at hR
          exact (he.elim (fun hh => hh hR) (fun hh => hh.1 i ht hr)).elim
      · rw [last] at hr ⊢
        rcases he with he | ⟨hc,ho⟩
        · exact (he hr).elim
        · refine ⟨ho, fun j hj hR => ?_⟩
          rcases range j hj with hj' | rfl
          · exact (hc j hj' (base j hj' ▸ hR)).elim
          · rfl
    · intro hc hn i hi hR
      rcases range i hi with hi' | rfl
      · exact hc i hi' (base i hi' ▸ hR)
      · exact hn (last ▸ hR)
  have guardFold : ∀ (r : ℕ) (gs : List PEqualNP.CircuitLowerBounds.Gate),
      (∀ i < gs.length, 6 ∈ (atGate gs i).inputs → i = r) →
      (r < gs.length → ∃ g, (result 8 gs initK r).1 = some g ∧ (atGate gs r).op = PEqualNP.CircuitLowerBounds.GateOp.or) →
      (∀ k, (extend 8 gs initK).1.getD k (.inl false) = .inr 1 → k = 6) ∧
      Marked (extend 8 gs initK).2 ∧ (gs.length ≤ r → Clean (extend 8 gs initK).2) := by
    intro r gs
    induction gs using List.reverseRecOn with
    | nil =>
      intro _ _
      refine ⟨?_, (by intro i hi; simp [extend,elim] at hi), fun _ i hi => by simp [extend,elim] at hi⟩
      intro k hk
      change initK.getD k (.inl false) = .inr 1 at hk
      by_cases h : k < 10
      · interval_cases k <;> first | rfl | (exfalso; exact (by decide : _ ≠ _) hk)
      · have h' : initK.length ≤ k := by change 10 ≤ k; omega
        rw [List.getD_eq_default _ _ h'] at hk
        cases hk
    | append_singleton gs g ih =>
      intro hsrc hmust
      let pre := extend 8 gs initK
      let out := result 8 (gs ++ [g]) initK gs.length
      have hl : gs.length < (gs ++ [g]).length := by simp
      have atlast : atGate (gs ++ [g]) gs.length = g := by
        rw [atGate_eq _ _ hl, List.getElem_concat_length] <;> rfl
      have prior : ∀ i < gs.length, atGate (gs ++ [g]) i = atGate gs i := by
        intro i hi
        rw [atGate_eq _ _ (by simp; omega), atGate_eq _ _ hi, List.getElem_append_left hi]
      obtain ⟨sym,guard,clean⟩ := ih
        (fun i hi h => hsrc i (by simp; omega) ((prior i hi).symm ▸ h)) (by
          intro hi
          obtain ⟨e,he,ho⟩ := hmust (by simp; omega)
          exact ⟨e, (congrArg Prod.fst (result_append 8 gs [g] initK r hi)).symm.trans he, prior r hi ▸ ho⟩)
      have hout : out = simplify g.op (8 + pre.2.length) (g.inputs.map fun k => pre.1.getD k (.inl false)) := by
        unfold out result pre
        rw [atlast,List.take_append_length]
      have hfull : extend 8 (gs ++ [g]) initK = (pre.1 ++ [out.2], pre.2 ++ out.1.toList) := by
        rw [hout]
        change elim 8 (gs ++ [g]) (initK, []) = _
        rw [elim_append]
        rfl
      have hsource : 6 ∈ g.inputs → gs.length = r := fun h => hsrc _ hl (atlast.symm ▸ h)
      have noInput : gs.length ≠ r → (.inr 1 : Bool ⊕ ℕ) ∉ (g.inputs.map fun k => pre.1.getD k (.inl false)) := by
        intro hne hm
        obtain ⟨k,hk,he⟩ := List.mem_map.mp hm
        exact hne (hsource (sym k he ▸ hk))
      have hsym : out.2 ≠ .inr 1 := by
        by_cases he : gs.length = r
        · obtain ⟨e,hemit,_⟩ := hmust (by omega)
          have hh : out.1 = some e := by simpa only [out,he] using hemit
          rw [hout] at hh
          rw [hout,(emitInfo _ _ _ _ hh).1]
          intro h
          have h' := Sum.inr.inj h
          omega
        · rw [hout]
          exact symMarker _ _ _ (by omega) (noInput he)
      rw [hfull]
      refine ⟨fun k hk => ?_, ?_⟩
      · change (pre.1 ++ [out.2]).getD k (.inl false) = .inr 1 at hk
        by_cases he : k = pre.1.length
        · rw [he,getD_snoc_eq] at hk
          exact (hsym hk).elim
        · rw [getD_snoc_ne _ _ _ _ he] at hk
          exact sym k hk
      change Marked (pre.2 ++ out.1.toList) ∧ ((gs ++ [g]).length ≤ r → Clean (pre.2 ++ out.1.toList))
      cases he : out.1 with
      | none => exact ⟨by simpa only [he,Option.toList_none,List.append_nil] using guard,
          fun h => by simpa only [he,Option.toList_none,List.append_nil] using clean (by simp at h; omega)⟩
      | some e =>
        have he' := he
        rw [hout] at he'
        have info := emitInfo _ _ _ _ he'
        have noMark : gs.length ≠ r → 1 ∉ e.inputs := fun h hm => noInput h (info.2.2 _ hm)
        have hstep : 1 ∉ e.inputs ∨ Clean pre.2 ∧ e.op = PEqualNP.CircuitLowerBounds.GateOp.or := by
          by_cases h : gs.length = r
          · obtain ⟨_,_,ho⟩ := hmust (by omega)
            rw [← h,atlast] at ho
            exact Or.inr ⟨clean h.le, info.2.1.trans ho⟩
          · exact Or.inl (noMark h)
        simp only [Option.toList_some]
        obtain ⟨hh,hc⟩ := guard_append pre.2 e guard hstep
        exact ⟨hh, fun hr => hc (clean (by simp at hr; omega)) (noMark (by simp at hr; omega))⟩
  classical
  intro C hfan hsize reads huniq E hEsize hEread hEvar
  by_contra hn
  have hall : ∀ x, C.eval (inp x) = edge x := fun x => Classical.byContradiction fun hx => hn ⟨x,hx⟩
  let gs := C.gates.map normGate
  let G := atGate gs
  let R : ℕ → ℕ → Prop := fun i k => k ∈ (G i).inputs
  let V : (Fin 9 → Bool) → ℕ → Bool := fun x k => W gs (inp x) k
  have glen : gs.length = C.gates.length := List.length_map _
  have gsize : gs.length ≤ 14 := by rw [glen, ← sizeEq]; exact hsize
  have gok : ∀ g ∈ gs, NOk g := by
    intro g hg
    obtain ⟨g', hg', rfl⟩ := List.mem_map.mp hg
    exact normGate_nok _ (hfan _ hg')
  have gvalid : ∀ i < gs.length, NOk (G i) := by
    intro i hi
    change NOk (atGate gs i)
    rw [atGate_eq _ _ hi]
    exact gok _ (List.getElem_mem _)
  have gread : ∀ (i : Fin C.gates.length) k, R i k ↔ effective (C.gates.get i) k := by
    intro i k
    change k ∈ (atGate gs i).inputs ↔ _
    rw [atGate_eq _ _ (by rw [glen]; exact i.isLt)]
    simp only [gs, List.getElem_map]
    exact norm_read _ _
  have evalG : ∀ x, V x C.output = edge x := by
    intro x
    change (wiresFrom gs (inp x)).getD C.output false = _
    rw [wiresFrom_norm]
    exact hall x
  have raw : ∀ x k, k < 10 → V x k = (inp x).getD k false := by
    intro x k hk
    exact W_input _ _ _ (by rwa [inpLen])
  have value : ∀ x i, i < gs.length → V x (10+i) =
      (G i).op.eval ((G i).inputs.map fun k => if k < 10+i then V x k else false) := by
    intro x i hi
    exact (show W gs (inp x) (10+i) = _ from by simpa only [inpLen] using W_gate gs (inp x) i hi)
  have reading : ∀ (k : ℕ), k = 4 ∨ k = 6 → ∃ i : Fin C.gates.length,
      R i k ∧ ∀ j : Fin C.gates.length, R j k → j = i := by
    intro k hk
    obtain ⟨i, hi, hu⟩ := huniq k (by rcases hk with rfl | rfl <;> simp)
    exact ⟨i, (gread _ _).mpr hi, fun j hj => hu _ ((gread _ _).mp hj)⟩
  obtain ⟨pf, hpR, hpU⟩ := reading 4 (Or.inl rfl)
  obtain ⟨rf, hrR, hrU⟩ := reading 6 (Or.inr rfl)
  let p : ℕ := pf
  let r : ℕ := rf
  have hp : p < gs.length := by rw [glen]; exact pf.isLt
  have hr : r < gs.length := by rw [glen]; exact rf.isLt
  have singleA : ∀ i < gs.length, R i 4 → i = p := by
    intro i hi h
    exact congrArg Fin.val (hpU ⟨i, glen ▸ hi⟩ h)
  have singleB : ∀ i < gs.length, R i 6 → i = r := by
    intro i hi h
    exact congrArg Fin.val (hrU ⟨i, glen ▸ hi⟩ h)
  have readE : ∀ (i : Fin C.gates.length), (R i 4 ∨ R i 6 ∨ R i 9) → i ∈ E := by
    intro i hi
    by_contra h
    rcases hi with h4 | h6 | h9
    · exact hEread i h 4 (by simp) ((gread i _).mp h4)
    · exact hEread i h 6 (by simp) ((gread i _).mp h6)
    · exact hEread i h 9 (by simp) ((gread i _).mp h9)
  have ecard : E.card ≤ 3 := by
    have hs : C.gates.length ≤ 14 := hsize
    have he : E.card + 11 ≤ C.gates.length := hEsize
    omega
  have outRaw : 10 ≤ C.output := by
    by_contra hh
    have ht : C.output < 10 := by omega
    have hdisj : ∀ k < 10, (inp (ones [0,1])).getD k false = false ∨
        (inp (ones [2,3])).getD k false = false := by
      intro k hk
      interval_cases k <;> decide
    have ha : edge (ones [0,1]) = true := by decide
    have hb : edge (ones [2,3]) = true := by decide
    rcases hdisj _ ht with h | h
    · exact Bool.false_ne_true (h.symm.trans ((raw _ _ ht).symm.trans ((evalG _).trans ha)))
    · exact Bool.false_ne_true (h.symm.trans ((raw _ _ ht).symm.trans ((evalG _).trans hb)))
  let a0 := ones [0,6]
  let a1 := ones [0,4,6]
  let b0 := ones [1,4]
  let b1 := ones [1,4,6]
  let swap0 := ones [0,4]
  have inputA : ∀ k, k ≠ 4 → (inp a0).getD k false = (inp a1).getD k false := by
    intro k hk
    by_cases h : k < 10
    · interval_cases k <;> first | decide | contradiction
    · rw [List.getD_eq_default _ _ (by rw [inpLen]; omega), List.getD_eq_default _ _ (by rw [inpLen]; omega)]
  have inputB : ∀ k, k ≠ 6 → (inp b0).getD k false = (inp b1).getD k false := by
    intro k hk
    by_cases h : k < 10
    · interval_cases k <;> first | decide | contradiction
    · rw [List.getD_eq_default _ _ (by rw [inpLen]; omega), List.getD_eq_default _ _ (by rw [inpLen]; omega)]
  have inputSwap : ∀ k, k ≠ 4 ∧ k ≠ 6 → (inp swap0).getD k false = (inp a0).getD k false := by
    intro k hk
    by_cases h : k < 10
    · interval_cases k <;> first | decide | (exfalso; exact hk.1 rfl) | (exfalso; exact hk.2 rfl)
    · rw [List.getD_eq_default _ _ (by rw [inpLen]; omega), List.getD_eq_default _ _ (by rw [inpLen]; omega)]
  have varies : ∀ u v k, (∀ j, j ≠ k → (inp u).getD j false = (inp v).getD j false) →
      k < 10 → edge u ≠ edge v → ∀ i, (∀ j < gs.length, R j k → j = i) →
      V u (10+i) ≠ V v (10+i) := by
    intro u v k hin hk hne i hs he
    apply hne
    rw [← evalG u, ← evalG v]
    apply agree gs gs (inp u) (inp v) 10 (· ≠ k) rfl (inpLen _) (inpLen _) hin _ _ (by omega)
    intro j hj _
    by_cases h : j = i
    · exact Or.inl (h.symm ▸ he)
    · exact Or.inr ⟨rfl, fun l hl _ e => h (hs j hj (e ▸ hl))⟩
  have variesA := varies a0 a1 4 inputA (by decide) (by decide) p singleA
  have variesB := varies b0 b1 6 inputB (by decide) (by decide) r singleB
  have diffPR : p ≠ r := by
    intro he
    have hswap : V swap0 (10+p) = V a0 (10+p) := by
      have hr' : R p 6 := he.symm ▸ hrR
      have hi := two_inputs _ (gvalid p hp).1.2 4 6 hpR hr' (by decide)
      have hop : (G p).op ≠ PEqualNP.CircuitLowerBounds.GateOp.not := by
        intro h
        have hh := not_single _ (gvalid p hp) h 4 hpR
        simp [R, hh] at hr'
      have ha : V swap0 4 = true := (raw _ _ (by decide)).trans (by decide)
      have hb : V swap0 6 = false := (raw _ _ (by decide)).trans (by decide)
      have hc : V a0 4 = false := (raw _ _ (by decide)).trans (by decide)
      have hd : V a0 6 = true := (raw _ _ (by decide)).trans (by decide)
      rw [value _ _ hp, value _ _ hp]
      rcases (gvalid p hp).1.1 with h | h | h
      · change (G p).op = PEqualNP.CircuitLowerBounds.GateOp.and at h
        rcases hi with hi | hi <;> simp [hi, h, ha, hb, hc, hd, evalAnd, show 4 < 10+p by omega, show 6 < 10+p by omega]
      · change (G p).op = PEqualNP.CircuitLowerBounds.GateOp.or at h
        rcases hi with hi | hi <;> simp [hi, h, ha, hb, hc, hd, evalOr, show 4 < 10+p by omega, show 6 < 10+p by omega]
      · exact (hop h).elim
    have hdiff : edge swap0 ≠ edge a0 := by decide
    apply hdiff
    rw [← evalG swap0, ← evalG a0]
    apply agree gs gs (inp swap0) (inp a0) 10 (fun k => k ≠ 4 ∧ k ≠ 6) rfl (inpLen _) (inpLen _) inputSwap _ _ (by omega)
    intro i hi _
    by_cases h : i = p
    · exact Or.inl (h.symm ▸ hswap)
    · refine Or.inr ⟨rfl, fun k hk _ => ⟨?_, ?_⟩⟩
      · exact fun e => h (singleA i hi (e ▸ hk))
      · exact fun e => h ((singleB i hi (e ▸ hk)).trans he.symm)
  have cutNC : ∃ u v, cut u ≠ cut v := ⟨ones [], ones [0,1], by decide⟩
  have edgeNC : ∃ u v, edge u ≠ edge v := ⟨ones [], ones [0,1], by decide⟩
  have cutLower : ∀ hs init (x : (Fin 9 → Bool) → Fin 9 → Bool),
      hs.length ≤ 14 → (∀ g ∈ hs, Ok g) →
      (∀ y, Inv 9 (List.ofFn y) (inp (x y)) (init, [])) →
      (∀ y, W hs (inp (x y)) C.output = cut y) →
      ∀ i j, i < hs.length → j < hs.length → i ≠ j →
        (result 9 hs init i).1 = none → (result 9 hs init j).1 = none → False := by
    intro hs init x hlen hok hi he i j hil hjl hij hio hjo
    have hb : (extend 9 hs init).2.length + 2 ≤ hs.length := by
      have hc := count 9 hs init {i,j} (by
        intro k hk
        simp only [finsetMemInsert, finsetMemSingleton] at hk
        rcases hk with rfl | rfl
        · exact ⟨hil, hio⟩
        · exact ⟨hjl, hjo⟩)
      simpa [hij] using hc
    obtain ⟨o, ho⟩ := finish 9 hs init C.output (fun y => inp (x y)) cut hok hi he cutNC
    have lb := h2537 12 ⟨⟨(extend 9 hs init).2, o⟩, fan_extend _ _ _ _, by
      change (extend 9 hs init).2.length ≤ 12
      omega, ho⟩
    omega
  have gsOk : ∀ g ∈ gs, Ok g := fun g hg => (gok g hg).1
  have useful : ∀ i < gs.length, C.output = 10+i ∨ ∃ j < gs.length, i < j ∧ R j (10+i) := by
    intro i hi
    by_contra h
    have ho : C.output ≠ 10+i := fun e => h (Or.inl e)
    have hnread : ∀ j < gs.length, i < j → ¬ R j (10+i) :=
      fun j hj hij hjr => h (Or.inr ⟨j,hj,hij,hjr⟩)
    have prune : ∀ init (x : (Fin 9 → Bool) → Fin 9 → Bool) k j, i ≠ j → j < gs.length → R j k → k < 10 → init.length = 10 →
        init.getD k (.inl false) = .inl false →
        (∀ y, Inv 9 (List.ofFn y) (inp (x y)) (init, [])) → (∀ y, edge (x y) = cut y) → False := by
      intro init x k j hij hj hjr hk hinit hsym hInv hkey
      let replacement : PEqualNP.CircuitLowerBounds.Gate := ⟨PEqualNP.CircuitLowerBounds.GateOp.or, [k]⟩
      have hrep : NOk replacement := by simp [NOk, Ok, replacement]
      let hs := gs.set i replacement
      have hlen : hs.length = gs.length := List.length_set
      have hself : atGate hs i = replacement := by
        rw [atGate_eq _ _ (by omega)]
        exact List.getElem_set_self _
      have hother : ∀ l < gs.length, l ≠ i → atGate hs l = G l := by
        intro l hl hne
        change atGate hs l = atGate gs l
        rw [atGate_eq _ _ (by omega), atGate_eq gs _ hl]
        exact List.getElem_set_ne hne.symm _
      have hok : ∀ g ∈ hs, Ok g := by
        intro g hg
        obtain ⟨l, hl, rfl⟩ := List.mem_iff_getElem.mp hg
        rw [← atGate_eq _ _ hl]
        by_cases e : l = i
        · rw [e, hself]; exact hrep.1
        · rw [hother l (by omega) e]; exact (gvalid l (by omega)).1
      have hev : ∀ y, W hs (inp (x y)) C.output = cut y := by
        intro y
        rw [← hkey, ← evalG]
        symm
        apply agree gs hs (inp (x y)) (inp (x y)) 10 (· ≠ 10+i) hlen.symm (inpLen _) (inpLen _) (by intros; rfl) _ _ ho
        intro l hl hgood
        have hne : l ≠ i := by omega
        exact Or.inr ⟨(hother l hl hne).symm, fun m hm hlt e =>
          hnread l hl (by omega) (e ▸ hm)⟩
      have hsconst := (initialSymbol 9 hs init k (by omega)).trans hsym
      apply cutLower hs init x (by omega) hok hInv hev i j (by omega) (by omega) hij
      · apply omit_of_const _ _ _ _ k false (by omega) (hself.symm ▸ hrep) _ (by omega) hsconst
        rw [hself]; simp [replacement]
      · have he := hother j hj (Ne.symm hij)
        apply omit_of_const _ _ _ _ k false (by omega) (he.symm ▸ gvalid j hj) _ (by omega) hsconst
        rwa [he]
    by_cases hpi : i = p
    · exact prune initB xB 6 r (by rwa [hpi]) hr hrR (by decide) rfl (by decide) invB keyB
    · exact prune initA xA 4 p hpi hp hpR (by decide) rfl (by decide) invA keyA
  have symFalse : ∀ g m (l : List (Bool ⊕ ℕ)), NOk g → g.op ≠ PEqualNP.CircuitLowerBounds.GateOp.or →
      l.length = g.inputs.length → (.inl false : Bool ⊕ ℕ) ∈ l →
      ∃ b, (simplify g.op m l).2 = .inl b := by
    intro g m l hok hn hl hf
    rcases hok.1.1 with h | h | h
    · change g.op = PEqualNP.CircuitLowerBounds.GateOp.and at h
      have hlen := hok.1.2
      rw [h]
      refine ⟨false, ?_⟩
      rcases l with _ | ⟨a, _ | ⟨b, _ | ⟨c,l⟩⟩⟩
      · simp at hf
      · have e := List.mem_singleton.mp hf
        subst a
        rfl
      · simp only [listMemCons, listMemNil, or_false] at hf
        rcases hf with e | e
        · subst a; cases b <;> rfl
        · subst b; cases a <;> first | rfl | (rename_i c; cases c <;> rfl)
      · simp at hl; omega
    · exact (hn h).elim
    · change g.op = PEqualNP.CircuitLowerBounds.GateOp.not at h
      have hlen := hok.2 h
      rw [h]
      refine ⟨true, ?_⟩
      rcases l with _ | ⟨a, _ | ⟨b,l⟩⟩
      · simp at hf
      · have e := List.mem_singleton.mp hf
        subst a
        rfl
      · simp at hl; omega
  have cutOr : ∀ init (x : (Fin 9 → Bool) → Fin 9 → Bool) i k, i < gs.length → R i k → k < 10 → init.length = 10 →
      init.getD k (.inl false) = .inl false →
      (∀ y, Inv 9 (List.ofFn y) (inp (x y)) (init, [])) → (∀ y, edge (x y) = cut y) →
      (G i).op = PEqualNP.CircuitLowerBounds.GateOp.or := by
    intro init x i k hi hR hk hlen hsym hInv hkey
    by_contra hno
    have hc := (initialSymbol 9 gs init k (by omega)).trans hsym
    have hr := (takeSymbol 9 gs init i k hi.le (by omega)).trans hc
    obtain ⟨b, hb⟩ := symFalse (G i) (9 + (extend 9 (gs.take i) init).2.length)
      ((G i).inputs.map fun t => (extend 9 (gs.take i) init).1.getD t (.inl false))
      (gvalid i hi) hno (by simp) (List.mem_map.mpr ⟨k,hR,hr⟩)
    have hs : (extend 9 gs init).1.getD (10+i) (.inl false) = .inl b := by
      rw [← hlen, gateSymbol _ _ _ _ hi]
      exact hb
    rcases useful i hi with he | ⟨j,hj,hij,hjR⟩
    · have he' : ∀ y, W gs (inp (x y)) C.output = cut y := fun y => (evalG _).trans (hkey y)
      have hf : ∀ y, cut y = b := by
        intro y
        have e := ((inv_elim 9 (List.ofFn y) List.length_ofFn gs _ _ gsOk (hInv y)).2 C.output).2
        have e' : (extend 9 gs init).1.getD C.output (.inl false) = .inl b := he.symm ▸ hs
        rw [show (elim 9 gs (init, [])) = extend 9 gs init from rfl, e'] at e
        exact (he' y).symm.trans e.symm
      obtain ⟨u,v,hv⟩ := cutNC
      exact hv ((hf u).trans (hf v).symm)
    · exact cutLower gs init x gsize gsOk hInv (fun y => (evalG _).trans (hkey y)) i j hi hj
        (by omega) (omit_of_const _ _ _ _ k false hi (gvalid _ hi) hR (by omega) hc)
        (omit_of_const _ _ _ _ (10+i) b hj (gvalid _ hj) hjR (by omega) hs)
  have pOr := cutOr initA xA p 4 hp hpR (by decide) rfl (by decide) invA keyA
  have rOr := cutOr initB xB r 6 hr hrR (by decide) rfl (by decide) invB keyB
  have trueWire : ∀ x i k, i < gs.length → (G i).op = PEqualNP.CircuitLowerBounds.GateOp.or → R i k → k < 10+i →
      V x k = true → V x (10+i) = true := by
    intro x i k hi hop hR hlt hV
    rw [value _ _ hi]
    exact or_true _ _ _ hop hR ((ite_eq_left hlt).trans hV)
  have tA6 : V a0 6 = true ∧ V a1 6 = true := by
    exact ⟨(raw _ _ (by decide)).trans (by decide), (raw _ _ (by decide)).trans (by decide)⟩
  have tB4 : V b0 4 = true ∧ V b1 4 = true := by
    exact ⟨(raw _ _ (by decide)).trans (by decide), (raw _ _ (by decide)).trans (by decide)⟩
  have tA9 : V a0 9 = true ∧ V a1 9 = true := by
    exact ⟨(raw _ _ (by decide)).trans (by decide), (raw _ _ (by decide)).trans (by decide)⟩
  have tB9 : V b0 9 = true ∧ V b1 9 = true := by
    exact ⟨(raw _ _ (by decide)).trans (by decide), (raw _ _ (by decide)).trans (by decide)⟩
  have pNo9 : ¬ R p 9 := fun h => variesA
    ((trueWire a0 p 9 hp pOr h (by omega) tA9.1).trans (trueWire a1 p 9 hp pOr h (by omega) tA9.2).symm)
  have rNo9 : ¬ R r 9 := fun h => variesB
    ((trueWire b0 r 9 hr rOr h (by omega) tB9.1).trans (trueWire b1 r 9 hr rOr h (by omega) tB9.2).symm)
  have someQ : ∃ i : Fin C.gates.length, R i 9 := by
    by_contra hnone
    have he : ∀ y, W gs (List.ofFn y ++ [false]) C.output = edge y := by
      intro y
      rw [← evalG]
      apply agree gs gs (List.ofFn y ++ [false]) (inp y) 10 (· ≠ 9) rfl (by simp) (inpLen _) _ _ _ (by omega)
      · intro k hk
        by_cases ht : k < 9
        · unfold inp
          rw [List.getD_append _ _ _ _ (by simpa using ht), List.getD_append _ _ _ _ (by simpa using ht)]
        · have hk' : 10 ≤ k := by omega
          rw [List.getD_eq_default _ _ (by simp; omega), List.getD_eq_default _ _ (by rwa [inpLen])]
      · intro i hi _
        exact Or.inr ⟨rfl, fun k hk _ e => hnone ⟨⟨i,glen ▸ hi⟩,e ▸ hk⟩⟩
    obtain ⟨o, ho⟩ := finish 9 gs initU C.output (fun y => List.ofFn y ++ [false]) edge gsOk invU he edgeNC
    apply h2012
    have hb := count 9 gs initU ∅ (by simp)
    simp only [Finset.card_empty, Nat.add_zero] at hb
    exact ⟨⟨(extend 9 gs initU).2,o⟩, fan_extend _ _ _ _, by exact hb.trans gsize, ho⟩
  obtain ⟨qf, hqR⟩ := someQ
  let q : ℕ := qf
  have hq : q < gs.length := by rw [glen]; exact qf.isLt
  have diffPQ : p ≠ q := fun e => pNo9 (e.symm ▸ hqR)
  have diffRQ : r ≠ q := fun e => rNo9 (e.symm ▸ hqR)
  have eExact : E = {pf,rf,qf} := by
    symm
    apply Finset.eq_of_subset_of_card_le
    · intro i hi
      simp only [finsetMemInsert, finsetMemSingleton] at hi
      rcases hi with rfl | rfl | rfl
      · exact readE _ (Or.inl hpR)
      · exact readE _ (Or.inr (Or.inl hrR))
      · exact readE _ (Or.inr (Or.inr hqR))
    · have hpr : pf ≠ rf := fun e => diffPR (congrArg Fin.val e)
      have hpq : pf ≠ qf := fun e => diffPQ (congrArg Fin.val e)
      have hrq : rf ≠ qf := fun e => diffRQ (congrArg Fin.val e)
      simpa [hpr, hpq, hrq] using ecard
  let DConst : ℕ → Prop := fun k => ∃ b, ∀ y : Fin 7 → Bool, V (xD y) k = b
  have rawD : ∀ k, k = 4 ∨ k = 6 ∨ k = 9 → ∀ y : Fin 7 → Bool, V (xD y) k = false := by
    intro k hk y
    rcases hk with rfl | rfl | rfl <;> exact (raw _ _ (by decide)).trans rfl
  have doubleInput : ∀ y : Fin 7 → Bool, inp (xD y) =
      [y 4,y 3,y 0,y 5,false,y 1,false,y 2,y 6,false] := by
    intro y
    rfl
  have noOutside : ∀ (i : Fin C.gates.length) k, R i k → k < 10 + i.val → DConst k → i ∈ E := by
    intro i k hk hlt hdc
    by_contra hni
    have hread := (gread i k).mp hk
    have hin : k ∈ (C.gates.get i).inputs := by
      rcases hread with h | h
      · exact List.mem_of_getElem? h
      · exact h.2
    obtain ⟨u,v,hnv⟩ := hEvar i hni k hin hread
    obtain ⟨b,hb⟩ := hdc
    have relate : ∀ y : Fin 7 → Bool, V (xD y) k =
        (wiresFrom (C.gates.take i.val) [y 4,y 3,y 0,y 5,false,y 1,false,y 2,y 6,false]).getD k false := by
      intro y
      change (wiresFrom (C.gates.map normGate) (inp (xD y))).getD k false = _
      rw [wiresFrom_norm, doubleInput]
      conv_lhs => rw [← List.take_append_drop i.val C.gates, wiresFrom_append]
      apply W_input
      rw [length_wiresFrom, List.length_take, Nat.min_eq_left i.isLt.le]
      exact hlt
    apply hnv
    exact (relate u).symm.trans ((hb u).trans ((hb v).symm.trans (relate v)))
  have doubleNC : ∃ u v : Fin 7 → Bool, edge (xD u) ≠ edge (xD v) :=
    ⟨fun _ => false, fun i => decide (i = 4 ∨ i = 3), by decide⟩
  have noConstOutput : ¬ DConst C.output := by
    rintro ⟨b,hb⟩
    obtain ⟨u,v,hd⟩ := doubleNC
    exact hd ((evalG _).symm.trans ((hb u).trans ((hb v).symm.trans (evalG _))))
  have growConst : ∀ i j, i < j → ∀ hj : j < gs.length,
      (⟨j,glen ▸ hj⟩ : Fin C.gates.length) ∈ E → R j (10+i) → DConst (10+i) → DConst (10+j) := by
    intro i j hij hj he hjr hc
    have reader : ∃ k, (k = 4 ∨ k = 6 ∨ k = 9) ∧ R j k := by
      rw [eExact] at he
      simp only [finsetMemInsert, finsetMemSingleton] at he
      rcases he with h | h | h
      · have e : j = p := congrArg Fin.val h
        exact ⟨4,Or.inl rfl,e.symm ▸ hpR⟩
      · have e : j = r := congrArg Fin.val h
        exact ⟨6,Or.inr (Or.inl rfl),e.symm ▸ hrR⟩
      · have e : j = q := congrArg Fin.val h
        exact ⟨9,Or.inr (Or.inr rfl),e.symm ▸ hqR⟩
    obtain ⟨k,hk,hkr⟩ := reader
    have hkt : k < 10 := by rcases hk with h | h | h <;> omega
    have hpair := two_inputs _ (gvalid j hj).1.2 k (10+i) hkr hjr (by omega)
    obtain ⟨b,hb⟩ := hc
    rcases hpair with h | h
    · refine ⟨(G j).op.eval [false,b], fun y => ?_⟩
      rw [value _ _ hj, h]
      simp [rawD _ hk, hb, show k < 10+j by omega, show 10+i < 10+j by omega]
    · refine ⟨(G j).op.eval [b,false], fun y => ?_⟩
      rw [value _ _ hj, h]
      simp [rawD _ hk, hb, show k < 10+j by omega, show 10+i < 10+j by omega]
  have noEConst : ∀ n i, gs.length-i = n → i < gs.length → ¬ DConst (10+i) := by
    intro n
    induction n using Nat.strong_induction_on with
    | ind n ih =>
      intro i hi hil hc
      rcases useful i hil with e | ⟨j,hj,hij,hjr⟩
      · exact noConstOutput (e.symm ▸ hc)
      · have he := noOutside ⟨j,glen ▸ hj⟩ (10+i) hjr (Nat.add_lt_add_left hij 10) hc
        exact ih (gs.length-j) (by omega) j rfl hj (growConst i j hij hj he hjr hc)
  have qOr : (G q).op = PEqualNP.CircuitLowerBounds.GateOp.or := by
    by_contra hno
    obtain ⟨b,hb⟩ := not_or_false (G q) 9 (gvalid _ hq) hno hqR
    apply noEConst (gs.length-q) q rfl hq
    refine ⟨b,fun y => ?_⟩
    rw [value _ _ hq]
    exact hb _ ((ite_eq_left (by omega : 9 < 10+q)).trans (rawD 9 (Or.inr (Or.inr rfl)) y))
  have qTrueA : V a0 (10+q) = true ∧ V a1 (10+q) = true :=
    ⟨trueWire _ _ 9 hq qOr hqR (by omega) tA9.1, trueWire _ _ 9 hq qOr hqR (by omega) tA9.2⟩
  have qTrueB : V b0 (10+q) = true ∧ V b1 (10+q) = true :=
    ⟨trueWire _ _ 9 hq qOr hqR (by omega) tB9.1, trueWire _ _ 9 hq qOr hqR (by omega) tB9.2⟩
  have pTrueB : V b0 (10+p) = true ∧ V b1 (10+p) = true :=
    ⟨trueWire _ _ 4 hp pOr hpR (by omega) tB4.1, trueWire _ _ 4 hp pOr hpR (by omega) tB4.2⟩
  have notOutB : ∀ i, V b0 (10+i) = true → V b1 (10+i) = true → C.output ≠ 10+i := by
    intro i h0 h1 e
    have hn : edge b0 ≠ edge b1 := by decide
    apply hn
    rw [← evalG b0, ← evalG b1, e, h0, h1]
  have notR : ∀ i, V b0 (10+i) = true → V b1 (10+i) = true → i < r → ¬ R r (10+i) := by
    intro i h0 h1 hi hR
    exact variesB ((trueWire _ _ _ hr rOr hR (by omega) h0).trans
      (trueWire _ _ _ hr rOr hR (by omega) h1).symm)
  have notPQ : q < p → ¬ R p (10+q) := by
    intro hi hR
    exact variesA ((trueWire _ _ _ hp pOr hR (by omega) qTrueA.1).trans
      (trueWire _ _ _ hp pOr hR (by omega) qTrueA.2).symm)
  have qConsumer : ∃ j < gs.length, q < j ∧ R j (10+q) ∧ j ≠ p ∧ j ≠ r := by
    rcases useful q hq with he | ⟨j,hj,hlt,hR⟩
    · exact (notOutB q qTrueB.1 qTrueB.2 he).elim
    · refine ⟨j,hj,hlt,hR,?_,?_⟩
      · rintro rfl; exact notPQ hlt hR
      · rintro rfl; exact notR q qTrueB.1 qTrueB.2 hlt hR
  have pConsumer : ∃ j < gs.length, p < j ∧ R j (10+p) ∧ j ≠ q ∧ j ≠ r := by
    by_contra hnone
    have hbad : edge a0 ≠ edge a1 := by decide
    apply hbad
    rw [← evalG a0, ← evalG a1]
    have hgood : C.output ≠ 4 ∧ C.output ≠ 10+p := ⟨by omega, notOutB p pTrueB.1 pTrueB.2⟩
    apply agree gs gs (inp a0) (inp a1) 10 (fun k => k ≠ 4 ∧ k ≠ 10+p) rfl (inpLen _) (inpLen _)
      (fun k hk => inputA k hk.1) _ _ hgood
    intro j hj hg
    have hjp : j ≠ p := by intro h; exact hg.2 (congrArg (10+·) h)
    by_cases heq : j = q
    · exact Or.inl (heq.symm ▸ qTrueA.1.trans qTrueA.2.symm)
    by_cases her : j = r
    · have e0 := trueWire a0 r 6 hr rOr hrR (by omega) tA6.1
      have e1 := trueWire a1 r 6 hr rOr hrR (by omega) tA6.2
      exact Or.inl (her.symm ▸ e0.trans e1.symm)
    refine Or.inr ⟨rfl,fun k hk hlt => ⟨?_,?_⟩⟩
    · intro e; exact hjp (singleA j hj (e ▸ hk))
    · intro e; exact hnone ⟨j,hj,by omega,e ▸ hk,heq,her⟩
  have symOrTrue : ∀ m (l : List (Bool ⊕ ℕ)), l.length ≤ 2 → (.inl true : Bool ⊕ ℕ) ∈ l →
      (simplify PEqualNP.CircuitLowerBounds.GateOp.or m l).2 = .inl true := by
    intro m l hl h
    rcases l with _ | ⟨a, _ | ⟨b, _ | ⟨c,l⟩⟩⟩
    · simp at h
    · have e := List.mem_singleton.mp h
      subst a
      rfl
    · simp only [listMemCons, listMemNil, or_false] at h
      rcases h with e | e
      · subst a; cases b <;> rfl
      · subst b; cases a <;> first | rfl | (rename_i c; cases c <;> rfl)
    · simp at hl
  have kSym : ∀ k, k = 4 ∨ k = 9 → (extend 8 gs initK).1.getD k (.inl false) = .inl true := by
    intro k hk
    rcases hk with rfl | rfl <;> exact (initialSymbol _ _ _ _ (by decide)).trans (by decide)
  have pSym : (extend 8 gs initK).1.getD (10+p) (.inl false) = .inl true := by
    rw [show 10+p = initK.length+p from rfl, gateSymbol _ _ _ _ hp]
    unfold result
    change (simplify (G p).op _ _).2 = _
    rw [pOr]
    apply symOrTrue _ _ (by simpa using (gvalid p hp).1.2)
    exact List.mem_map.mpr ⟨4,hpR,(takeSymbol _ _ _ _ _ hp.le (by change 4 < 10+p; omega)).trans (kSym 4 (Or.inl rfl))⟩
  have qSym : (extend 8 gs initK).1.getD (10+q) (.inl false) = .inl true := by
    rw [show 10+q = initK.length+q from rfl, gateSymbol _ _ _ _ hq]
    unfold result
    change (simplify (G q).op _ _).2 = _
    rw [qOr]
    apply symOrTrue _ _ (by simpa using (gvalid q hq).1.2)
    exact List.mem_map.mpr ⟨9,hqR,(takeSymbol _ _ _ _ _ hq.le (by change 9 < 10+q; omega)).trans (kSym 9 (Or.inr rfl))⟩
  have skipK : ∀ i < gs.length, ∀ k, R i k → k < 10+i →
      (extend 8 gs initK).1.getD k (.inl false) = .inl true → (result 8 gs initK i).1 = none := by
    intro i hi k hk ht hs
    exact omit_of_const _ _ _ _ k true hi (gvalid i hi) hk ht hs
  have skipP := skipK p hp 4 hpR (by omega) (kSym 4 (Or.inl rfl))
  have skipQ := skipK q hq 9 hqR (by omega) (kSym 9 (Or.inr rfl))
  have four : ∀ u v, u < gs.length → v < gs.length → p ≠ u → p ≠ v → q ≠ u → q ≠ v → u ≠ v →
      u ≠ r → v ≠ r → (result 8 gs initK u).1 = none → (result 8 gs initK v).1 = none →
      ∃ S : Finset ℕ, S.card = 4 ∧ r ∉ S ∧ ∀ i ∈ S, i < gs.length ∧ (result 8 gs initK i).1 = none := by
    intro u v hu hv hpu hpv hqu hqv huv hur hvr hsu hsv
    refine ⟨{p,q,u,v}, by simp [diffPQ,hpu,hpv,hqu,hqv,huv], ?_, ?_⟩
    · simp [Ne.symm diffPR,diffRQ,Ne.symm hur,Ne.symm hvr]
    · intro i hi
      simp only [finsetMemInsert, finsetMemSingleton] at hi
      rcases hi with rfl | rfl | rfl | rfl
      · exact ⟨hp,skipP⟩
      · exact ⟨hq,skipQ⟩
      · exact ⟨hu,hsu⟩
      · exact ⟨hv,hsv⟩
  have savings : ∃ S : Finset ℕ, S.card = 4 ∧ r ∉ S ∧
      ∀ i ∈ S, i < gs.length ∧ (result 8 gs initK i).1 = none := by
    obtain ⟨u,hu,hpu,hup,huq,hur⟩ := pConsumer
    obtain ⟨v,hv,hqv,hvq,hvp,hvr⟩ := qConsumer
    have hsu := skipK u hu (10+p) hup (by omega) pSym
    by_cases huv : u = v
    · subst v
      have hpair := two_inputs _ (gvalid u hu).1.2 (10+p) (10+q) hup hvq (by omega)
      have hnot : (G u).op ≠ PEqualNP.CircuitLowerBounds.GateOp.not := by
        intro h
        have hh := not_single _ (gvalid u hu) h _ hup
        change 10+q ∈ (G u).inputs at hvq
        rw [hh] at hvq
        have h := List.mem_singleton.mp hvq
        omega
      have hAndOr : (G u).op = PEqualNP.CircuitLowerBounds.GateOp.and ∨ (G u).op = PEqualNP.CircuitLowerBounds.GateOp.or := by
        rcases (gvalid u hu).1.1 with h | h | h
        · exact Or.inl h
        · exact Or.inr h
        · exact (hnot h).elim
      have both : ∀ (F : ℕ → Bool), F (10+p) = true → F (10+q) = true →
          (G u).op.eval ((G u).inputs.map F) = true := by
        intro F h0 h1
        rcases hpair with hi | hi <;> rcases hAndOr with ho | ho <;>
          simp [hi,ho,h0,h1,evalAnd,evalOr]
      have sem : ∀ x, V x (10+p) = true → V x (10+q) = true → V x (10+u) = true := by
        intro x h1 h2
        rw [value _ _ hu]
        exact both _ ((ite_eq_left (by omega)).trans h1) ((ite_eq_left (by omega)).trans h2)
      have sem0 := sem b0 pTrueB.1 qTrueB.1
      have sem1 := sem b1 pTrueB.2 qTrueB.2
      have uSym : (extend 8 gs initK).1.getD (10+u) (.inl false) = .inl true := by
        rw [show 10+u = initK.length+u from rfl, gateSymbol _ _ _ _ hu]
        unfold result
        change (simplify (G u).op _ ((G u).inputs.map _)).2 = _
        have h1 := (takeSymbol 8 gs initK u (10+p) hu.le (Nat.add_lt_add_left hpu 10)).trans pSym
        have h2 := (takeSymbol 8 gs initK u (10+q) hu.le (Nat.add_lt_add_left hqv 10)).trans qSym
        rcases hpair with hi | hi <;> rcases hAndOr with ho | ho <;>
          simp only [hi,ho,List.map_cons,List.map_nil,h1,h2] <;> rfl
      rcases useful u hu with h | ⟨w,hw,huw,hwu⟩
      · exact (notOutB u sem0 sem1 h).elim
      · have hwr : w ≠ r := by rintro rfl; exact notR u sem0 sem1 huw hwu
        exact four u w hu hw (by omega) (by omega) (by omega) (by omega) (by omega) hur hwr hsu
          (skipK w hw (10+u) hwu (by omega) uSym)
    · exact four u v hu hv (by omega) (Ne.symm hvp) (Ne.symm huq) (by omega) huv hur hvr hsu
        (skipK v hv (10+q) hvq (by omega) qSym)
  obtain ⟨S,hfour,hrS,hS⟩ := savings
  have cycleNC : ∃ u v : Fin 8 → Bool, cycle u ≠ cycle v :=
    ⟨fun _ => false, fun i => decide (i = 6), by decide⟩
  obtain ⟨o,ho⟩ := finish 8 gs initK C.output (fun y => inp (xK y)) cycle gsOk invK
    (fun y => (evalG _).trans (keyK y)) cycleNC
  let D : PEqualNP.CircuitLowerBounds.Circuit := ⟨(extend 8 gs initK).2, o⟩
  have hD : PEqualNP.MetaComplexity.FanInTwo D := fan_extend _ _ _ _
  have Dsize : D.size ≤ 10 := by
    have hc := count 8 gs initK S hS
    change (extend 8 gs initK).2.length ≤ 10
    omega
  cases rEmit : (result 8 gs initK r).1 with
  | none =>
    have hc := count 8 gs initK (insert r S) (by
      intro i hi
      rcases Finset.mem_insert.mp hi with rfl | h
      · exact ⟨hr,rEmit⟩
      · exact hS _ h)
    rw [Finset.card_insert_of_notMem hrS, hfour] at hc
    apply hC6_9
    exact ⟨D,hD,by change (extend 8 gs initK).2.length ≤ 9; omega,ho⟩
  | some gate =>
    have hmark := (guardFold r gs singleB (fun _ => ⟨gate,rEmit,rOr⟩)).2.1
    have hguard : ∀ (i : Fin D.gates.length), effective (D.gates.get i) 1 →
        (D.gates.get i).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧
          ∀ (j : Fin D.gates.length), effective (D.gates.get j) 1 → j = i := by
      have reads : ∀ (i : Fin D.gates.length), effective (D.gates.get i) 1 →
          1 ∈ (atGate D.gates i).inputs := by
        intro i h
        rw [atGate_eq _ _ i.isLt]
        exact h.elim List.mem_of_getElem? And.right
      intro i hi
      obtain ⟨hop,hu⟩ := hmark i i.isLt (reads i hi)
      rw [atGate_eq _ _ i.isLt] at hop
      exact ⟨hop, fun j hj => Fin.ext (hu j j.isLt (reads j hj))⟩
    obtain ⟨y,hy⟩ := hC6_10 D hD Dsize hguard
    exact hy (ho y)
