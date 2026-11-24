import Mathlib
import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

set_option maxHeartbeats 10000000 in
theorem PEqualNP.Outside.R_meta_3386_1
    (h2496 : ∀ (x1 : ℕ), PEqualNP.MetaComplexity.HasCircuitSize (8 : ℕ) (fun (x2 : Fin (8 : ℕ) → Bool) => [((0 : Fin (8 : ℕ)), (1 : Fin (8 : ℕ))), ((0 : Fin (8 : ℕ)), (5 : Fin (8 : ℕ))), ((1 : Fin (8 : ℕ)), (2 : Fin (8 : ℕ))), ((1 : Fin (8 : ℕ)), (6 : Fin (8 : ℕ))), ((2 : Fin (8 : ℕ)), (3 : Fin (8 : ℕ))), ((2 : Fin (8 : ℕ)), (7 : Fin (8 : ℕ))), ((4 : Fin (8 : ℕ)), (6 : Fin (8 : ℕ))), ((4 : Fin (8 : ℕ)), (7 : Fin (8 : ℕ))), ((5 : Fin (8 : ℕ)), (7 : Fin (8 : ℕ)))].any fun (x3 : Fin (8 : ℕ) × Fin (8 : ℕ)) => x2 x3.1 && x2 x3.2) x1 → (12 : ℕ) ≤ x1)
    (h2537 : ∀ (x1 : ℕ), PEqualNP.MetaComplexity.HasCircuitSize (9 : ℕ) (fun (x2 : Fin (9 : ℕ) → Bool) => x2 (0 : Fin (9 : ℕ)) && x2 (1 : Fin (9 : ℕ)) || x2 (1 : Fin (9 : ℕ)) && x2 (2 : Fin (9 : ℕ)) || x2 (2 : Fin (9 : ℕ)) && x2 (3 : Fin (9 : ℕ)) || x2 (0 : Fin (9 : ℕ)) && x2 (5 : Fin (9 : ℕ)) || x2 (1 : Fin (9 : ℕ)) && x2 (6 : Fin (9 : ℕ)) || x2 (2 : Fin (9 : ℕ)) && x2 (7 : Fin (9 : ℕ)) || x2 (3 : Fin (9 : ℕ)) && x2 (8 : Fin (9 : ℕ)) || x2 (5 : Fin (9 : ℕ)) && x2 (7 : Fin (9 : ℕ)) || x2 (6 : Fin (9 : ℕ)) && x2 (8 : Fin (9 : ℕ)) || x2 (8 : Fin (9 : ℕ)) && x2 (5 : Fin (9 : ℕ))) x1 → (13 : ℕ) ≤ x1)
    (hSingle : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.FanInTwo x1 → x1.size ≤ (13 : ℕ) → (∀ q (hq : q < x1.gates.length), (0 : ℕ) ∉ x1.gates[q].inputs ∧ (10 : ℕ) ∉ x1.gates[q].inputs) → (∃ p, ∃ hp : p < x1.gates.length, x1.gates[p].op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ (9 : ℕ) ∈ x1.gates[p].inputs ∧ ∀ q (hq : q < x1.gates.length), (9 : ℕ) ∈ x1.gates[q].inputs → q = p) → ∃ (x5 : Fin (9 : ℕ) → Bool), x1.eval (List.ofFn x5 ++ [!x5 (0 : Fin (9 : ℕ)), PEqualNP.CircuitLowerBounds.GateOp.not.eval []]) ≠ (x5 (0 : Fin (9 : ℕ)) && x5 (1 : Fin (9 : ℕ)) || x5 (1 : Fin (9 : ℕ)) && x5 (2 : Fin (9 : ℕ)) || x5 (2 : Fin (9 : ℕ)) && x5 (3 : Fin (9 : ℕ)) || x5 (3 : Fin (9 : ℕ)) && x5 (4 : Fin (9 : ℕ)) || x5 (4 : Fin (9 : ℕ)) && x5 (0 : Fin (9 : ℕ)) || x5 (0 : Fin (9 : ℕ)) && x5 (5 : Fin (9 : ℕ)) || x5 (1 : Fin (9 : ℕ)) && x5 (6 : Fin (9 : ℕ)) || x5 (2 : Fin (9 : ℕ)) && x5 (7 : Fin (9 : ℕ)) || x5 (3 : Fin (9 : ℕ)) && x5 (8 : Fin (9 : ℕ)) || x5 (5 : Fin (9 : ℕ)) && x5 (7 : Fin (9 : ℕ)) || x5 (6 : Fin (9 : ℕ)) && x5 (8 : Fin (9 : ℕ)) || x5 (8 : Fin (9 : ℕ)) && x5 (5 : Fin (9 : ℕ)))) :
    ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit),   PEqualNP.MetaComplexity.FanInTwo x1 →     x1.size ≤ (13 : ℕ) →       ∃ (x4 : Fin (9 : ℕ) → Bool),         have x5 : List Bool := List.ofFn x4 ++ [!x4 (0 : Fin (9 : ℕ))];         x1.eval (x5 ++ [PEqualNP.CircuitLowerBounds.GateOp.not.eval []]) ≠ (x4 (0 : Fin (9 : ℕ)) && x4 (1 : Fin (9 : ℕ)) || x4 (1 : Fin (9 : ℕ)) && x4 (2 : Fin (9 : ℕ)) || x4 (2 : Fin (9 : ℕ)) && x4 (3 : Fin (9 : ℕ)) || x4 (3 : Fin (9 : ℕ)) && x4 (4 : Fin (9 : ℕ)) || x4 (4 : Fin (9 : ℕ)) && x4 (0 : Fin (9 : ℕ)) || x4 (0 : Fin (9 : ℕ)) && x4 (5 : Fin (9 : ℕ)) || x4 (1 : Fin (9 : ℕ)) && x4 (6 : Fin (9 : ℕ)) || x4 (2 : Fin (9 : ℕ)) && x4 (7 : Fin (9 : ℕ)) || x4 (3 : Fin (9 : ℕ)) && x4 (8 : Fin (9 : ℕ)) || x4 (5 : Fin (9 : ℕ)) && x4 (7 : Fin (9 : ℕ)) || x4 (6 : Fin (9 : ℕ)) && x4 (8 : Fin (9 : ℕ)) || x4 (8 : Fin (9 : ℕ)) && x4 (5 : Fin (9 : ℕ))) := by
  have evalAnd : ∀ l : List Bool, GateOp.and.eval l = l.all id := fun _ => rfl
  have evalOr : ∀ l : List Bool, GateOp.or.eval l = l.any id := fun _ => rfl
  have evalNot : ∀ l : List Bool, GateOp.not.eval l = !(l.headD false) := fun _ => rfl
  have sizeEq : ∀ c : Circuit, c.size = c.gates.length := fun _ => rfl
  let wiresFrom : List Gate → List Bool → List Bool := fun gs w =>
    gs.foldl (fun w g => w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]) w
  let simpNot : ℕ → List (Bool ⊕ ℕ) → Option Gate × (Bool ⊕ ℕ) := fun m l =>
    l.casesOn (motive := fun _ => Option Gate × (Bool ⊕ ℕ)) (none, Sum.inl true)
      (fun a _ => Sum.elim (fun c => (none, Sum.inl (!c)))
        (fun j => (some ⟨GateOp.not, [j]⟩, Sum.inr m)) a)
  let simpAnd : ℕ → List (Bool ⊕ ℕ) → Option Gate × (Bool ⊕ ℕ) := fun m l =>
    l.casesOn (motive := fun _ => Option Gate × (Bool ⊕ ℕ)) (none, Sum.inl true)
      (fun a t => t.casesOn (motive := fun _ => Option Gate × (Bool ⊕ ℕ)) (none, a)
        (fun b t2 => t2.casesOn (motive := fun _ => Option Gate × (Bool ⊕ ℕ))
          (Sum.elim
            (fun c => Sum.elim (fun d => (none, Sum.inl (c && d)))
              (fun k => (none, bif c then Sum.inr k else Sum.inl false)) b)
            (fun j => Sum.elim (fun d => (none, bif d then Sum.inr j else Sum.inl false))
              (fun k => (some ⟨GateOp.and, [j, k]⟩, Sum.inr m)) b) a)
          (fun _ _ => (none, Sum.inl false))))
  let simpOr : ℕ → List (Bool ⊕ ℕ) → Option Gate × (Bool ⊕ ℕ) := fun m l =>
    l.casesOn (motive := fun _ => Option Gate × (Bool ⊕ ℕ)) (none, Sum.inl false)
      (fun a t => t.casesOn (motive := fun _ => Option Gate × (Bool ⊕ ℕ)) (none, a)
        (fun b t2 => t2.casesOn (motive := fun _ => Option Gate × (Bool ⊕ ℕ))
          (Sum.elim
            (fun c => Sum.elim (fun d => (none, Sum.inl (c || d)))
              (fun k => (none, bif c then Sum.inl true else Sum.inr k)) b)
            (fun j => Sum.elim (fun d => (none, bif d then Sum.inl true else Sum.inr j))
              (fun k => (some ⟨GateOp.or, [j, k]⟩, Sum.inr m)) b) a)
          (fun _ _ => (none, Sum.inl false))))
  let simplify : GateOp → ℕ → List (Bool ⊕ ℕ) → Option Gate × (Bool ⊕ ℕ) := fun op m ins =>
    op.casesOn (motive := fun _ => Option Gate × (Bool ⊕ ℕ)) (simpAnd m ins) (simpOr m ins)
      (simpNot m ins) (fun _ => (none, Sum.inl false)) (none, Sum.inl false)
  let sval : List Bool → Bool ⊕ ℕ → Bool := fun w s =>
    Sum.elim (fun c => c) (fun j => w.getD j false) s
  let svalid : ℕ → Bool ⊕ ℕ → Prop := fun m s =>
    Sum.elim (fun _ => True) (fun j => j < m) s
  let Ok : Gate → Prop := fun g =>
    g.op ∈ ({GateOp.and, GateOp.or, GateOp.not} : Set GateOp) ∧ g.inputs.length ≤ 2
  let NOk : Gate → Prop := fun g => Ok g ∧ (g.op = GateOp.not → g.inputs.length ≤ 1)
  let normGate : Gate → Gate := fun g =>
    g.op.casesOn (motive := fun _ => Gate) g g ⟨GateOp.not, g.inputs.take 1⟩ (fun _ => g) g
  let elimStep : ℕ → List (Bool ⊕ ℕ) × List Gate → Gate → List (Bool ⊕ ℕ) × List Gate :=
    fun n acc g =>
      (acc.1 ++ [(simplify g.op (n + acc.2.length)
          (g.inputs.map fun i => acc.1.getD i (Sum.inl false))).2],
        acc.2 ++ (simplify g.op (n + acc.2.length)
          (g.inputs.map fun i => acc.1.getD i (Sum.inl false))).1.toList)
  let elim : ℕ → List Gate → List (Bool ⊕ ℕ) × List Gate → List (Bool ⊕ ℕ) × List Gate :=
    fun n gs acc => gs.foldl (elimStep n) acc
  let Inv : ℕ → List Bool → List Bool → List (Bool ⊕ ℕ) × List Gate → Prop := fun n y w acc =>
    acc.1.length = w.length ∧ ∀ i : ℕ,
      svalid (n + acc.2.length) (acc.1.getD i (Sum.inl false)) ∧
      sval (wiresFrom acc.2 y) (acc.1.getD i (Sum.inl false)) = w.getD i false
  let fF : (Fin 9 → Bool) → Bool := fun x =>
    x 0 && x 1 || x 1 && x 2 || x 2 && x 3 || x 3 && x 4 || x 4 && x 0 || x 0 && x 5 ||
      x 1 && x 6 || x 2 && x 7 || x 3 && x 8 || x 5 && x 7 || x 6 && x 8 || x 8 && x 5
  let inp : (Fin 9 → Bool) → List Bool := fun x => List.ofFn x ++ [!x 0, GateOp.not.eval []]
  let f2496 : (Fin 8 → Bool) → Bool := fun x2 =>
    [((0 : Fin (8 : ℕ)), (1 : Fin (8 : ℕ))), ((0 : Fin (8 : ℕ)), (5 : Fin (8 : ℕ))),
      ((1 : Fin (8 : ℕ)), (2 : Fin (8 : ℕ))), ((1 : Fin (8 : ℕ)), (6 : Fin (8 : ℕ))),
      ((2 : Fin (8 : ℕ)), (3 : Fin (8 : ℕ))), ((2 : Fin (8 : ℕ)), (7 : Fin (8 : ℕ))),
      ((4 : Fin (8 : ℕ)), (6 : Fin (8 : ℕ))), ((4 : Fin (8 : ℕ)), (7 : Fin (8 : ℕ))),
      ((5 : Fin (8 : ℕ)), (7 : Fin (8 : ℕ)))].any
      fun (x3 : Fin (8 : ℕ) × Fin (8 : ℕ)) => x2 x3.1 && x2 x3.2
  let g2537 : (Fin 9 → Bool) → Bool := fun x2 =>
    x2 0 && x2 1 || x2 1 && x2 2 || x2 2 && x2 3 || x2 0 && x2 5 || x2 1 && x2 6 ||
      x2 2 && x2 7 || x2 3 && x2 8 || x2 5 && x2 7 || x2 6 && x2 8 || x2 8 && x2 5
  let xA : (Fin 9 → Bool) → Fin 9 → Bool := fun y =>
    ![y 0, y 1, y 2, y 3, false, y 5, y 6, y 7, y 8]
  let xB : (Fin 8 → Bool) → Fin 9 → Bool := fun z =>
    ![false, z 0, z 1, z 2, z 3, z 4, z 5, z 6, z 7]
  let initA : List (Bool ⊕ ℕ) := [Sum.inr 0, Sum.inr 1, Sum.inr 2, Sum.inr 3, Sum.inl false,
    Sum.inr 5, Sum.inr 6, Sum.inr 7, Sum.inr 8, Sum.inl false, Sum.inl false]
  let initB : List (Bool ⊕ ℕ) := [Sum.inl false, Sum.inr 0, Sum.inr 1, Sum.inr 2, Sum.inr 3,
    Sum.inr 4, Sum.inr 5, Sum.inr 6, Sum.inr 7, Sum.inl true, Sum.inl true]
  let vZ : Fin 9 → Bool := ![false, false, false, false, false, false, false, false, false]
  let v16 : Fin 9 → Bool := ![false, true, false, false, false, false, true, false, false]
  let ve1 : Fin 9 → Bool := ![false, true, false, false, false, false, false, false, false]
  let ve01 : Fin 9 → Bool := ![true, true, false, false, false, false, false, false, false]
  let ve0 : Fin 9 → Bool := ![true, false, false, false, false, false, false, false, false]
  let ve04 : Fin 9 → Bool := ![true, false, false, false, true, false, false, false, false]
  have simplify_ok : ∀ (op : GateOp) (m : ℕ) (ins : List (Bool ⊕ ℕ)),
      ∀ g ∈ (simplify op m ins).1, Ok g := by
    intro op m ins g hg
    clear h2496 h2537 hSingle
    cases op <;> simp only [simplify] at hg
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨c, l⟩⟩⟩ <;> (try cases a) <;> (try cases b) <;>
        simp [simpAnd] at hg <;> (subst hg; simp [Ok])
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨c, l⟩⟩⟩ <;> (try cases a) <;> (try cases b) <;>
        simp [simpOr] at hg <;> (subst hg; simp [Ok])
    · rcases ins with _ | ⟨a, l⟩ <;> (try cases a) <;>
        simp [simpNot] at hg <;> (subst hg; simp [Ok])
    · simp at hg
    · simp at hg
  have simplify_count : ∀ (op : GateOp) (m : ℕ) (ins : List (Bool ⊕ ℕ)),
      (op = GateOp.and ∨ op = GateOp.or ∨ op = GateOp.not) → ins.length ≤ 2 →
      (op = GateOp.not → ins.length ≤ 1) → (∃ c, Sum.inl c ∈ ins) →
      (simplify op m ins).1 = none := by
    intro op m ins hop hlen hnot hc
    clear h2496 h2537 hSingle simplify_ok
    obtain ⟨c, hc⟩ := hc
    rcases hop with rfl | rfl | rfl
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨d, l⟩⟩⟩ <;> (try cases a) <;> (try cases b) <;>
        simp_all [simplify, simpAnd]
    · rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨d, l⟩⟩⟩ <;> (try cases a) <;> (try cases b) <;>
        simp_all [simplify, simpOr]
    · have := hnot rfl
      rcases ins with _ | ⟨a, _ | ⟨b, l⟩⟩ <;> (try cases a) <;> simp_all [simplify, simpNot]
  have simplify_sound : ∀ (op : GateOp), (op = GateOp.and ∨ op = GateOp.or ∨ op = GateOp.not) →
      ∀ (w : List Bool) (ins : List (Bool ⊕ ℕ)), ins.length ≤ 2 →
      (∀ s ∈ ins, svalid w.length s) →
      svalid (w.length + (simplify op w.length ins).1.toList.length) (simplify op w.length ins).2 ∧
      sval (wiresFrom (simplify op w.length ins).1.toList w) (simplify op w.length ins).2
        = op.eval (ins.map (sval w)) := by
    intro op hop w ins hlen hv
    clear h2496 h2537 hSingle simplify_ok simplify_count
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
  have simplify_const : ∀ (op : GateOp) (m : ℕ) (ins : List (Bool ⊕ ℕ)),
      (∀ s ∈ ins, ∃ c, s = Sum.inl c) → ∃ c, (simplify op m ins).2 = Sum.inl c := by
    intro op m ins h
    clear h2496 h2537 hSingle simplify_ok simplify_count simplify_sound
    have hn : ∀ j, Sum.inr j ∉ ins := by
      intro j hj
      obtain ⟨c, hc⟩ := h _ hj
      cases hc
    cases op <;> rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨d, l⟩⟩⟩ <;> (try cases a) <;>
      (try cases b) <;> simp_all [simplify, simpAnd, simpOr, simpNot]
  have simplify_or_true : ∀ (m : ℕ) (ins : List (Bool ⊕ ℕ)),
      ins.length ≤ 2 → Sum.inl true ∈ ins → ∃ c, (simplify GateOp.or m ins).2 = Sum.inl c := by
    intro m ins hlen hmem
    clear h2496 h2537 hSingle simplify_ok simplify_count simplify_sound simplify_const
    rcases ins with _ | ⟨a, _ | ⟨b, _ | ⟨d, l⟩⟩⟩
    · simp at hmem
    · cases a <;> simp_all [simplify, simpOr]
    · cases a <;> cases b <;> (try rename_i c e; cases c) <;> (try cases e) <;>
        simp_all [simplify, simpOr]
    · simp at hlen
  have wiresFrom_append : ∀ (gs gs' : List Gate) (w : List Bool),
      wiresFrom (gs ++ gs') w = wiresFrom gs' (wiresFrom gs w) := by
    intro gs gs' w
    simp [wiresFrom, List.foldl_append]
  have wiresFrom_prefix : ∀ (gs : List Gate) (w : List Bool),
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
  have length_wiresFrom : ∀ (gs : List Gate) (w : List Bool),
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
  have normGate_eval : ∀ (g : Gate) (F : ℕ → Bool),
      (normGate g).op.eval ((normGate g).inputs.map F) = g.op.eval (g.inputs.map F) := by
    intro g F
    obtain ⟨op, inputs⟩ := g
    cases op <;> simp only [normGate]
    cases inputs <;> simp [evalNot]
  have normGate_nok : ∀ g : Gate, Ok g → NOk (normGate g) := by
    intro g h
    obtain ⟨op, inputs⟩ := g
    obtain ⟨hop, hlen⟩ := h
    rcases hop with h | h | h
    · have : op = GateOp.and := h
      subst this; exact ⟨⟨Or.inl rfl, hlen⟩, by simp [normGate]⟩
    · have : op = GateOp.or := h
      subst this; exact ⟨⟨Or.inr (Or.inl rfl), hlen⟩, by simp [normGate]⟩
    · have : op = GateOp.not := h
      subst this
      refine ⟨⟨Or.inr (Or.inr rfl), ?_⟩, fun _ => ?_⟩ <;> simp [normGate] <;> omega
  have wiresFrom_norm : ∀ (gs : List Gate) (w : List Bool),
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
  have elim_getD : ∀ (n k : ℕ) (d : Bool ⊕ ℕ) (gs : List Gate)
      (acc : List (Bool ⊕ ℕ) × List Gate),
      k < acc.1.length → (elim n gs acc).1.getD k d = acc.1.getD k d := by
    intro n k d gs
    induction gs with
    | nil => intro acc _; rfl
    | cons g gs ih =>
      intro acc hk
      have h3 : elim n (g :: gs) acc = elim n gs (elimStep n acc g) := rfl
      rw [h3, ih (elimStep n acc g) (by simp [elimStep]; omega)]
      exact getD_snoc_ne _ _ _ _ (by omega)
  have toList_length_le : ∀ (o : Option Gate), o.toList.length ≤ 1 := by
    intro o
    cases o <;> simp
  have elim_ok : ∀ (n : ℕ) (gs : List Gate) (acc : List (Bool ⊕ ℕ) × List Gate),
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
  have inv_elim : ∀ (n : ℕ) (y : List Bool), y.length = n → ∀ (gs : List Gate)
      (w : List Bool) (acc : List (Bool ⊕ ℕ) × List Gate), (∀ g ∈ gs, Ok g) → Inv n y w acc →
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
  have elim_cons : ∀ (n : ℕ) (g : Gate) (gs : List Gate) (acc : List (Bool ⊕ ℕ) × List Gate),
      elim n (g :: gs) acc = elim n gs (elimStep n acc g) := fun _ _ _ _ => rfl
  have elim_append : ∀ (n : ℕ) (pre post : List Gate) (acc : List (Bool ⊕ ℕ) × List Gate),
      elim n (pre ++ post) acc = elim n post (elim n pre acc) := by
    intro n pre post acc
    simp [elim, List.foldl_append]
  have elim_fst_len : ∀ (n : ℕ) (gs : List Gate) (acc : List (Bool ⊕ ℕ) × List Gate),
      (elim n gs acc).1.length = acc.1.length + gs.length := by
    intro n gs
    induction gs with
    | nil => intro acc; rfl
    | cons g gs ih =>
      intro acc
      rw [elim_cons, ih]
      simp only [elimStep, List.length_append, List.length_cons, List.length_nil]
      omega
  have elimStep_none : ∀ (n : ℕ) (acc : List (Bool ⊕ ℕ) × List Gate) (g : Gate), NOk g →
      ∀ (k : ℕ), k ∈ g.inputs → ∀ (c : Bool), acc.1.getD k (Sum.inl false) = Sum.inl c →
      (elimStep n acc g).2.length = acc.2.length := by
    intro n acc g hg k hk c hc
    have hnone : (simplify g.op (n + acc.2.length)
        (g.inputs.map fun i => acc.1.getD i (Sum.inl false))).1 = none := by
      apply simplify_count
      · exact hg.1.1
      · simpa using hg.1.2
      · intro h; simpa using hg.2 h
      · exact ⟨c, List.mem_map.2 ⟨k, hk, hc⟩⟩
    show (acc.2 ++ (simplify g.op (n + acc.2.length)
      (g.inputs.map fun i => acc.1.getD i (Sum.inl false))).1.toList).length = _
    rw [hnone]; simp
  have elim_split_getD : ∀ (n : ℕ) (pre : List Gate) (g : Gate) (post : List Gate)
      (acc : List (Bool ⊕ ℕ) × List Gate) (a : ℕ) (d : Bool ⊕ ℕ),
      a ≤ acc.1.length + pre.length →
      (elim n (pre ++ g :: post) acc).1.getD a d = (elimStep n (elim n pre acc) g).1.getD a d := by
    intro n pre g post acc a d h
    rw [elim_append, elim_cons, elim_getD n a d post _ (by
      show a < ((elim n pre acc).1 ++ [_]).length
      rw [List.length_append, elim_fst_len, List.length_singleton]; omega)]
  have elim_split_getD_lt : ∀ (n : ℕ) (pre : List Gate) (g : Gate) (post : List Gate)
      (acc : List (Bool ⊕ ℕ) × List Gate) (a : ℕ) (d : Bool ⊕ ℕ),
      a < acc.1.length + pre.length →
      (elim n (pre ++ g :: post) acc).1.getD a d = (elim n pre acc).1.getD a d := by
    intro n pre g post acc a d h
    rw [elim_split_getD n pre g post acc a d (le_of_lt h)]
    show ((elim n pre acc).1 ++ [_]).getD a d = _
    exact getD_snoc_ne _ _ _ _ (by rw [elim_fst_len]; omega)
  have elim_count : ∀ (n : ℕ) (acc : List (Bool ⊕ ℕ) × List Gate) (gs : List Gate),
      (∀ g ∈ gs, NOk g) → ∀ S : Finset ℕ,
      (∀ p ∈ S, ∃ g, gs[p]? = some g ∧ ∃ a ∈ g.inputs, a < acc.1.length + p ∧
          ∃ c, (elim n gs acc).1.getD a (Sum.inl false) = Sum.inl c) →
        (elim n gs acc).2.length + S.card ≤ acc.2.length + gs.length := by
    intro n acc gs
    induction gs using List.reverseRecOn with
    | nil =>
      intro _ S hS
      have hE : S = ∅ := by
        apply Finset.eq_empty_of_forall_notMem
        intro p hp
        obtain ⟨g, hg, _⟩ := hS p hp
        simp at hg
      subst hE
      simp [elim]
    | append_singleton gs g ih =>
      intro hok S hS
      have hstep : elim n (gs ++ [g]) acc = elimStep n (elim n gs acc) g := by
        rw [elim_append]; rfl
      have hpre : ∀ (a : ℕ) (d : Bool ⊕ ℕ), a < acc.1.length + gs.length →
          (elim n (gs ++ [g]) acc).1.getD a d = (elim n gs acc).1.getD a d :=
        fun a d h => elim_split_getD_lt n gs g [] acc a d h
      have hok' : ∀ g' ∈ gs, NOk g' := fun g' h => hok g' (List.mem_append_left _ h)
      have ih' := ih hok' (S.erase gs.length) (by
        intro p hp
        obtain ⟨hne, hpS⟩ := Finset.mem_erase.1 hp
        obtain ⟨g', hg', a, ha, hlt, c, hc⟩ := hS p hpS
        have hpl : p < gs.length := by
          obtain ⟨h1, _⟩ := List.getElem?_eq_some_iff.1 hg'
          rw [List.length_append, List.length_singleton] at h1
          omega
        rw [List.getElem?_append_left hpl] at hg'
        rw [hpre a _ (by omega)] at hc
        exact ⟨g', hg', a, ha, hlt, c, hc⟩)
      have hgl : (gs ++ [g]).length = gs.length + 1 := by simp
      rw [hstep, hgl]
      by_cases hin : gs.length ∈ S
      · obtain ⟨g', hg', a, ha, hlt, c, hc⟩ := hS _ hin
        have hgg : g' = g := by
          rw [List.getElem?_concat_length] at hg'
          exact (Option.some.inj hg').symm
        subst hgg
        rw [hpre a _ hlt] at hc
        have h2 := elimStep_none n (elim n gs acc) g' (hok g' (by simp)) a ha c hc
        have hcard := Finset.card_erase_of_mem hin
        have hpos : 1 ≤ S.card := Finset.card_pos.2 ⟨_, hin⟩
        omega
      · have h2 : (elimStep n (elim n gs acc) g).2.length ≤ (elim n gs acc).2.length + 1 := by
          simp only [elimStep, List.length_append]
          have := toList_length_le (simplify g.op (n + (elim n gs acc).2.length)
            (g.inputs.map fun i => (elim n gs acc).1.getD i (Sum.inl false))).1
          omega
        rw [Finset.erase_eq_of_notMem hin] at ih'
        omega
  have agree_wires : ∀ (good : ℕ → Prop) (gs : List Gate) (w w' : List Bool),
      w.length = w'.length →
      (∀ i, good i → w.getD i false = w'.getD i false) →
      (∀ q (hq : q < gs.length), good (w.length + q) →
        ∀ i ∈ gs[q].inputs, good i ∨ w.length + q ≤ i) →
      ∀ i, good i → (wiresFrom gs w).getD i false = (wiresFrom gs w').getD i false := by
    intro good gs
    induction gs with
    | nil => intro w w' _ h _; exact h
    | cons g gs ih =>
      intro w w' hl h hg
      have e1 : wiresFrom (g :: gs) w
          = wiresFrom gs (w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]) := rfl
      have e2 : wiresFrom (g :: gs) w'
          = wiresFrom gs (w' ++ [g.op.eval (g.inputs.map fun i => w'.getD i false)]) := rfl
      rw [e1, e2]
      apply ih
      · simp [hl]
      · intro j hj
        by_cases hjl : j = w.length
        · subst hjl
          have hv : g.op.eval (g.inputs.map fun i => w.getD i false)
              = g.op.eval (g.inputs.map fun i => w'.getD i false) := by
            congr 1
            apply List.map_congr_left
            intro k hk
            rcases hg 0 (by simp) (by simpa using hj) k (by simpa using hk) with hk' | hk'
            · exact h k hk'
            · rw [List.getD_eq_default _ _ (by omega), List.getD_eq_default _ _ (by omega)]
          rw [getD_snoc_eq, hv, hl, getD_snoc_eq]
        · rw [getD_snoc_ne _ _ _ _ hjl, getD_snoc_ne _ _ _ _ (by rw [← hl]; exact hjl)]
          exact h j hj
      · intro q hq hgood k hk
        have e : (w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]).length + q
            = w.length + (q + 1) := by simp; omega
        rw [e] at hgood ⊢
        exact hg (q + 1) (by simp; omega) hgood k (by simpa using hk)
  have eval_agree : ∀ (C : Circuit) (good : ℕ → Prop) (n : ℕ) (w w' : List Bool),
      w.length = n → w'.length = n →
      (∀ i, good i → w.getD i false = w'.getD i false) →
      (∀ q (hq : q < C.gates.length), good (n + q) →
        ∀ i ∈ (normGate C.gates[q]).inputs, good i ∨ n + q ≤ i) →
      good C.output → C.eval w = C.eval w' := by
    intro C good n w w' hn hn' h hg ho
    have e1 : C.eval w = (wiresFrom (C.gates.map normGate) w).getD C.output false := by
      rw [wiresFrom_norm]; rfl
    have e2 : C.eval w' = (wiresFrom (C.gates.map normGate) w').getD C.output false := by
      rw [wiresFrom_norm]; rfl
    rw [e1, e2]
    apply agree_wires good _ w w' (hn.trans hn'.symm) h _ _ ho
    intro q hq hgood i hi
    have hq' : q < C.gates.length := by simpa using hq
    rw [hn] at hgood ⊢
    exact hg q hq' hgood i (by simpa using hi)
  have elim_gate_stat : ∀ (n : ℕ) (gs : List Gate) (acc : List (Bool ⊕ ℕ) × List Gate) (p : ℕ)
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
  have two_mem : ∀ (l : List ℕ), l.length ≤ 2 → ∀ (a b : ℕ), a ∈ l → b ∈ l → a ≠ b →
      ∀ i ∈ l, i = a ∨ i = b := by
    intro l hl a b ha hb hab
    rcases l with _ | ⟨x, _ | ⟨y, _ | ⟨z, l⟩⟩⟩
    · simp at ha
    · simp at ha hb; omega
    · simp at ha hb ⊢; omega
    · simp at hl
  have expand8 : ∀ z : Fin 8 → Bool, z = ![z 0, z 1, z 2, z 3, z 4, z 5, z 6, z 7] := by
    intro z
    funext i
    fin_cases i <;> rfl
  have expand9 : ∀ z : Fin 9 → Bool, z = ![z 0, z 1, z 2, z 3, z 4, z 5, z 6, z 7, z 8] := by
    intro z
    funext i
    fin_cases i <;> rfl
  have keyA0 : ∀ b0 b1 b2 b3 b4 b5 b6 b7 b8 : Bool,
      fF (xA ![b0, b1, b2, b3, b4, b5, b6, b7, b8]) =
        g2537 ![b0, b1, b2, b3, b4, b5, b6, b7, b8] := by
    decide
  have keyA : ∀ y : Fin 9 → Bool, fF (xA y) = g2537 y := by
    intro y
    rw [expand9 y]
    exact keyA0 (y 0) (y 1) (y 2) (y 3) (y 4) (y 5) (y 6) (y 7) (y 8)
  have keyB0 : ∀ b0 b1 b2 b3 b4 b5 b6 b7 : Bool,
      fF (xB ![b0, b1, b2, b3, b4, b5, b6, b7]) = f2496 ![b0, b1, b2, b3, b4, b5, b6, b7] := by
    decide
  have keyB : ∀ z : Fin 8 → Bool, fF (xB z) = f2496 z := by
    intro z
    rw [expand8 z]
    exact keyB0 (z 0) (z 1) (z 2) (z 3) (z 4) (z 5) (z 6) (z 7)
  have inp_len : ∀ x : Fin 9 → Bool, (inp x).length = 11 := by
    intro x
    simp [inp]
  have pair16 : ∀ i, ¬ (i = 1 ∨ i = 6) → (inp vZ).getD i false = (inp v16).getD i false := by
    intro i hi
    by_cases h : i < 11
    · interval_cases i <;> first | (exfalso; omega) | decide
    · rw [List.getD_eq_default _ _ (by rw [inp_len]; omega),
        List.getD_eq_default _ _ (by rw [inp_len]; omega)]
  have pair0 : ∀ i, ¬ (i = 0 ∨ i = 9) → (inp ve1).getD i false = (inp ve01).getD i false := by
    intro i hi
    by_cases h : i < 11
    · interval_cases i <;> first | (exfalso; omega) | decide
    · rw [List.getD_eq_default _ _ (by rw [inp_len]; omega),
        List.getD_eq_default _ _ (by rw [inp_len]; omega)]
  have pair4 : ∀ i, ¬ (i = 4) → (inp ve0).getD i false = (inp ve04).getD i false := by
    intro i hi
    by_cases h : i < 11
    · interval_cases i <;> first | (exfalso; omega) | decide
    · rw [List.getD_eq_default _ _ (by rw [inp_len]; omega),
        List.getD_eq_default _ _ (by rw [inp_len]; omega)]
  have flip_gen : ∀ (C : Circuit), (∀ x, C.eval (inp x) = fF x) →
      ∀ (x x' : Fin 9 → Bool) (D : ℕ → Prop),
      (∀ i, ¬ D i → (inp x).getD i false = (inp x').getD i false) → fF x ≠ fF x' →
      ∀ (good : ℕ → Prop), (∀ i, good i → ¬ D i) →
      (∀ q (hq : q < C.gates.length), good (11 + q) →
        ∀ i ∈ (normGate C.gates[q]).inputs, good i ∨ 11 + q ≤ i) →
      good C.output → False := by
    intro C hall x x' D hpair hF good hG hg ho
    have h := eval_agree C good 11 (inp x) (inp x') (inp_len x) (inp_len x')
      (fun i hi => hpair i (hG i hi)) hg ho
    rw [hall, hall] at h
    exact hF h
  intro C hfan hsize
  by_contra hcon
  have hall : ∀ x, C.eval (inp x) = fF x := by
    intro x
    by_contra hx
    exact hcon ⟨x, by simpa [inp, List.append_assoc] using hx⟩
  have H2496 : ∀ C' : Circuit, FanInTwo C' → C'.size ≤ 11 →
      (∀ z : Fin 8 → Bool, C'.eval (List.ofFn z) = f2496 z) → False :=
    fun Cp hf hs he => by have := h2496 11 ⟨Cp, hf, hs, he⟩; omega
  have H2537 : ∀ C' : Circuit, FanInTwo C' → C'.size ≤ 12 →
      (∀ y : Fin 9 → Bool, C'.eval (List.ofFn y) = g2537 y) → False :=
    fun Cp hf hs he => by have := h2537 12 ⟨Cp, hf, hs, he⟩; omega
  have outc := flip_gen C hall vZ v16 (fun i => i = 1 ∨ i = 6) pair16 (by decide)
  have flip0 := flip_gen C hall ve1 ve01 (fun i => i = 0 ∨ i = 9) pair0 (by decide)
  have flip4 := flip_gen C hall ve0 ve04 (fun i => i = 4) pair4 (by decide)
  let gs := C.gates.map normGate
  have normOk : ∀ g ∈ gs, NOk g := by
    intro g hg
    obtain ⟨g0, hg0, rfl⟩ := List.mem_map.1 hg
    exact normGate_nok _ (hfan _ hg0)
  have hgget : ∀ q (hq : q < C.gates.length), gs[q]? = some (normGate C.gates[q]) := by
    intro q hq
    simp [gs, hq]
  have hlen2 : ∀ q (hq : q < C.gates.length), (normGate C.gates[q]).inputs.length ≤ 2 :=
    fun q hq => (normGate_nok _ (hfan _ (List.getElem_mem hq))).1.2
  by_cases hB : ∃ q, ∃ hq : q < C.gates.length,
      9 ∈ (normGate C.gates[q]).inputs ∨ 10 ∈ (normGate C.gates[q]).inputs
  · obtain ⟨p, hp, hp910⟩ := hB
    let acc := elim 8 gs (initB, [])
    have inv (z : Fin 8 → Bool) : Inv 8 (List.ofFn z) (wiresFrom gs (inp (xB z))) acc := by
      apply inv_elim _ _ (by simp) _ _ _ (fun g hg => (normOk g hg).1)
      refine ⟨by simp [initB, inp], ?_⟩
      intro k
      by_cases hk : k < 11
      · interval_cases k <;> simp [initB, inp, xB, svalid, sval, wiresFrom, evalNot]
      · rw [List.getD_eq_default _ _ (by simp [initB]; omega),
          List.getD_eq_default _ _ (by rw [inp_len]; omega)]
        exact ⟨trivial, rfl⟩
    have value (z : Fin 8 → Bool) :
        sval (wiresFrom acc.2 (List.ofFn z)) (acc.1.getD C.output (Sum.inl false)) = f2496 z := by
      rw [((inv z).2 C.output).2, show gs = C.gates.map normGate from rfl, wiresFrom_norm,
        ← keyB, ← hall]
      rfl
    have constOutFalse : ∀ c, acc.1.getD C.output (Sum.inl false) = Sum.inl c → False := by
      intro c ho
      have h1 := value ![false, false, false, false, false, false, false, false]
      have h2 := value ![true, true, false, false, false, false, false, false]
      rw [ho] at h1 h2
      simp only [sval, Sum.elim_inl] at h1 h2
      rw [h1] at h2
      exact absurd h2 (by decide)
    have constIn : ∀ a, (a = 0 ∨ a = 9 ∨ a = 10) →
        ∃ c, acc.1.getD a (Sum.inl false) = Sum.inl c := by
      rintro a (rfl | rfl | rfl) <;>
        rw [show acc = elim 8 gs (initB, []) from rfl,
          elim_getD _ _ _ _ _ (by simp [initB])] <;> exact ⟨_, rfl⟩
    have memOf : ∀ q (hq : q < C.gates.length) a, a ∈ (normGate C.gates[q]).inputs →
        (a = 0 ∨ a = 9 ∨ a = 10) →
        ∃ g, gs[q]? = some g ∧ ∃ a ∈ g.inputs, a < (initB, ([] : List Gate)).1.length + q ∧
          ∃ c, acc.1.getD a (Sum.inl false) = Sum.inl c := by
      intro q hq a ha hc
      exact ⟨_, hgget q hq, a, ha, by
        rcases hc with rfl | rfl | rfl <;> simp [initB] <;> omega, constIn a hc⟩
    have key : ∃ S : Finset ℕ, 2 ≤ S.card ∧ ∀ q ∈ S, ∃ g, gs[q]? = some g ∧
        ∃ a ∈ g.inputs, a < (initB, ([] : List Gate)).1.length + q ∧
          ∃ c, acc.1.getD a (Sum.inl false) = Sum.inl c := by
      by_cases hother : ∃ q, ∃ hq : q < C.gates.length, q ≠ p ∧
          ∃ a ∈ (normGate C.gates[q]).inputs, a = 0 ∨ a = 9 ∨ a = 10
      · obtain ⟨q, hq, hqp, a, ha, hac⟩ := hother
        refine ⟨{p, q}, by rw [Finset.card_pair (Ne.symm hqp)], ?_⟩
        intro r hr
        rcases Finset.mem_insert.1 hr with rfl | hr
        · rcases hp910 with h9 | h10
          · exact memOf r hp 9 h9 (Or.inr (Or.inl rfl))
          · exact memOf r hp 10 h10 (Or.inr (Or.inr rfl))
        · rw [Finset.mem_singleton] at hr
          subst hr
          exact memOf r hq a ha hac
      · push Not at hother
        by_cases h09 : 0 ∈ (normGate C.gates[p]).inputs ∨ 9 ∈ (normGate C.gates[p]).inputs
        · by_cases hSC : 0 ∉ (normGate C.gates[p]).inputs ∧ 10 ∉ (normGate C.gates[p]).inputs ∧
              (normGate C.gates[p]).op = GateOp.and ∧ 9 ∈ (normGate C.gates[p]).inputs
          · exfalso
            obtain ⟨h0p, h10p, hopp, h9p⟩ := hSC
            let C' : Circuit := ⟨gs, C.output⟩
            have hfan' : FanInTwo C' := fun g hg => (normOk g hg).1
            have hsz' : C'.size ≤ 13 := by
              rw [sizeEq]
              simpa [C', gs, sizeEq] using hsize
            have h010' : ∀ q (hq : q < C'.gates.length),
                (0 : ℕ) ∉ C'.gates[q].inputs ∧ (10 : ℕ) ∉ C'.gates[q].inputs := by
              intro q hq
              have hqC : q < C.gates.length := by simpa [C', gs] using hq
              have hgq : C'.gates[q] = normGate C.gates[q] := by simp [C', gs]
              rw [hgq]
              by_cases hqp : q = p
              · subst hqp
                exact ⟨h0p, h10p⟩
              · exact ⟨fun h => (hother q hqC hqp 0 h).1 rfl,
                  fun h => (hother q hqC hqp 10 h).2.2 rfl⟩
            have hp' : ∃ p', ∃ hp' : p' < C'.gates.length,
                C'.gates[p'].op = GateOp.and ∧ 9 ∈ C'.gates[p'].inputs ∧
                ∀ q (hq : q < C'.gates.length), 9 ∈ C'.gates[q].inputs → q = p' := by
              refine ⟨p, by simpa [C', gs] using hp, ?_, ?_, ?_⟩
              · simpa [C', gs] using hopp
              · simpa [C', gs] using h9p
              · intro q hq hq9
                have hqC : q < C.gates.length := by simpa [C', gs] using hq
                have hgq : C'.gates[q] = normGate C.gates[q] := by simp [C', gs]
                rw [hgq] at hq9
                by_contra hqp
                exact (hother q hqC hqp 9 hq9).2.1 rfl
            obtain ⟨x, hx⟩ := hSingle C' hfan' hsz' h010' hp'
            have hev : C'.eval (inp x) = C.eval (inp x) := by
              show (wiresFrom gs (inp x)).getD C.output false = (C.wires (inp x)).getD C.output false
              rw [show gs = C.gates.map normGate from rfl, wiresFrom_norm]
              rfl
            exact hx (hev.trans (hall x))
          · have hconstp : ∃ c, acc.1.getD (11 + p) (Sum.inl false) = Sum.inl c := by
              have hpl : p < gs.length := by simp [gs]; omega
              have hst := elim_gate_stat 8 gs (initB, []) p hpl
              have hl11 : (initB, ([] : List Gate)).1.length = 11 := rfl
              rw [hl11] at hst
              rw [show acc = elim 8 gs (initB, []) from rfl, hst]
              have hgp : gs[p] = normGate C.gates[p] := by simp [gs]
              by_cases h0p : 0 ∈ (normGate C.gates[p]).inputs
              · apply simplify_const
                intro s hs
                obtain ⟨i, hi, rfl⟩ := List.mem_map.1 hs
                rw [hgp] at hi
                have hisub : i = 0 ∨ i = 9 ∨ i = 10 := by
                  rcases hp910 with h9 | h10
                  · rcases two_mem _ (hlen2 p hp) 0 9 h0p h9 (by omega) i hi with rfl | rfl <;> omega
                  · rcases two_mem _ (hlen2 p hp) 0 10 h0p h10 (by omega) i hi with rfl | rfl <;> omega
                rw [elim_getD _ _ _ _ _ (by
                  show i < initB.length
                  rcases hisub with rfl | rfl | rfl <;> simp [initB])]
                rcases hisub with rfl | rfl | rfl <;> exact ⟨_, rfl⟩
              · have h9p : 9 ∈ (normGate C.gates[p]).inputs := by
                  rcases h09 with h0 | h9
                  · exact absurd h0 h0p
                  · exact h9
                by_cases h10p : 10 ∈ (normGate C.gates[p]).inputs
                · apply simplify_const
                  intro s hs
                  obtain ⟨i, hi, rfl⟩ := List.mem_map.1 hs
                  rw [hgp] at hi
                  have hisub : i = 9 ∨ i = 10 :=
                    two_mem _ (hlen2 p hp) 9 10 h9p h10p (by omega) i hi
                  rw [elim_getD _ _ _ _ _ (by
                    show i < initB.length
                    rcases hisub with rfl | rfl <;> simp [initB])]
                  rcases hisub with rfl | rfl <;> exact ⟨_, rfl⟩
                · have hop_cases : (normGate C.gates[p]).op = GateOp.and ∨
                      (normGate C.gates[p]).op = GateOp.or ∨
                      (normGate C.gates[p]).op = GateOp.not := by
                    have h := (normOk _ (List.getElem_mem hpl)).1.1
                    rw [hgp] at h
                    simpa [Set.mem_insert_iff, Set.mem_singleton_iff] using h
                  rcases hop_cases with hop | hop | hop
                  · exact absurd ⟨h0p, h10p, hop, h9p⟩ hSC
                  · rw [hgp, hop]
                    apply simplify_or_true
                    · rw [List.length_map]
                      exact hlen2 p hp
                    · rw [List.mem_map]
                      refine ⟨9, h9p, ?_⟩
                      rw [elim_getD _ _ _ _ _ (by simp [initB])]
                      rfl
                  · apply simplify_const
                    intro s hs
                    obtain ⟨i, hi, rfl⟩ := List.mem_map.1 hs
                    rw [hgp] at hi
                    have hlen1 : (normGate C.gates[p]).inputs.length ≤ 1 := by
                      have h := (normOk _ (List.getElem_mem hpl)).2
                      rw [hgp] at h
                      exact h hop
                    have hi9 : i = 9 := by
                      rcases hin : (normGate C.gates[p]).inputs with _ | ⟨a, _ | ⟨b, l⟩⟩
                      · rw [hin] at hi; simp at hi
                      · rw [hin] at hi h9p; simp only [List.mem_singleton] at hi h9p; omega
                      · rw [hin] at hlen1; simp at hlen1
                    subst hi9
                    rw [elim_getD _ _ _ _ _ (by simp [initB])]
                    exact ⟨true, rfl⟩
            have hsucc : ∃ q, ∃ hq : q < C.gates.length, p < q ∧
                11 + p ∈ (normGate C.gates[q]).inputs := by
              by_contra hn
              push Not at hn
              by_cases ho1 : C.output = 0 ∨ C.output = 9
              · exact outc (fun i => i = 0 ∨ i = 9) (by intro i hi; omega)
                  (by intro q hq h; omega) ho1
              · by_cases ho2 : C.output = 11 + p
                · obtain ⟨c, hc⟩ := hconstp
                  exact constOutFalse c (ho2 ▸ hc)
                · refine flip0 (fun i => i ≠ 0 ∧ i ≠ 9 ∧ i ≠ 11 + p)
                    (fun i hi h => by
                      rcases h with rfl | rfl
                      · exact hi.1 rfl
                      · exact hi.2.1 rfl) ?_
                    (by
                      refine ⟨?_, ?_, ho2⟩ <;> intro heq <;> exact ho1 (by omega))
                  intro q hq hgood i hi
                  have hqp : q ≠ p := by omega
                  obtain ⟨h0, h9, _⟩ := hother q hq hqp i hi
                  by_cases hip : i = 11 + p
                  · right
                    subst hip
                    rcases lt_or_gt_of_ne hqp with hlt | hgt
                    · omega
                    · exact absurd hi (hn q hq hgt)
                  · left; exact ⟨h0, h9, hip⟩
            obtain ⟨q, hq, hpq, hqr⟩ := hsucc
            refine ⟨{p, q}, by rw [Finset.card_pair (by omega)], ?_⟩
            intro r hr
            rcases Finset.mem_insert.1 hr with rfl | hr
            · rcases hp910 with h9 | h10
              · exact memOf r hp 9 h9 (Or.inr (Or.inl rfl))
              · exact memOf r hp 10 h10 (Or.inr (Or.inr rfl))
            · rw [Finset.mem_singleton] at hr
              subst hr
              exact ⟨_, hgget r hq, 11 + p, hqr, by simp [initB]; omega, hconstp⟩
        · exfalso
          by_cases ho1 : C.output = 0 ∨ C.output = 9
          · exact outc (fun i => i = 0 ∨ i = 9) (by intro i hi; omega)
              (by intro q hq h; omega) ho1
          · refine flip0 (fun i => i ≠ 0 ∧ i ≠ 9)
              (fun i hi h => by
                rcases h with rfl | rfl
                · exact hi.1 rfl
                · exact hi.2 rfl) ?_
              (by constructor <;> intro heq <;> exact ho1 (by omega))
            intro q hq _ i hi
            left
            by_cases hqp : q = p
            · subst hqp
              exact ⟨fun h => h09 (Or.inl (h ▸ hi)), fun h => h09 (Or.inr (h ▸ hi))⟩
            · exact ⟨(hother q hq hqp i hi).1, (hother q hq hqp i hi).2.1⟩
    obtain ⟨S, hS2, hS⟩ := key
    have count := elim_count 8 (initB, []) gs normOk S hS
    have hsz : acc.2.length ≤ 11 := by
      have : gs.length = C.size := by rw [sizeEq]; simp [gs]
      simp only [List.length_nil] at count
      change acc.2.length + S.card ≤ 0 + gs.length at count
      omega
    cases ho : acc.1.getD C.output (Sum.inl false) with
    | inl c => exact constOutFalse c ho
    | inr k =>
      apply H2496 ⟨acc.2, k⟩ (elim_ok 8 gs _ (by simp)) hsz
      intro z
      have h := value z
      rw [ho] at h
      exact h
  · push_neg at hB
    have hout : C.output ≠ 9 ∧ C.output ≠ 10 := by
      by_contra hn
      refine outc (fun i => i = 9 ∨ i = 10) (by intro i hi; omega) (by intro q hq h; omega) ?_
      omega
    have hfree : ∀ x, C.eval (List.ofFn x ++ [false, false]) = C.eval (inp x) := by
      intro x
      apply eval_agree C (fun i => i ≠ 9 ∧ i ≠ 10) 11 _ _ (by simp) (inp_len x) _ _ hout
      · intro i hi
        by_cases h9 : i < 9
        · simp only [inp]
          rw [List.getD_append _ _ _ _ (by simp; omega),
            List.getD_append _ _ _ _ (by simp; omega)]
        · rw [List.getD_eq_default _ _ (by simp; omega),
            List.getD_eq_default _ _ (by rw [inp_len]; omega)]
      · intro q hq _ i hi
        left
        exact ⟨fun h => (hB q hq).1 (h ▸ hi), fun h => (hB q hq).2 (h ▸ hi)⟩
    have hread4 : ∃ q, ∃ hq : q < C.gates.length, 4 ∈ (normGate C.gates[q]).inputs := by
      by_contra hn
      push_neg at hn
      by_cases ho : C.output = 4
      · exact outc (fun i => i = 4) (by intro i hi; omega) (by intro q hq h; omega) ho
      · refine flip4 (fun i => i ≠ 4) (fun i hi => hi) ?_ ho
        intro q hq _ i hi
        left
        rintro rfl
        exact hn q hq hi
    obtain ⟨p, hp, hp4⟩ := hread4
    let acc := elim 9 gs (initA, [])
    have hS : ∀ q ∈ ({p} : Finset ℕ), ∃ g, gs[q]? = some g ∧
        ∃ a ∈ g.inputs, a < (initA, ([] : List Gate)).1.length + q ∧
          ∃ c, acc.1.getD a (Sum.inl false) = Sum.inl c := by
      intro q hq
      rw [Finset.mem_singleton] at hq
      subst hq
      refine ⟨_, hgget q hp, 4, hp4, by simp [initA] <;> omega, false, ?_⟩
      rw [show acc = elim 9 gs (initA, []) from rfl, elim_getD _ _ _ _ _ (by simp [initA])]
      rfl
    have count := elim_count 9 (initA, []) gs normOk {p} hS
    have hsz : acc.2.length ≤ 12 := by
      have : gs.length = C.size := by rw [sizeEq]; simp [gs]
      simp only [List.length_nil, Finset.card_singleton] at count
      change acc.2.length + 1 ≤ 0 + gs.length at count
      omega
    have inv (y : Fin 9 → Bool) :
        Inv 9 (List.ofFn y) (wiresFrom gs (List.ofFn (xA y) ++ [false, false])) acc := by
      apply inv_elim _ _ (by simp) _ _ _ (fun g hg => (normOk g hg).1)
      refine ⟨by simp [initA], ?_⟩
      intro k
      by_cases hk : k < 11
      · interval_cases k <;> simp [initA, xA, svalid, sval, wiresFrom]
      · rw [List.getD_eq_default _ _ (by simp [initA]; omega),
          List.getD_eq_default _ _ (by simp; omega)]
        exact ⟨trivial, rfl⟩
    have value (y : Fin 9 → Bool) :
        sval (wiresFrom acc.2 (List.ofFn y)) (acc.1.getD C.output (Sum.inl false)) = g2537 y := by
      rw [((inv y).2 C.output).2, show gs = C.gates.map normGate from rfl, wiresFrom_norm,
        ← keyA, ← hall, ← hfree]
      rfl
    cases ho : acc.1.getD C.output (Sum.inl false) with
    | inl c =>
      have h1 := value ![false, false, false, false, false, false, false, false, false]
      have h2 := value ![true, true, false, false, false, false, false, false, false]
      rw [ho] at h1 h2
      simp only [sval, Sum.elim_inl] at h1 h2
      rw [h1] at h2
      exact absurd h2 (by decide)
    | inr k =>
      apply H2537 ⟨acc.2, k⟩ (elim_ok 9 gs _ (by simp)) hsz
      intro y
      have h := value y
      rw [ho] at h
      exact h
