import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

theorem PEqualNP.Outside.R_meta_2708_1
    (maximizeWitness : ∀ (C : Circuit) (a b : ℕ) (P : (Fin 14 → Bool) → Prop),
      Monotone2 C →
      let V := fun (w : ℕ) (x : Fin 14 → Bool) => (C.wires (List.ofFn x)).getD w false
      (∀ x, P x → V a x = false ∨ V b x = false) →
      (∃ x, P x ∧ V b x = true) →
      ∃ x, Maximal P x ∧ V a x = false ∧ V b x = true)
    (boundaryBound : ∀ (C : Circuit) (a b : ℕ), Monotone2 C →
      a < 14 + C.size → b < 14 + C.size →
      let E : List (ℕ × ℕ) :=
        [(0, 7), (0, 8), (0, 10), (1, 7), (1, 9), (1, 13), (2, 8), (2, 12),
         (2, 13), (3, 7), (3, 11), (3, 12), (4, 10), (4, 11), (4, 13),
         (5, 9), (5, 10), (5, 12), (6, 8), (6, 9), (6, 11)]
      let F := fun x : Fin 14 → Bool =>
        ∃ u v : Fin 14, (u.val, v.val) ∈ E ∧ x u = true ∧ x v = true
      let P := Maximal fun x => ¬ F x
      let V := fun (w : ℕ) (x : Fin 14 → Bool) => (C.wires (List.ofFn x)).getD w false
      (∀ u v : Fin 14, (u.val, v.val) ∈ E →
        let x : Fin 14 → Bool := fun i => decide (i = u ∨ i = v)
        V a x = true ∧ V b x = true) →
      (∀ x, P x → V a x = false ∨ V b x = false) →
      (∃ x, P x ∧ V a x = false ∧ V b x = true) →
      (∃ x, P x ∧ V b x = false ∧ V a x = true) →
      26 ≤ C.size) :
    ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit) (x2 x3 : ℕ),   PEqualNP.MetaComplexity.Monotone2 x1 →     x2 < (14 : ℕ) + x1.size →       x3 < (14 : ℕ) + x1.size →         have x7 : List (ℕ × ℕ) := [((0 : ℕ), (7 : ℕ)), ((0 : ℕ), (8 : ℕ)), ((0 : ℕ), (10 : ℕ)), ((1 : ℕ), (7 : ℕ)), ((1 : ℕ), (9 : ℕ)), ((1 : ℕ), (13 : ℕ)), ((2 : ℕ), (8 : ℕ)), ((2 : ℕ), (12 : ℕ)), ((2 : ℕ), (13 : ℕ)), ((3 : ℕ), (7 : ℕ)), ((3 : ℕ), (11 : ℕ)), ((3 : ℕ), (12 : ℕ)), ((4 : ℕ), (10 : ℕ)), ((4 : ℕ), (11 : ℕ)), ((4 : ℕ), (13 : ℕ)), ((5 : ℕ), (9 : ℕ)), ((5 : ℕ), (10 : ℕ)), ((5 : ℕ), (12 : ℕ)), ((6 : ℕ), (8 : ℕ)), ((6 : ℕ), (9 : ℕ)), ((6 : ℕ), (11 : ℕ))];         have x8 : (Fin (14 : ℕ) → Bool) → Prop := fun (x8 : Fin (14 : ℕ) → Bool) => ∃ (x9 : Fin (14 : ℕ)) (x10 : Fin (14 : ℕ)), (↑x9, ↑x10) ∈ x7 ∧ x8 x9 = Bool.true ∧ x8 x10 = Bool.true;         have x9 : ℕ → (Fin (14 : ℕ) → Bool) → Bool := fun (x9 : ℕ) (x10 : Fin (14 : ℕ) → Bool) => (x1.wires (List.ofFn x10)).getD x9 Bool.false;         (∀ (x10 : Fin (14 : ℕ) → Bool), x8 x10 → x9 x2 x10 = Bool.true ∧ x9 x3 x10 = Bool.true) → (∀ (x11 : Fin (14 : ℕ) → Bool), ¬x8 x11 → x9 x2 x11 = Bool.false ∨ x9 x3 x11 = Bool.false) → (∃ (x12 : Fin (14 : ℕ) → Bool), ¬x8 x12 ∧ x9 x2 x12 = Bool.false ∧ x9 x3 x12 = Bool.true) → (∃ (x13 : Fin (14 : ℕ) → Bool), ¬x8 x13 ∧ x9 x3 x13 = Bool.false ∧ x9 x2 x13 = Bool.true) → (26 : ℕ) ≤ x1.size := by
  intro C a b hm ha hb
  dsimp only
  intro hpos hneg hab hba
  let E : List (ℕ × ℕ) :=
    [(0, 7), (0, 8), (0, 10), (1, 7), (1, 9), (1, 13), (2, 8), (2, 12),
     (2, 13), (3, 7), (3, 11), (3, 12), (4, 10), (4, 11), (4, 13),
     (5, 9), (5, 10), (5, 12), (6, 8), (6, 9), (6, 11)]
  let F := fun x : Fin 14 → Bool =>
    ∃ u v : Fin 14, (u.val, v.val) ∈ E ∧ x u = true ∧ x v = true
  have hAB := maximizeWitness C a b (fun x => ¬ F x) hm hneg (by
    obtain ⟨x, hx, _, hv⟩ := hab
    exact ⟨x, hx, hv⟩)
  have hBA := maximizeWitness C b a (fun x => ¬ F x) hm
    (fun x hx => (hneg x hx).symm) (by
      obtain ⟨x, hx, _, hv⟩ := hba
      exact ⟨x, hx, hv⟩)
  refine boundaryBound C a b hm ha hb ?_ ?_ hAB hBA
  · intro u v huv
    exact hpos _ ⟨u, v, huv, by simp, by simp⟩
  · intro x hx
    exact hneg x hx.1
