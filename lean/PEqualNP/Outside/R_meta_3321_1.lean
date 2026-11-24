import Mathlib
import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.MetaComplexity.NestedCover PEqualNP.TopForm

set_option maxHeartbeats 6000000 in
theorem PEqualNP.Outside.R_meta_3321_1
    (toAO2 : ∀ (N : ℕ) (I : Fin N → Fin N → Prop) [DecidableRel I] (C : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.Monotone2 C → PEqualNP.MetaComplexity.NestedCover.ReadsBack (N + N) C → (∀ z : Fin (N + N) → Bool, PEqualNP.MetaComplexity.circuitFun (N + N) C z = true ↔ ∃ p l : Fin N, I p l ∧ z (Fin.castAdd N p) = true ∧ z (Fin.natAdd N l) = true) → ∃ D : PEqualNP.CircuitLowerBounds.Circuit, PEqualNP.TopForm.IsAO2 (N + N) D ∧ D.size ≤ C.size ∧ ∀ z : Fin (N + N) → Bool, PEqualNP.MetaComplexity.circuitFun (N + N) D z = Decidable.decide (∃ p l : Fin N, I p l ∧ z (Fin.castAdd N p) = true ∧ z (Fin.natAdd N l) = true))
    (h2978 : ∀ (x1 x2 : ℕ) (x3 : Fin x1 → Fin x2 → Prop) [_x4 : DecidableRel x3] (x5 : PEqualNP.CircuitLowerBounds.Circuit), (∀ (x6 x7 : Fin x1) (x8 x9 : Fin x2), x6 ≠ x7 → x8 ≠ x9 → ¬(x3 x6 x8 ∧ x3 x6 x9 ∧ x3 x7 x8 ∧ x3 x7 x9)) → PEqualNP.TopForm.IsAO2 (x1 + x2) x5 → (∀ (x8 : Fin (x1 + x2) → Bool), PEqualNP.MetaComplexity.circuitFun (x1 + x2) x5 x8 = Decidable.decide (∃ (x9 : Fin x1) (x10 : Fin x2), x3 x9 x10 ∧ x8 (Fin.castAdd x2 x9) = Bool.true ∧ x8 (Fin.natAdd x1 x10) = Bool.true)) → ∃ (x9 : PEqualNP.CircuitLowerBounds.Circuit) (x10 : Finset ℕ) (x11 : Finset ℕ), PEqualNP.TopForm.IsAO2 (x1 + x2) x9 ∧ (∀ (x12 : Fin (x1 + x2) → Bool), PEqualNP.MetaComplexity.circuitFun (x1 + x2) x9 x12 = Decidable.decide (∃ (x13 : Fin x1) (x14 : Fin x2), x3 x13 x14 ∧ x12 (Fin.castAdd x2 x13) = Bool.true ∧ x12 (Fin.natAdd x1 x14) = Bool.true)) ∧ x9.size ≤ x5.size ∧ (∀ x12 ∈ x10, x12 < x1 ∨ ∃ x14 < x9.gates.length, x12 = x1 + x2 + x14 ∧ (PEqualNP.MetaComplexity.NestedCover.gateAt x9 x14).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧ ∀ x15 ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x9 x14).inputs, x15 ∈ x10) ∧ (∀ x12 ∈ x11, x1 ≤ x12 ∧ x12 < x1 + x2 ∨ ∃ x14 < x9.gates.length, x12 = x1 + x2 + x14 ∧ (PEqualNP.MetaComplexity.NestedCover.gateAt x9 x14).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧ ∀ x15 ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x9 x14).inputs, x15 ∈ x11) ∧ ∀ x12 < x9.gates.length, (PEqualNP.MetaComplexity.NestedCover.gateAt x9 x12).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∃ (x15 : ℕ) (x16 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x9 x12).inputs = [x15, x16] ∧ x15 ∈ x11 ∧ x16 ∈ x10) :
    ∀ (N : ℕ) (I : Fin N → Fin N → Prop) [DecidableRel I] (C : PEqualNP.CircuitLowerBounds.Circuit), (∀ p p' l l' : Fin N, p ≠ p' → l ≠ l' → ¬ (I p l ∧ I p l' ∧ I p' l ∧ I p' l')) → PEqualNP.MetaComplexity.Monotone2 C → PEqualNP.MetaComplexity.NestedCover.ReadsBack (N + N) C → (∀ z : Fin (N + N) → Bool, PEqualNP.MetaComplexity.circuitFun (N + N) C z = true ↔ ∃ p l : Fin N, I p l ∧ z (Fin.castAdd N p) = true ∧ z (Fin.natAdd N l) = true) → ∃ D : PEqualNP.CircuitLowerBounds.Circuit, PEqualNP.MetaComplexity.Monotone2 D ∧ PEqualNP.MetaComplexity.NestedCover.ReadsBack (N + N) D ∧ D.size ≤ C.size ∧ (∀ z : Fin (N + N) → Bool, PEqualNP.MetaComplexity.circuitFun (N + N) D z = true ↔ ∃ p l : Fin N, I p l ∧ z (Fin.castAdd N p) = true ∧ z (Fin.natAdd N l) = true) ∧ (∀ j < D.gates.length, (PEqualNP.MetaComplexity.NestedCover.gateAt D j).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ z : Fin (N + N) → Bool, (D.wires (List.ofFn z)).getD (N + N + j) false = true → (D.wires (List.ofFn (fun ka : Fin (N + N) => decide (ka.val < N) && z ka))).getD (N + N + j) false = true ∨ (D.wires (List.ofFn (fun kb : Fin (N + N) => decide (N ≤ kb.val) && z kb))).getD (N + N + j) false = true ∨ ∃ p l : Fin N, I p l ∧ z (Fin.castAdd N p) = true ∧ z (Fin.natAdd N l) = true) ∧ (∀ j < D.gates.length, (PEqualNP.MetaComplexity.NestedCover.gateAt D j).op = PEqualNP.CircuitLowerBounds.GateOp.and → (∀ p : Fin N, (D.wires (List.ofFn (fun kc : Fin (N + N) => decide (kc = Fin.castAdd N p)))).getD (N + N + j) false = false) ∧ ∀ l : Fin N, (D.wires (List.ofFn (fun kd : Fin (N + N) => decide (kd = Fin.natAdd N l)))).getD (N + N + j) false = false) := by
  classical
  have evalAnd : ∀ l : List Bool, GateOp.and.eval l = l.all id := fun _ => rfl
  have evalOr : ∀ l : List Bool, GateOp.or.eval l = l.any id := fun _ => rfl
  have sizeEq : ∀ c : Circuit, c.size = c.gates.length := fun _ => rfl
  let wiresFrom : List Gate → List Bool → List Bool := fun gs w =>
    gs.foldl (fun w g => w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]) w
  have wiresFrom_append : ∀ (gs gs' : List Gate) (w : List Bool),
      wiresFrom (gs ++ gs') w = wiresFrom gs' (wiresFrom gs w) := by
    intro gs gs' w; simp [wiresFrom, List.foldl_append]
  have wiresFrom_len : ∀ (gs : List Gate) (w : List Bool),
      (wiresFrom gs w).length = w.length + gs.length := by
    intro gs
    induction gs with
    | nil => intro w; simp [wiresFrom]
    | cons g gs ih =>
      intro w
      change (wiresFrom gs (w ++ [_])).length = w.length + (g :: gs).length
      rw [ih, List.length_append, List.length_singleton, List.length_cons]
      omega
  have wiresFrom_getD_lt : ∀ (gs : List Gate) (w : List Bool) (i : ℕ),
      i < w.length → (wiresFrom gs w).getD i false = w.getD i false := by
    intro gs
    induction gs with
    | nil => intro w i _; rfl
    | cons g gs ih =>
      intro w i hi
      change (wiresFrom gs (w ++ [_])).getD i false = w.getD i false
      rw [ih _ i (by rw [List.length_append, List.length_singleton]; omega),
        List.getD_append _ _ _ _ hi]
  have wiresFrom_gate : ∀ (gs : List Gate) (w : List Bool) (i : ℕ) (hi : i < gs.length),
      (∀ u ∈ gs[i].inputs, u < w.length + i) →
      (wiresFrom gs w).getD (w.length + i) false =
        gs[i].op.eval (gs[i].inputs.map fun u => (wiresFrom gs w).getD u false) := by
    intro gs w i hi hrb
    have hsplit : gs = gs.take i ++ gs[i] :: gs.drop (i + 1) := by
      rw [List.getElem_cons_drop]
      exact (List.take_append_drop i gs).symm
    set pre := wiresFrom (gs.take i) w with hpre
    have hprelen : pre.length = w.length + i := by
      rw [hpre, wiresFrom_len, List.length_take]; omega
    have hstep : wiresFrom gs w =
        wiresFrom (gs.drop (i + 1)) (pre ++ [gs[i].op.eval (gs[i].inputs.map fun u => pre.getD u false)]) := by
      conv_lhs => rw [hsplit]
      rw [wiresFrom_append]
      rfl
    have hget_pre : ∀ u < w.length + i, (wiresFrom gs w).getD u false = pre.getD u false := by
      intro u hu
      rw [hstep, wiresFrom_getD_lt _ _ _ (by rw [List.length_append, List.length_singleton]; omega),
        List.getD_append _ _ _ _ (by omega)]
    have hmap : (gs[i].inputs.map fun u => (wiresFrom gs w).getD u false) =
        (gs[i].inputs.map fun u => pre.getD u false) := by
      apply List.map_congr_left
      intro u hu
      exact hget_pre u (hrb u hu)
    rw [hmap]
    conv_lhs => rw [hstep]
    rw [wiresFrom_getD_lt _ _ _ (by rw [List.length_append, List.length_singleton]; omega),
      List.getD_append_right _ _ _ _ (by omega), show w.length + i - pre.length = 0 by omega]
    rfl
  intro N I decI C hno4 hmono hrb hfun
  obtain ⟨C0, hC0, hC0sz, hC0fun⟩ := toAO2 N I C hmono hrb hfun
  let Psz : ℕ → Prop := fun s => ∃ E : Circuit, IsAO2 (N + N) E ∧ E.size = s ∧
    ∀ z : Fin (N + N) → Bool, circuitFun (N + N) E z =
      Decidable.decide (∃ p l : Fin N, I p l ∧ z (Fin.castAdd N p) = true ∧ z (Fin.natAdd N l) = true)
  have hexPsz : ∃ s, Psz s := ⟨C0.size, C0, hC0, rfl, hC0fun⟩
  let sMin := Nat.find hexPsz
  have hsMin_spec : Psz sMin := Nat.find_spec hexPsz
  have hsMin_le : ∀ E : Circuit, IsAO2 (N + N) E →
      (∀ z : Fin (N + N) → Bool, circuitFun (N + N) E z =
        Decidable.decide (∃ p l : Fin N, I p l ∧ z (Fin.castAdd N p) = true ∧ z (Fin.natAdd N l) = true)) →
      sMin ≤ E.size := by
    intro E hE hEfun
    exact Nat.find_min' hexPsz ⟨E, hE, rfl, hEfun⟩
  obtain ⟨Cstar, hCstar, hCstarsz, hCstarfun⟩ := hsMin_spec
  obtain ⟨D, P, L, hD, hDfun, hDsz, hP, hL, hAnd⟩ := h2978 N N I Cstar hno4 hCstar hCstarfun
  have hDmin : ∀ E : Circuit, IsAO2 (N + N) E →
      (∀ z : Fin (N + N) → Bool, circuitFun (N + N) E z =
        Decidable.decide (∃ p l : Fin N, I p l ∧ z (Fin.castAdd N p) = true ∧ z (Fin.natAdd N l) = true)) →
      D.size ≤ E.size := by
    intro E hE hEfun
    have h1 := hsMin_le E hE hEfun
    omega
  have hDleC : D.size ≤ C.size := by
    have h1 := hsMin_le C0 hC0 hC0fun
    omega
  have hDmono : Monotone2 D := by
    intro g hg
    refine ⟨?_, ?_⟩
    · rcases hD.1 g hg with h | h
      · exact Or.inl h
      · exact Or.inr h
    · have := hD.2.2 g hg; omega
  have hDrb : ReadsBack (N + N) D := hD.2.1
  have hDfun_iff : ∀ z : Fin (N + N) → Bool, circuitFun (N + N) D z = true ↔
      ∃ p l : Fin N, I p l ∧ z (Fin.castAdd N p) = true ∧ z (Fin.natAdd N l) = true := by
    intro z
    rw [hDfun z, decide_eq_true_iff]
  have hgateAt_eq : ∀ i (hi : i < D.gates.length), gateAt D i = D.gates[i] := by
    intro i hi
    exact List.getD_eq_getElem _ _ hi
  have hDwire : ∀ (z : Fin (N + N) → Bool) (i : ℕ) (hi : i < D.gates.length),
      (D.wires (List.ofFn z)).getD (N + N + i) false =
        (gateAt D i).op.eval ((gateAt D i).inputs.map fun u => (D.wires (List.ofFn z)).getD u false) := by
    intro z i hi
    have hrb_i : ∀ u ∈ D.gates[i].inputs, u < (List.ofFn z).length + i := by
      intro u hu
      rw [List.length_ofFn]
      have := hDrb i hi u (by rw [hgateAt_eq i hi]; exact hu)
      exact this
    have h1 := wiresFrom_gate D.gates (List.ofFn z) i hi hrb_i
    rw [List.length_ofFn] at h1
    rw [hgateAt_eq i hi]
    exact h1
  have hP_false_L : ∀ (w : ℕ), w ∈ P → ∀ (z : Fin (N + N) → Bool),
      (∀ p : Fin N, z (Fin.castAdd N p) = false) → (D.wires (List.ofFn z)).getD w false = false := by
    intro w
    induction w using Nat.strong_induction_on with
    | ind w ih =>
      intro hw z hz
      rcases hP w hw with hwN | ⟨i, hi, rfl, hop, hins⟩
      · have hw2N : w < (List.ofFn z).length := by rw [List.length_ofFn]; omega
        change (wiresFrom D.gates (List.ofFn z)).getD w false = false
        rw [wiresFrom_getD_lt _ _ _ hw2N, List.getD_eq_getElem _ _ hw2N, List.getElem_ofFn]
        have hcast : (⟨w, by omega⟩ : Fin (N + N)) = Fin.castAdd N ⟨w, hwN⟩ := by
          ext; rfl
        rw [hcast]
        exact hz ⟨w, hwN⟩
      · rw [hDwire z i hi, hop, evalOr]
        apply List.any_eq_false.2
        intro b hb
        obtain ⟨u, hu, rfl⟩ := List.mem_map.1 hb
        have hult : u < N + N + i := hDrb i hi u hu
        have huf := ih u hult (hins u hu) z hz
        rw [id_eq, huf]; exact Bool.false_ne_true
  have hL_false_P : ∀ (w : ℕ), w ∈ L → ∀ (z : Fin (N + N) → Bool),
      (∀ l : Fin N, z (Fin.natAdd N l) = false) → (D.wires (List.ofFn z)).getD w false = false := by
    intro w
    induction w using Nat.strong_induction_on with
    | ind w ih =>
      intro hw z hz
      rcases hL w hw with ⟨hlo, hhi⟩ | ⟨i, hi, rfl, hop, hins⟩
      · have hw2N : w < (List.ofFn z).length := by rw [List.length_ofFn]; omega
        change (wiresFrom D.gates (List.ofFn z)).getD w false = false
        rw [wiresFrom_getD_lt _ _ _ hw2N, List.getD_eq_getElem _ _ hw2N, List.getElem_ofFn]
        have hnat : (⟨w, hhi⟩ : Fin (N + N)) = Fin.natAdd N ⟨w - N, by omega⟩ := by
          ext; simp [Fin.natAdd]; omega
        rw [hnat]
        exact hz ⟨w - N, by omega⟩
      · rw [hDwire z i hi, hop, evalOr]
        apply List.any_eq_false.2
        intro b hb
        obtain ⟨u, hu, rfl⟩ := List.mem_map.1 hb
        have hult : u < N + N + i := hDrb i hi u hu
        have huf := ih u hult (hins u hu) z hz
        rw [id_eq, huf]; exact Bool.false_ne_true
  have hOneHot : ∀ j < D.gates.length, (gateAt D j).op = GateOp.and →
      (∀ p : Fin N, (D.wires (List.ofFn (fun kc : Fin (N + N) => decide (kc = Fin.castAdd N p)))).getD (N + N + j) false = false) ∧
      ∀ l : Fin N, (D.wires (List.ofFn (fun kd : Fin (N + N) => decide (kd = Fin.natAdd N l)))).getD (N + N + j) false = false := by
    intro j hj hop
    obtain ⟨a, b, hab, haL, hbP⟩ := hAnd j hj hop
    constructor
    · intro p
      rw [hDwire _ j hj, hop, hab, evalAnd]
      have ha0 : (D.wires (List.ofFn (fun kc : Fin (N + N) => decide (kc = Fin.castAdd N p)))).getD a false = false := by
        apply hL_false_P a haL
        intro l
        simp only [decide_eq_false_iff_not]
        intro heq
        have hv := congrArg Fin.val heq
        simp only [Fin.val_natAdd, Fin.val_castAdd] at hv
        have := p.isLt; omega
      rw [List.map_cons, List.map_cons, List.map_nil, ha0]
      rfl
    · intro l
      rw [hDwire _ j hj, hop, hab, evalAnd]
      have hb0 : (D.wires (List.ofFn (fun kd : Fin (N + N) => decide (kd = Fin.natAdd N l)))).getD b false = false := by
        apply hP_false_L b hbP
        intro p
        simp only [decide_eq_false_iff_not]
        intro heq
        have hv := congrArg Fin.val heq
        simp only [Fin.val_castAdd, Fin.val_natAdd] at hv
        have := p.isLt; omega
      rw [List.map_cons, List.map_cons, List.map_nil, hb0]
      simp
  have hClean : ∀ j < D.gates.length, (gateAt D j).op = GateOp.and →
      ∀ z : Fin (N + N) → Bool, (D.wires (List.ofFn z)).getD (N + N + j) false = true →
      (D.wires (List.ofFn (fun ka : Fin (N + N) => decide (ka.val < N) && z ka))).getD (N + N + j) false = true ∨
      (D.wires (List.ofFn (fun kb : Fin (N + N) => decide (N ≤ kb.val) && z kb))).getD (N + N + j) false = true ∨
      ∃ p l : Fin N, I p l ∧ z (Fin.castAdd N p) = true ∧ z (Fin.natAdd N l) = true := by
    intro j hj hjand z hjtrue
    right; right
    have hNpos : 0 < N := by
      by_contra hN0
      have hNeq : N = 0 := by omega
      subst hNeq
      let E0 : Circuit := ⟨[], 0⟩
      have hE0 : IsAO2 (0 + 0) E0 := ⟨by intro g hg; simp [E0] at hg, by intro k hk; simp [E0] at hk, by intro g hg; simp [E0] at hg⟩
      have hle0 := hDmin E0 (by exact hE0) (by
        intro x
        change (List.ofFn x).getD 0 false = Decidable.decide (∃ p l : Fin 0, I p l ∧ x (Fin.castAdd 0 p) = true ∧ x (Fin.natAdd 0 l) = true)
        have hl0 : (List.ofFn x).length = 0 := by simp
        rw [List.getD_eq_default _ _ (by omega)]
        symm
        rw [decide_eq_false_iff_not]
        rintro ⟨p, _⟩
        exact Fin.elim0 p)
      rw [sizeEq, sizeEq] at hle0
      simp only [E0, List.length_nil] at hle0
      omega
    let coneStep : Finset ℕ → ℕ → Finset ℕ := fun S k =>
      if k = j ∨ ∃ i ∈ S, N + N + i ∈ (gateAt D k).inputs then insert k S else S
    let coneUpTo : ℕ → Finset ℕ := fun m => (List.range m).foldl coneStep ∅
    have cone_succ : ∀ m, coneUpTo (m + 1) = coneStep (coneUpTo m) m := by
      intro m
      simp only [coneUpTo, List.range_succ, List.foldl_append, List.foldl_cons, List.foldl_nil]
    have cone_sub : ∀ m k, k ∈ coneUpTo m → k < m := by
      intro m
      induction m with
      | zero => intro k hk; simp [coneUpTo] at hk
      | succ m ih =>
        intro k hk
        rw [cone_succ] at hk
        dsimp only [coneStep] at hk
        split_ifs at hk with h
        · rcases Finset.mem_insert.1 hk with rfl | hk'
          · omega
          · have := ih k hk'; omega
        · have := ih k hk; omega
    have cone_mono : ∀ {m1 m2}, m1 ≤ m2 → coneUpTo m1 ⊆ coneUpTo m2 := by
      intro m1 m2 hle
      induction hle with
      | refl => exact Finset.Subset.refl _
      | step _ ih =>
        intro k hk
        rw [cone_succ]
        dsimp only [coneStep]
        split_ifs
        · exact Finset.mem_insert_of_mem (ih hk)
        · exact ih hk
    have cone_mem_of_lt : ∀ {m1 m2 k}, k < m1 → m1 ≤ m2 → (k ∈ coneUpTo m1 ↔ k ∈ coneUpTo m2) := by
      intro m1 m2 k hkm hle
      induction hle with
      | refl => exact Iff.rfl
      | @step m h1 ih =>
        constructor
        · intro hk; exact cone_mono (Nat.le_succ m) (ih.1 hk)
        · intro hk
          rw [cone_succ] at hk
          dsimp only [coneStep] at hk
          split_ifs at hk
          · rcases Finset.mem_insert.1 hk with hkm_eq | hk'
            · have hm1 : m1 ≤ m := h1; omega
            · exact ih.2 hk'
          · exact ih.2 hk
    let S : Finset ℕ := coneUpTo D.gates.length
    have hS_lt : ∀ k ∈ S, k < D.gates.length := fun k hk => cone_sub D.gates.length k hk
    have hS_j : j ∈ S := by
      apply cone_mono (Nat.succ_le_of_lt hj)
      rw [cone_succ]
      dsimp only [coneStep]
      rw [if_pos (Or.inl rfl)]
      exact Finset.mem_insert_self j _
    have hS_closed : ∀ k < D.gates.length, ∀ i ∈ S, N + N + i ∈ (gateAt D k).inputs → k ∈ S := by
      intro k hk i hi hin
      have hik : i < k := by
        have := hDrb k hk (N + N + i) hin; omega
      have hi_k : i ∈ coneUpTo k := (cone_mem_of_lt hik (le_of_lt hk)).2 hi
      apply cone_mono (Nat.succ_le_of_lt hk)
      rw [cone_succ]
      dsimp only [coneStep]
      rw [if_pos (Or.inr ⟨i, hi_k, hin⟩)]
      exact Finset.mem_insert_self k _
    have hS_gen : ∀ k ∈ S, k = j ∨ ∃ i ∈ S, i < k ∧ N + N + i ∈ (gateAt D k).inputs := by
      intro k hk
      have hkl := hS_lt k hk
      have hk1 : k ∈ coneUpTo (k + 1) := (cone_mem_of_lt (Nat.lt_succ_self k) (Nat.succ_le_of_lt hkl)).2 hk
      rw [cone_succ] at hk1
      dsimp only [coneStep] at hk1
      split_ifs at hk1 with hcond
      · rcases hcond with rfl | ⟨i, hi, hin⟩
        · exact Or.inl rfl
        · exact Or.inr ⟨i, cone_mono (le_of_lt hkl) hi, cone_sub k i hi, hin⟩
      · exact absurd (cone_sub k k hk1) (Nat.lt_irrefl k)
    have hS_notPL : ∀ k, k ∈ S → N + N + k ∉ P ∧ N + N + k ∉ L := by
      intro k
      induction k using Nat.strong_induction_on with
      | ind k ih =>
        intro hk
        rcases hS_gen k hk with hkj | ⟨i, hiS, hik, hin⟩
        · constructor
          · intro hmem
            rcases hP _ hmem with hlt | ⟨m, _, hmeq, hop, _⟩
            · omega
            · have : m = j := by omega
              subst this; rw [hjand] at hop; cases hop
          · intro hmem
            rcases hL _ hmem with ⟨_, hlt⟩ | ⟨m, _, hmeq, hop, _⟩
            · omega
            · have : m = j := by omega
              subst this; rw [hjand] at hop; cases hop
        · have hi_not := ih i hik hiS
          constructor
          · intro hmem
            rcases hP _ hmem with hlt | ⟨m, _, hmeq, _, hins⟩
            · omega
            · have : m = k := by omega
              subst this; exact hi_not.1 (hins _ hin)
          · intro hmem
            rcases hL _ hmem with ⟨_, hlt⟩ | ⟨m, _, hmeq, _, hins⟩
            · omega
            · have : m = k := by omega
              subst this; exact hi_not.2 (hins _ hin)
    have hS_or : ∀ k ∈ S, k ≠ j → (gateAt D k).op = GateOp.or := by
      intro k hk hne
      have hkl := hS_lt k hk
      have hmemk : gateAt D k ∈ D.gates := by rw [hgateAt_eq k hkl]; exact List.getElem_mem hkl
      rcases hD.1 _ hmemk with hand | hor
      · exfalso
        rcases hS_gen k hk with rfl | ⟨i, hiS, _, hin⟩
        · exact hne rfl
        · obtain ⟨a, b, hab, haL, hbP⟩ := hAnd k hkl hand
          rw [hab, List.mem_cons, List.mem_singleton] at hin
          rcases hin with h1 | h1
          · rw [← h1] at haL; exact (hS_notPL i hiS).2 haL
          · rw [← h1] at hbP; exact (hS_notPL i hiS).1 hbP
      · exact hor
    have hS_true : ∀ k, k ∈ S → (D.wires (List.ofFn z)).getD (N + N + k) false = true := by
      intro k
      induction k using Nat.strong_induction_on with
      | ind k ih =>
        intro hk
        by_cases hkj : k = j
        · subst hkj; exact hjtrue
        · rcases hS_gen k hk with h1 | ⟨i, hiS, hik, hin⟩
          · exact absurd h1 hkj
          · have hkl := hS_lt k hk
            have hor := hS_or k hk hkj
            rw [hDwire z k hkl, hor, evalOr]
            apply List.any_eq_true.2
            refine ⟨true, List.mem_map.2 ⟨N + N + i, hin, ih i hik hiS⟩, rfl⟩
    by_cases hout : ∃ k ∈ S, D.output = N + N + k
    · obtain ⟨k, hkS, hkeq⟩ := hout
      have h1 : circuitFun (N + N) D z = true := by
        change (D.wires (List.ofFn z)).getD D.output false = true
        rw [hkeq]
        exact hS_true k hkS
      exact (hDfun_iff z).1 h1
    · exfalso
      push_neg at hout
      let remap : ℕ → ℕ := fun w => if w < N + N + j then w else if w = N + N + j then 0 else w - 1
      let D' : Circuit := ⟨(D.gates.eraseIdx j).map (fun g => ⟨g.op, g.inputs.map remap⟩), remap D.output⟩
      have hD'len : D'.gates.length = D.gates.length - 1 := by
        simp only [D', List.length_map, List.length_eraseIdx, if_pos hj]
      have hD'get : ∀ q (hq : q < D'.gates.length),
          D'.gates[q] = ⟨(D.gates[if q < j then q else q + 1]'(by rw [hD'len] at hq; split_ifs <;> omega)).op,
            (D.gates[if q < j then q else q + 1]'(by rw [hD'len] at hq; split_ifs <;> omega)).inputs.map remap⟩ := by
        intro q hq
        have hqe : q < (D.gates.eraseIdx j).length := by rw [List.length_eraseIdx, if_pos hj]; omega
        simp only [D', List.getElem_map]
        have heq : (D.gates.eraseIdx j)[q]'hqe = D.gates[if q < j then q else q + 1]'(by rw [hD'len] at hq; split_ifs <;> omega) := by
          split_ifs with hqj
          · exact List.getElem_eraseIdx_of_lt hqe hqj
          · exact List.getElem_eraseIdx_of_ge hqe (by omega)
        rw [heq]
      have hD'ao : IsAO2 (N + N) D' := by
        refine ⟨?_, ?_, ?_⟩
        · intro g hg
          obtain ⟨g0, hg0, rfl⟩ := List.mem_map.1 hg
          exact hD.1 g0 (List.mem_of_mem_eraseIdx hg0)
        · intro q hq u hu
          change u ∈ (D'.gates.getD q ⟨GateOp.or, []⟩).inputs at hu
          rw [List.getD_eq_getElem _ _ hq, hD'get q hq] at hu
          obtain ⟨v, hv, rfl⟩ := List.mem_map.1 hu
          have hidx_lt : (if q < j then q else q + 1) < D.gates.length := by rw [hD'len] at hq; split_ifs <;> omega
          have hvlt : v < N + N + (if q < j then q else q + 1) := by
            apply hDrb (if q < j then q else q + 1) hidx_lt v
            rw [hgateAt_eq _ hidx_lt]
            exact hv
          dsimp only [remap]
          split_ifs at hvlt ⊢ <;> omega
        · intro g hg
          obtain ⟨g0, hg0, rfl⟩ := List.mem_map.1 hg
          simp only [List.length_map]
          exact hD.2.2 g0 (List.mem_of_mem_eraseIdx hg0)
      have hD'agree : ∀ (x : Fin (N + N) → Bool) (w : ℕ),
          (∀ k ∈ S, w ≠ N + N + k) →
          (D'.wires (List.ofFn x)).getD (remap w) false = (D.wires (List.ofFn x)).getD w false := by
        intro x w
        induction w using Nat.strong_induction_on with
        | ind w ih =>
          intro hnotS
          by_cases hw_in : w < N + N
          · have hrw : remap w = w := if_pos (by omega)
            rw [hrw]
            change (wiresFrom D'.gates (List.ofFn x)).getD w false = (wiresFrom D.gates (List.ofFn x)).getD w false
            rw [wiresFrom_getD_lt _ _ _ (by rw [List.length_ofFn]; exact hw_in),
              wiresFrom_getD_lt _ _ _ (by rw [List.length_ofFn]; exact hw_in)]
          · by_cases hw_hi : N + N + D.gates.length ≤ w
            · have hrw : remap w = w - 1 := by
                dsimp only [remap]; rw [if_neg (by omega), if_neg (by omega)]
              rw [hrw]
              change (wiresFrom D'.gates (List.ofFn x)).getD (w - 1) false = (wiresFrom D.gates (List.ofFn x)).getD w false
              rw [List.getD_eq_default _ _ (by rw [wiresFrom_len, List.length_ofFn, hD'len]; omega),
                List.getD_eq_default _ _ (by rw [wiresFrom_len, List.length_ofFn]; omega)]
            · let m := w - (N + N)
              have hm_eq : w = N + N + m := by omega
              have hm_lt : m < D.gates.length := by omega
              have hm_notS : m ∉ S := fun hmS => hnotS m hmS hm_eq
              have hm_nej : m ≠ j := fun h => hm_notS (h ▸ hS_j)
              let q := if m < j then m else m - 1
              have hq_lt : q < D'.gates.length := by dsimp only [q]; split_ifs <;> omega
              have hq_if : (if q < j then q else q + 1) = m := by dsimp only [q]; split_ifs <;> omega
              have hrw : remap w = N + N + q := by
                dsimp only [remap, q]; split_ifs <;> omega
              rw [hrw, hm_eq]
              have hrbD' : ∀ u ∈ D'.gates[q].inputs, u < (List.ofFn x).length + q := by
                intro u hu
                rw [List.length_ofFn]
                exact hD'ao.2.1 q hq_lt u (by change u ∈ (D'.gates.getD q ⟨GateOp.or, []⟩).inputs; rw [List.getD_eq_getElem _ _ hq_lt]; exact hu)
              have h1 := wiresFrom_gate D'.gates (List.ofFn x) q hq_lt hrbD'
              rw [List.length_ofFn] at h1
              change (wiresFrom D'.gates (List.ofFn x)).getD (N + N + q) false = _
              rw [h1, hDwire x m hm_lt, hgateAt_eq m hm_lt, hD'get q hq_lt]
              have hgate_eq : D.gates[if q < j then q else q + 1]'(by rw [hq_if]; exact hm_lt) = D.gates[m]'hm_lt := by
                congr 1
              rw [hgate_eq]
              dsimp only
              congr 1
              rw [List.map_map]
              apply List.map_congr_left
              intro u hu
              have hult : u < w := by
                have := hDrb m hm_lt u (by rw [hgateAt_eq m hm_lt]; exact hu); omega
              have hu_notS : ∀ k ∈ S, u ≠ N + N + k := by
                intro k hkS huk
                subst huk
                exact hm_notS (hS_closed m hm_lt k hkS (by rw [hgateAt_eq m hm_lt]; exact hu))
              exact ih u hult hu_notS
      have hD'fun : ∀ x : Fin (N + N) → Bool, circuitFun (N + N) D' x =
          Decidable.decide (∃ p l : Fin N, I p l ∧ x (Fin.castAdd N p) = true ∧ x (Fin.natAdd N l) = true) := by
        intro x
        rw [← hDfun x]
        exact hD'agree x D.output hout
      have hle := hDmin D' hD'ao hD'fun
      rw [sizeEq, sizeEq, hD'len] at hle
      omega
  exact ⟨D, hDmono, hDrb, hDleC, hDfun_iff, hClean, hOneHot⟩
