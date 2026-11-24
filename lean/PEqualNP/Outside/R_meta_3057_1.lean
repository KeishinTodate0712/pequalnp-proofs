import Mathlib
import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

set_option maxHeartbeats 2000000 in
theorem PEqualNP.Outside.R_meta_3057_1
    (h1 : ∀ (C : Circuit), FanInTwo C → C.size ≤ 13 → ∃ (x : Fin (9 : ℕ) → Bool), C.eval (List.ofFn x ++ [!x (0 : Fin (9 : ℕ)), true]) ≠ [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))), ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))), ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))].any (fun (e : Fin (9 : ℕ) × Fin (9 : ℕ)) => x e.1 && x e.2))
    (h2 : ∀ (C : Circuit), FanInTwo C → C.size ≤ 13 → ∃ (x : Fin (9 : ℕ) → Bool), C.eval (List.ofFn x ++ [!x (0 : Fin (9 : ℕ)), !x (1 : Fin (9 : ℕ))]) ≠ [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))), ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))), ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))].any (fun (e : Fin (9 : ℕ) × Fin (9 : ℕ)) => x e.1 && x e.2))
    (h3 : ∀ (k : Fin (9 : ℕ)), k ∈ [(2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))] → ∀ (C : Circuit), FanInTwo C → C.size ≤ 13 → ∃ (x : Fin (9 : ℕ) → Bool), C.eval (List.ofFn x ++ [!x (0 : Fin (9 : ℕ)), !x k]) ≠ [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))), ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))), ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))].any (fun (e : Fin (9 : ℕ) × Fin (9 : ℕ)) => x e.1 && x e.2))
    (h4 : ∀ (k : Fin (9 : ℕ)), k ∈ [(4 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))] → ∀ (C : Circuit), FanInTwo C → C.size ≤ 13 → ∃ (x : Fin (9 : ℕ) → Bool), C.eval (List.ofFn x ++ [!x (0 : Fin (9 : ℕ)), !x k]) ≠ [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))), ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))), ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))].any (fun (e : Fin (9 : ℕ) × Fin (9 : ℕ)) => x e.1 && x e.2)) :
    ∀ (x1 : List ℕ),   x1.length ≤ (2 : ℕ) →     ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),       PEqualNP.MetaComplexity.FanInTwo x3 →         x3.size ≤ (13 : ℕ) →           ∃ (x6 : Fin (512 : ℕ)),             have x7 : Fin (9 : ℕ) → Bool := fun (x7 : Fin (9 : ℕ)) => Decidable.decide (↑x6 / (2 : ℕ) ^ (↑x7 % (9 : ℕ)) % (2 : ℕ) = (1 : ℕ));             have x8 : List Bool := List.ofFn x7 ++ [!x7 (0 : Fin (9 : ℕ))];             x3.eval (x8 ++ [PEqualNP.CircuitLowerBounds.GateOp.not.eval (List.map (fun (x9 : ℕ) => x8.getD x9 Bool.false) x1)]) ≠ [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))), ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))), ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))].any fun (x9 : Fin (9 : ℕ) × Fin (9 : ℕ)) => x7 x9.1 && x7 x9.2 := by
  intro x1 _ x3 hfan hsize
  let F (b : Fin (9 : ℕ) → Bool) : Bool :=
    [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))), ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))), ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))].any
      (fun (e : Fin (9 : ℕ) × Fin (9 : ℕ)) => b e.1 && b e.2)
  let σ (i : Fin (9 : ℕ)) : Fin (9 : ℕ) :=
    if i = 1 then 5 else if i = 5 then 1 else if i = 2 then 8 else if i = 8 then 2 else if i = 6 then 7 else if i = 7 then 6 else i
  have Fσ : ∀ (b : Fin (9 : ℕ) → Bool), F (fun i => b (σ i)) = F b := by
    intro b
    apply Bool.eq_iff_iff.mpr
    simp only [F, List.any_cons, List.any_nil, Bool.or_false, Bool.or_eq_true, Bool.and_eq_true, σ]
    norm_num
    constructor
    · rintro (h | h | h | h | h | h | h | h | h | h | h | h) <;> simp [h]
    · rintro (h | h | h | h | h | h | h | h | h | h | h | h) <;> simp [h]
  have bits : ∀ (b : Fin (9 : ℕ) → Bool), ∃ (x6 : Fin (512 : ℕ)),
      (fun (j : Fin (9 : ℕ)) => Decidable.decide (↑x6 / (2 : ℕ) ^ (↑j % (9 : ℕ)) % (2 : ℕ) = (1 : ℕ))) = b := by
    intro b
    let c (i : Fin (9 : ℕ)) : ℕ := if b i = true then 1 else 0
    have hc : ∀ i, c i ≤ 1 := fun i => by dsimp only [c]; split_ifs <;> omega
    have hcb : ∀ i, (c i = 1 ↔ b i = true) := fun i => by dsimp only [c]; split_ifs with h <;> simp [h]
    let n : ℕ := c 0 + 2 * (c 1 + 2 * (c 2 + 2 * (c 3 + 2 * (c 4 + 2 * (c 5 + 2 * (c 6 + 2 * (c 7 + 2 * c 8)))))))
    have h0 := hc 0; have h1' := hc 1; have h2' := hc 2; have h3' := hc 3
    have h4' := hc 4; have h5 := hc 5; have h6 := hc 6; have h7 := hc 7; have h8 := hc 8
    have hn : n < 512 := by dsimp only [n]; omega
    refine ⟨⟨n, hn⟩, funext fun j => ?_⟩
    apply Bool.eq_iff_iff.mpr
    rw [decide_eq_true_eq, ← hcb j]
    fin_cases j <;> (dsimp only [n]; norm_num; omega)
  have get10 : ∀ (x : Fin (9 : ℕ) → Bool) (b9 : Bool) (p : ℕ),
      (List.ofFn x ++ [b9]).getD p false =
        if h : p < 9 then x ⟨p, h⟩ else if p = 9 then b9 else false := by
    intro x b9 p
    by_cases hp9 : p < 9
    · rw [dif_pos hp9, List.getD_append _ _ _ _ (by simp [hp9]), List.getD_eq_getElem?_getD, List.getElem?_ofFn, dif_pos hp9]
      rfl
    · rw [dif_neg hp9]
      by_cases hpe : p = 9
      · subst hpe
        rw [if_pos rfl, List.getD_append_right _ _ _ _ (by simp)]
        simp
      · rw [if_neg hpe, List.getD_eq_default _ _ (by simp; omega)]
  have get11 : ∀ (x : Fin (9 : ℕ) → Bool) (b9 b10 : Bool) (p : ℕ),
      (List.ofFn x ++ [b9, b10]).getD p false =
        if h : p < 9 then x ⟨p, h⟩ else if p = 9 then b9 else if p = 10 then b10 else false := by
    intro x b9 b10 p
    by_cases hp9 : p < 9
    · rw [dif_pos hp9, List.getD_append _ _ _ _ (by simp [hp9]), List.getD_eq_getElem?_getD, List.getElem?_ofFn, dif_pos hp9]
      rfl
    · rw [dif_neg hp9]
      by_cases hp9e : p = 9
      · subst hp9e
        rw [if_pos rfl, List.getD_append_right _ _ _ _ (by simp)]
        simp
      · rw [if_neg hp9e]
        by_cases hp10e : p = 10
        · subst hp10e
          rw [if_pos rfl, List.getD_append_right _ _ _ _ (by simp)]
          simp
        · rw [if_neg hp10e, List.getD_eq_default _ _ (by simp; omega)]
  let remap (r : ℕ → ℕ) (C : Circuit) : Circuit :=
    { gates := C.gates.map (fun g => { op := g.op, inputs := g.inputs.map r }), output := r C.output }
  have remap_fan : ∀ (r : ℕ → ℕ) (C : Circuit), FanInTwo C → FanInTwo (remap r C) := by
    intro r C hC g hg
    obtain ⟨g0, hg0, rfl⟩ := List.mem_map.mp hg
    obtain ⟨hop, hlen⟩ := hC g0 hg0
    exact ⟨hop, by simpa using hlen⟩
  have remap_size : ∀ (r : ℕ → ℕ) (C : Circuit), (remap r C).size = C.size := by
    intro r C
    exact List.length_map _
  have remap_eval : ∀ (r : ℕ → ℕ) (C : Circuit) (xs ys : List Bool),
      xs.length = ys.length →
      (∀ j, xs.length ≤ j → r j = j) →
      (∀ j, j < xs.length → r j < xs.length) →
      (∀ p, xs.getD (r p) false = ys.getD p false) →
      (remap r C).eval xs = C.eval ys := by
    intro r C xs ys hlen0 hr1 hr2 hinv0
    have aux : ∀ (gs : List Gate) (w' w : List Bool),
        w'.length = w.length →
        xs.length ≤ w'.length →
        (∀ p, w'.getD (r p) false = w.getD p false) →
        ((gs.map (fun (g : Gate) => ({ op := g.op, inputs := g.inputs.map r } : Gate))).foldl
          (fun acc g => acc ++ [g.op.eval (g.inputs.map (fun i => acc.getD i false))]) w').getD (r C.output) false =
        (gs.foldl
          (fun acc g => acc ++ [g.op.eval (g.inputs.map (fun i => acc.getD i false))]) w).getD C.output false := by
      intro gs
      induction gs with
      | nil =>
        intro w' w _ _ hinv
        exact hinv C.output
      | cons g gs ih =>
        intro w' w hlen hx hinv
        let v' := g.op.eval ((g.inputs.map r).map (fun i => w'.getD i false))
        let v := g.op.eval (g.inputs.map (fun i => w.getD i false))
        have hv : v' = v := by
          have hm : (g.inputs.map r).map (fun i => w'.getD i false) = g.inputs.map (fun i => w.getD i false) := by
            rw [List.map_map]
            exact List.map_congr_left (fun i _ => hinv i)
          change g.op.eval ((g.inputs.map r).map (fun i => w'.getD i false)) = g.op.eval (g.inputs.map (fun i => w.getD i false))
          rw [hm]
        have hlen' : (w' ++ [v']).length = (w ++ [v]).length := by
          rw [List.length_append, List.length_append, List.length_singleton, List.length_singleton, hlen]
        have hx' : xs.length ≤ (w' ++ [v']).length := by
          rw [List.length_append]
          omega
        have hinv' : ∀ p, (w' ++ [v']).getD (r p) false = (w ++ [v]).getD p false := by
          intro p
          by_cases hp : p < w.length
          · have hrp : r p < w'.length := by
              by_cases hpx : p < xs.length
              · exact Nat.lt_of_lt_of_le (hr2 p hpx) hx
              · rw [hr1 p (Nat.le_of_not_lt hpx), hlen]
                exact hp
            rw [List.getD_append _ _ _ _ hrp, List.getD_append _ _ _ _ hp]
            exact hinv p
          · have hpx : xs.length ≤ p := by omega
            have hrp : r p = p := hr1 p hpx
            rw [hrp]
            by_cases hpe : p = w.length
            · subst hpe
              rw [List.getD_append_right _ _ _ _ (by omega), List.getD_append_right _ _ _ _ (by omega)]
              simp [hlen, hv]
            · rw [List.getD_eq_default _ _ (by rw [List.length_append, List.length_singleton]; omega),
                  List.getD_eq_default _ _ (by rw [List.length_append, List.length_singleton]; omega)]
        exact ih (w' ++ [v']) (w ++ [v]) hlen' hx' hinv'
    exact aux C.gates xs ys hlen0 (Nat.le_refl _) hinv0
  have finish : ∀ (b : Fin (9 : ℕ) → Bool),
      x3.eval (List.ofFn b ++ [!b (0 : Fin (9 : ℕ)),
        GateOp.not.eval (List.map (fun i => (List.ofFn b ++ [!b (0 : Fin (9 : ℕ))]).getD i false) x1)]) ≠ F b →
      ∃ (x6 : Fin (512 : ℕ)),
        have x7 : Fin (9 : ℕ) → Bool := fun (x7 : Fin (9 : ℕ)) => Decidable.decide (↑x6 / (2 : ℕ) ^ (↑x7 % (9 : ℕ)) % (2 : ℕ) = (1 : ℕ));
        have x8 : List Bool := List.ofFn x7 ++ [!x7 (0 : Fin (9 : ℕ))];
        x3.eval (x8 ++ [GateOp.not.eval (List.map (fun (x9 : ℕ) => x8.getD x9 false) x1)]) ≠ F x7 := by
    intro b hb
    obtain ⟨x6, hx6⟩ := bits b
    refine ⟨x6, ?_⟩
    change (fun x7 : Fin (9 : ℕ) → Bool =>
      x3.eval ((List.ofFn x7 ++ [!x7 (0 : Fin (9 : ℕ))]) ++
        [GateOp.not.eval (List.map (fun (x9 : ℕ) => (List.ofFn x7 ++ [!x7 (0 : Fin (9 : ℕ))]).getD x9 false) x1)]) ≠ F x7)
      (fun (j : Fin (9 : ℕ)) => Decidable.decide (↑x6 / (2 : ℕ) ^ (↑j % (9 : ℕ)) % (2 : ℕ) = (1 : ℕ)))
    rw [hx6]
    dsimp only
    rw [List.append_assoc]
    exact hb
  have evalNot : ∀ l : List Bool, GateOp.not.eval l = !(l.headD false) := fun _ => rfl
  have useRedundant : ∀ (r : ℕ → ℕ) (w10 : (Fin (9 : ℕ) → Bool) → Bool),
      (∀ j, 11 ≤ j → r j = j) →
      (∀ j, j < 11 → r j < 11) →
      (∀ x, GateOp.not.eval (List.map (fun i => (List.ofFn x ++ [!x 0]).getD i false) x1) = w10 x) →
      (∀ (x : Fin (9 : ℕ) → Bool) (p : ℕ),
        (List.ofFn x ++ [!x 0, true]).getD (r p) false = (List.ofFn x ++ [!x 0, w10 x]).getD p false) →
      ∃ (x : Fin (9 : ℕ) → Bool),
        x3.eval (List.ofFn x ++ [!x 0, GateOp.not.eval (List.map (fun i => (List.ofFn x ++ [!x 0]).getD i false) x1)]) ≠ F x := by
    intro r w10 hr1 hr2 hw10 hget
    obtain ⟨x, hx⟩ := h1 (remap r x3) (remap_fan r x3 hfan) (by rw [remap_size]; exact hsize)
    refine ⟨x, ?_⟩
    rw [hw10 x]
    have heq := remap_eval r x3 (List.ofFn x ++ [!x 0, true]) (List.ofFn x ++ [!x 0, w10 x])
      (by simp) (by simpa using hr1) (by simpa using hr2) (hget x)
    rw [← heq]
    exact hx
  have useSym : ∀ (k a : Fin (9 : ℕ)), σ a = k →
      (∀ (x : Fin (9 : ℕ) → Bool),
        GateOp.not.eval (List.map (fun i => (List.ofFn x ++ [!x 0]).getD i false) x1) = !x a) →
      (∀ (C : Circuit), FanInTwo C → C.size ≤ 13 → ∃ (x : Fin (9 : ℕ) → Bool), C.eval (List.ofFn x ++ [!x 0, !x k]) ≠ F x) →
      ∃ (x : Fin (9 : ℕ) → Bool),
        x3.eval (List.ofFn x ++ [!x 0, GateOp.not.eval (List.map (fun i => (List.ofFn x ++ [!x 0]).getD i false) x1)]) ≠ F x := by
    intro k a hσ hwire hsub
    let rσ (j : ℕ) : ℕ := if h : j < 9 then (σ ⟨j, h⟩).val else j
    have hr1 : ∀ j, 11 ≤ j → rσ j = j := by
      intro j hj
      dsimp only [rσ]
      rw [dif_neg (by omega)]
    have hr2 : ∀ j, j < 11 → rσ j < 11 := by
      intro j hj
      dsimp only [rσ]
      split_ifs with h9
      · exact Nat.lt_trans (σ ⟨j, h9⟩).isLt (by omega)
      · exact hj
    obtain ⟨x, hx⟩ := hsub (remap rσ x3) (remap_fan rσ x3 hfan) (by rw [remap_size]; exact hsize)
    let x' : Fin (9 : ℕ) → Bool := fun i => x (σ i)
    refine ⟨x', ?_⟩
    rw [hwire x']
    have h0 : x' 0 = x 0 := rfl
    have ha : x' a = x k := by change x (σ a) = x k; rw [hσ]
    have hget : ∀ p, (List.ofFn x ++ [!x 0, !x k]).getD (rσ p) false = (List.ofFn x' ++ [!x' 0, !x' a]).getD p false := by
      intro p
      by_cases hp9 : p < 9
      · have hrp : rσ p = (σ ⟨p, hp9⟩).val := by dsimp only [rσ]; simp [hp9]
        rw [hrp, get11, get11]
        simp [hp9, (σ ⟨p, hp9⟩).isLt]
        rfl
      · have hrp : rσ p = p := by dsimp only [rσ]; simp [hp9]
        rw [hrp, get11, get11]
        simp [hp9, h0, ha]
    have heq := remap_eval rσ x3 (List.ofFn x ++ [!x 0, !x k]) (List.ofFn x' ++ [!x' 0, !x' a])
      (by simp) (by simpa using hr1) (by simpa using hr2) hget
    rw [← heq, Fσ x]
    exact hx
  cases x1 with
  | nil =>
    obtain ⟨x, hx⟩ := useRedundant id (fun _ => true) (fun _ _ => rfl) (fun _ h => h)
      (fun _ => rfl) (fun _ _ => rfl)
    exact finish x hx
  | cons a tl =>
    have hnot : ∀ (x : Fin (9 : ℕ) → Bool),
        GateOp.not.eval (List.map (fun i => (List.ofFn x ++ [!x 0]).getD i false) (a :: tl)) =
          !((List.ofFn x ++ [!x 0]).getD a false) := by
      intro x
      rw [evalNot]
      rfl
    by_cases ha10 : 10 ≤ a
    · obtain ⟨x, hx⟩ := useRedundant id (fun _ => true) (fun _ _ => rfl) (fun _ h => h)
        (fun x => by rw [hnot x, get10, dif_neg (by omega), if_neg (by omega)]; rfl)
        (fun _ _ => rfl)
      exact finish x hx
    · have ha_lt : a < 10 := Nat.lt_of_not_le ha10
      interval_cases a
      · obtain ⟨x, hx⟩ := useRedundant (fun j => if j = 10 then 9 else j) (fun x => !x 0)
          (fun j hj => if_neg (by omega))
          (fun j hj => by split_ifs <;> omega)
          (fun x => by rw [hnot x, get10, dif_pos (by omega)]; rfl)
          (fun x p => by
            rw [get11, get11]
            by_cases hp10 : p = 10
            · subst hp10; simp
            · simp [hp10])
        exact finish x hx
      · obtain ⟨x, hx⟩ := h2 x3 hfan hsize
        refine finish x ?_
        rw [hnot x, get10, dif_pos (by omega)]
        exact hx
      · obtain ⟨x, hx⟩ := h3 2 (by simp) x3 hfan hsize
        refine finish x ?_
        rw [hnot x, get10, dif_pos (by omega)]
        exact hx
      · obtain ⟨x, hx⟩ := h3 3 (by simp) x3 hfan hsize
        refine finish x ?_
        rw [hnot x, get10, dif_pos (by omega)]
        exact hx
      · obtain ⟨x, hx⟩ := h4 4 (by simp) x3 hfan hsize
        refine finish x ?_
        rw [hnot x, get10, dif_pos (by omega)]
        exact hx
      · obtain ⟨x, hx⟩ := useSym 1 5 (by decide)
          (fun x => by rw [hnot x, get10, dif_pos (by omega)]; rfl) h2
        exact finish x hx
      · obtain ⟨x, hx⟩ := h4 6 (by simp) x3 hfan hsize
        refine finish x ?_
        rw [hnot x, get10, dif_pos (by omega)]
        exact hx
      · obtain ⟨x, hx⟩ := useSym 6 7 (by decide)
          (fun x => by rw [hnot x, get10, dif_pos (by omega)]; rfl) (h4 6 (by simp))
        exact finish x hx
      · obtain ⟨x, hx⟩ := useSym 2 8 (by decide)
          (fun x => by rw [hnot x, get10, dif_pos (by omega)]; rfl) (h3 2 (by simp))
        exact finish x hx
      · obtain ⟨x, hx⟩ := useRedundant (fun j => if j = 10 then 0 else j) (fun x => x 0)
          (fun j hj => if_neg (by omega))
          (fun j hj => by split_ifs <;> omega)
          (fun x => by rw [hnot x, get10, dif_neg (by omega), if_pos rfl, Bool.not_not])
          (fun x p => by
            rw [get11, get11]
            by_cases hp10 : p = 10
            · subst hp10; simp
            · simp [hp10])
        exact finish x hx
