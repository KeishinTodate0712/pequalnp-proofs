import Mathlib
import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.MetaComplexity.NestedCover PEqualNP.TopForm

set_option maxHeartbeats 6000000 in
theorem PEqualNP.Outside.R_meta_2846_1
    (hNoSideAnd : ∀ (Np Nl : ℕ) (I : Fin Np → Fin Nl → Prop) [DecidableRel I] (C : PEqualNP.CircuitLowerBounds.Circuit), have f : (Fin (Np + Nl) → Bool) → Bool := fun z => Decidable.decide (∃ p : Fin Np, ∃ l : Fin Nl, I p l ∧ z (Fin.castAdd Nl p) = Bool.true ∧ z (Fin.natAdd Np l) = Bool.true); have g : ℕ → PEqualNP.CircuitLowerBounds.Gate := PEqualNP.MetaComplexity.NestedCover.gateAt C; (∀ p p' : Fin Np, ∀ l l' : Fin Nl, p ≠ p' → l ≠ l' → ¬ (I p l ∧ I p l' ∧ I p' l ∧ I p' l')) → PEqualNP.TopForm.IsAO2 (Np + Nl) C → (∀ z, PEqualNP.MetaComplexity.circuitFun (Np + Nl) C z = f z) → (∀ D, PEqualNP.TopForm.IsAO2 (Np + Nl) D → (∀ z, PEqualNP.MetaComplexity.circuitFun (Np + Nl) D z = f z) → C.size ≤ D.size) → (∃ T : Finset ℕ, (∀ i ∈ T, i < C.gates.length ∧ (g i).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧ (Np + Nl + i = C.output ∨ ∃ k ∈ T, ∀ k' < C.gates.length, (Np + Nl + i ∈ (g k').inputs ↔ k' = k))) ∧ ∀ w, (∀ z, (C.wires (List.ofFn z)).getD w Bool.false = Bool.true → f z = Bool.true) → (∃ k < C.gates.length, (g k).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧ w ∈ (g k).inputs) → ∀ k < C.gates.length, w ∈ (g k).inputs → k ∈ T) → ∀ i < C.gates.length, (g i).op = PEqualNP.CircuitLowerBounds.GateOp.and → (C.wires (List.ofFn fun k : Fin (Np + Nl) => Decidable.decide (k.val < Np))).getD (Np + Nl + i) Bool.false = Bool.false ∧ (C.wires (List.ofFn fun k : Fin (Np + Nl) => Decidable.decide (Np ≤ k.val))).getD (Np + Nl + i) Bool.false = Bool.false)
    (hNoCrossDirty : ∀ (Np Nl : ℕ) (I : Fin Np → Fin Nl → Prop) [DecidableRel I] (C : PEqualNP.CircuitLowerBounds.Circuit), have f : (Fin (Np + Nl) → Bool) → Bool := fun z => Decidable.decide (∃ p : Fin Np, ∃ l : Fin Nl, I p l ∧ z (Fin.castAdd Nl p) = Bool.true ∧ z (Fin.natAdd Np l) = Bool.true); have g : ℕ → PEqualNP.CircuitLowerBounds.Gate := PEqualNP.MetaComplexity.NestedCover.gateAt C; (∀ p p' : Fin Np, ∀ l l' : Fin Nl, p ≠ p' → l ≠ l' → ¬ (I p l ∧ I p l' ∧ I p' l ∧ I p' l')) → PEqualNP.TopForm.IsAO2 (Np + Nl) C → (∀ z, PEqualNP.MetaComplexity.circuitFun (Np + Nl) C z = f z) → (∀ D, PEqualNP.TopForm.IsAO2 (Np + Nl) D → (∀ z, PEqualNP.MetaComplexity.circuitFun (Np + Nl) D z = f z) → C.size ≤ D.size) → (∃ T : Finset ℕ, (∀ i ∈ T, i < C.gates.length ∧ (g i).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧ (Np + Nl + i = C.output ∨ ∃ k ∈ T, ∀ k' < C.gates.length, (Np + Nl + i ∈ (g k').inputs ↔ k' = k))) ∧ ∀ w, (∀ z, (C.wires (List.ofFn z)).getD w Bool.false = Bool.true → f z = Bool.true) → (∃ k < C.gates.length, (g k).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧ w ∈ (g k).inputs) → ∀ k < C.gates.length, w ∈ (g k).inputs → k ∈ T) → (∀ i < C.gates.length, (g i).op = PEqualNP.CircuitLowerBounds.GateOp.and → (C.wires (List.ofFn fun k : Fin (Np + Nl) => Decidable.decide (k.val < Np))).getD (Np + Nl + i) Bool.false = Bool.false ∧ (C.wires (List.ofFn fun k : Fin (Np + Nl) => Decidable.decide (Np ≤ k.val))).getD (Np + Nl + i) Bool.false = Bool.false) → ∀ i < C.gates.length, (g i).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ z, (C.wires (List.ofFn z)).getD (Np + Nl + i) Bool.false = Bool.true → f z = Bool.true) :
    ∀ (Np Nl : ℕ) (I : Fin Np → Fin Nl → Prop) [DecidableRel I] (C : PEqualNP.CircuitLowerBounds.Circuit), (∀ p p' : Fin Np, ∀ l l' : Fin Nl, p ≠ p' → l ≠ l' → ¬ (I p l ∧ I p l' ∧ I p' l ∧ I p' l')) → PEqualNP.TopForm.IsAO2 (Np + Nl) C → (∀ z : Fin (Np + Nl) → Bool, PEqualNP.MetaComplexity.circuitFun (Np + Nl) C z = decide (∃ p : Fin Np, ∃ l : Fin Nl, I p l ∧ z (Fin.castAdd Nl p) = true ∧ z (Fin.natAdd Np l) = true)) → (∀ D : PEqualNP.CircuitLowerBounds.Circuit, PEqualNP.TopForm.IsAO2 (Np + Nl) D → (∀ z : Fin (Np + Nl) → Bool, PEqualNP.MetaComplexity.circuitFun (Np + Nl) D z = decide (∃ p : Fin Np, ∃ l : Fin Nl, I p l ∧ z (Fin.castAdd Nl p) = true ∧ z (Fin.natAdd Np l) = true)) → C.size ≤ D.size) → (∃ T : Finset ℕ, (∀ i ∈ T, i < C.gates.length ∧ (PEqualNP.MetaComplexity.NestedCover.gateAt C i).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧ (Np + Nl + i = C.output ∨ ∃ k ∈ T, ∀ k' < C.gates.length, (Np + Nl + i ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt C k').inputs ↔ k' = k))) ∧ ∀ w : ℕ, (∀ z : Fin (Np + Nl) → Bool, (C.wires (List.ofFn z)).getD w false = true → ∃ p : Fin Np, ∃ l : Fin Nl, I p l ∧ z (Fin.castAdd Nl p) = true ∧ z (Fin.natAdd Np l) = true) → (∃ k < C.gates.length, (PEqualNP.MetaComplexity.NestedCover.gateAt C k).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧ w ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt C k).inputs) → ∀ k < C.gates.length, w ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt C k).inputs → k ∈ T) → (∃ P L : Finset ℕ, (∀ w ∈ P, w < Np ∨ ∃ i < C.gates.length, w = Np + Nl + i ∧ (PEqualNP.MetaComplexity.NestedCover.gateAt C i).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧ ∀ u ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt C i).inputs, u ∈ P) ∧ (∀ w ∈ L, (Np ≤ w ∧ w < Np + Nl) ∨ ∃ i < C.gates.length, w = Np + Nl + i ∧ (PEqualNP.MetaComplexity.NestedCover.gateAt C i).op = PEqualNP.CircuitLowerBounds.GateOp.or ∧ ∀ u ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt C i).inputs, u ∈ L) ∧ ∀ i < C.gates.length, (PEqualNP.MetaComplexity.NestedCover.gateAt C i).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∃ a b : ℕ, (PEqualNP.MetaComplexity.NestedCover.gateAt C i).inputs = [a, b] ∧ ((a ∈ P ∧ b ∈ L) ∨ (a ∈ L ∧ b ∈ P))) := by
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
  intro Np Nl I decI C hno4 hC hfun hleast hTS
  let f : (Fin (Np + Nl) → Bool) → Bool := fun z =>
    Decidable.decide (∃ p : Fin Np, ∃ l : Fin Nl, I p l ∧ z (Fin.castAdd Nl p) = true ∧ z (Fin.natAdd Np l) = true)
  obtain ⟨T, hT_mem, hT_close⟩ := hTS
  have hTS' : ∃ T : Finset ℕ, (∀ i ∈ T, i < C.gates.length ∧ (gateAt C i).op = GateOp.or ∧
      (Np + Nl + i = C.output ∨ ∃ k ∈ T, ∀ k' < C.gates.length, (Np + Nl + i ∈ (gateAt C k').inputs ↔ k' = k))) ∧
      ∀ w, (∀ z, (C.wires (List.ofFn z)).getD w false = true → f z = true) →
        (∃ k < C.gates.length, (gateAt C k).op = GateOp.or ∧ w ∈ (gateAt C k).inputs) →
        ∀ k < C.gates.length, w ∈ (gateAt C k).inputs → k ∈ T := by
    refine ⟨T, hT_mem, fun w hw => hT_close w (fun z hz => decide_eq_true_iff.1 (hw z hz))⟩
  have hSide := hNoSideAnd Np Nl I C hno4 hC hfun hleast hTS'
  have hNoDirty := hNoCrossDirty Np Nl I C hno4 hC hfun hleast hTS' hSide
  have hCrb : ReadsBack (Np + Nl) C := hC.2.1
  have hgateAt_eq : ∀ i (hi : i < C.gates.length), gateAt C i = C.gates[i] := fun i hi => List.getD_eq_getElem _ _ hi
  have hCwire : ∀ (z : Fin (Np + Nl) → Bool) (i : ℕ) (hi : i < C.gates.length),
      (C.wires (List.ofFn z)).getD (Np + Nl + i) false =
        (gateAt C i).op.eval ((gateAt C i).inputs.map fun u => (C.wires (List.ofFn z)).getD u false) := by
    intro z i hi
    have hrb_i : ∀ u ∈ C.gates[i].inputs, u < (List.ofFn z).length + i := by
      intro u hu; rw [List.length_ofFn]; exact hCrb i hi u (by rw [hgateAt_eq i hi]; exact hu)
    have h1 := wiresFrom_gate C.gates (List.ofFn z) i hi hrb_i
    rw [List.length_ofFn] at h1
    rw [hgateAt_eq i hi]
    exact h1
  let Below : ℕ → Prop := fun w => ∀ z : Fin (Np + Nl) → Bool, (C.wires (List.ofFn z)).getD w false = true → f z = true
  have hBelow_out : Below C.output := by
    intro z hz
    exact (hfun z).symm.trans hz
  have hBelow_not_in_and : ∀ i (hi : i < C.gates.length), (gateAt C i).op = GateOp.and →
      ∀ a ∈ (gateAt C i).inputs, ¬ Below a := by
    intro i hi hiand a ha hBa
    have halt : a < Np + Nl + i := hCrb i hi a ha
    let remap : ℕ → ℕ := fun w => if w < Np + Nl + i then w else if w = Np + Nl + i then a else w - 1
    let D' : Circuit := ⟨(C.gates.eraseIdx i).map (fun g => ⟨g.op, g.inputs.map remap⟩), remap C.output⟩
    have hD'len : D'.gates.length = C.gates.length - 1 := by
      simp only [D', List.length_map, List.length_eraseIdx, if_pos hi]
    have hD'get : ∀ q (hq : q < D'.gates.length),
        D'.gates[q] = ⟨(C.gates[if q < i then q else q + 1]'(by rw [hD'len] at hq; split_ifs <;> omega)).op,
          (C.gates[if q < i then q else q + 1]'(by rw [hD'len] at hq; split_ifs <;> omega)).inputs.map remap⟩ := by
      intro q hq
      have hqe : q < (C.gates.eraseIdx i).length := by rw [List.length_eraseIdx, if_pos hi]; omega
      simp only [D', List.getElem_map]
      have heq : (C.gates.eraseIdx i)[q]'hqe = C.gates[if q < i then q else q + 1]'(by rw [hD'len] at hq; split_ifs <;> omega) := by
        split_ifs with hqi
        · exact List.getElem_eraseIdx_of_lt hqe hqi
        · exact List.getElem_eraseIdx_of_ge hqe (by omega)
      rw [heq]
    have hD'ao : IsAO2 (Np + Nl) D' := by
      refine ⟨?_, ?_, ?_⟩
      · intro g hg
        obtain ⟨g0, hg0, rfl⟩ := List.mem_map.1 hg
        exact hC.1 g0 (List.mem_of_mem_eraseIdx hg0)
      · intro q hq u hu
        change u ∈ (D'.gates.getD q ⟨GateOp.or, []⟩).inputs at hu
        rw [List.getD_eq_getElem _ _ hq, hD'get q hq] at hu
        obtain ⟨v, hv, rfl⟩ := List.mem_map.1 hu
        have hidx_lt : (if q < i then q else q + 1) < C.gates.length := by rw [hD'len] at hq; split_ifs <;> omega
        have hvlt : v < Np + Nl + (if q < i then q else q + 1) := by
          apply hCrb (if q < i then q else q + 1) hidx_lt v
          rw [hgateAt_eq _ hidx_lt]; exact hv
        dsimp only [remap]
        split_ifs at hvlt ⊢ <;> omega
      · intro g hg
        obtain ⟨g0, hg0, rfl⟩ := List.mem_map.1 hg
        simp only [List.length_map]
        exact hC.2.2 g0 (List.mem_of_mem_eraseIdx hg0)
    have hD'false : ∀ (z : Fin (Np + Nl) → Bool), f z = false →
        ∀ w, (D'.wires (List.ofFn z)).getD (remap w) false = (C.wires (List.ofFn z)).getD w false := by
      intro z hfz w
      induction w using Nat.strong_induction_on with
      | ind w ih =>
        by_cases hwin : w < Np + Nl
        · have hrw : remap w = w := if_pos (by omega)
          rw [hrw]
          change (wiresFrom D'.gates (List.ofFn z)).getD w false = (wiresFrom C.gates (List.ofFn z)).getD w false
          rw [wiresFrom_getD_lt _ _ _ (by rw [List.length_ofFn]; exact hwin),
            wiresFrom_getD_lt _ _ _ (by rw [List.length_ofFn]; exact hwin)]
        · by_cases hwhi : Np + Nl + C.gates.length ≤ w
          · have hrw : remap w = w - 1 := by dsimp only [remap]; rw [if_neg (by omega), if_neg (by omega)]
            rw [hrw]
            change (wiresFrom D'.gates (List.ofFn z)).getD (w - 1) false = (wiresFrom C.gates (List.ofFn z)).getD w false
            rw [List.getD_eq_default _ _ (by rw [wiresFrom_len, List.length_ofFn, hD'len]; omega),
              List.getD_eq_default _ _ (by rw [wiresFrom_len, List.length_ofFn]; omega)]
          · by_cases hwi : w = Np + Nl + i
            · subst hwi
              have hrw : remap (Np + Nl + i) = a := by dsimp only [remap]; rw [if_neg (by omega), if_pos rfl]
              have hra : remap a = a := if_pos halt
              have ha0 : (C.wires (List.ofFn z)).getD a false = false := by
                cases hca : (C.wires (List.ofFn z)).getD a false
                · rfl
                · exfalso; have := hBa z hca; rw [hfz] at this; cases this
              have hi0 : (C.wires (List.ofFn z)).getD (Np + Nl + i) false = false := by
                rw [hCwire z i hi, hiand, evalAnd]
                cases hall : ((gateAt C i).inputs.map fun u => (C.wires (List.ofFn z)).getD u false).all id
                · rfl
                · exfalso
                  have htrue := List.all_eq_true.1 hall false (List.mem_map.2 ⟨a, ha, ha0⟩)
                  cases htrue
              rw [hrw, ← hra, ih a halt, ha0, hi0]
            · let m := w - (Np + Nl)
              have hm_eq : w = Np + Nl + m := by omega
              have hm_lt : m < C.gates.length := by omega
              have hm_nei : m ≠ i := by omega
              let q := if m < i then m else m - 1
              have hq_lt : q < D'.gates.length := by dsimp only [q]; split_ifs <;> omega
              have hq_if : (if q < i then q else q + 1) = m := by dsimp only [q]; split_ifs <;> omega
              have hrw : remap w = Np + Nl + q := by dsimp only [remap, q]; split_ifs <;> omega
              rw [hrw, hm_eq]
              have hrbD' : ∀ u ∈ D'.gates[q].inputs, u < (List.ofFn z).length + q := by
                intro u hu; rw [List.length_ofFn]
                exact hD'ao.2.1 q hq_lt u (by change u ∈ (D'.gates.getD q ⟨GateOp.or, []⟩).inputs; rw [List.getD_eq_getElem _ _ hq_lt]; exact hu)
              have h1 := wiresFrom_gate D'.gates (List.ofFn z) q hq_lt hrbD'
              rw [List.length_ofFn] at h1
              change (wiresFrom D'.gates (List.ofFn z)).getD (Np + Nl + q) false = _
              rw [h1, hCwire z m hm_lt, hgateAt_eq m hm_lt, hD'get q hq_lt]
              have hgate_eq : C.gates[if q < i then q else q + 1]'(by rw [hq_if]; exact hm_lt) = C.gates[m]'hm_lt := by congr 1
              rw [hgate_eq]; dsimp only; congr 1; rw [List.map_map]
              apply List.map_congr_left
              intro u hu
              have hult : u < w := by have := hCrb m hm_lt u (by rw [hgateAt_eq m hm_lt]; exact hu); omega
              exact ih u hult
    have hD'mono : ∀ (z : Fin (Np + Nl) → Bool) (w : ℕ),
        (C.wires (List.ofFn z)).getD w false = true →
        (D'.wires (List.ofFn z)).getD (remap w) false = true := by
      intro z w
      induction w using Nat.strong_induction_on with
      | ind w ih =>
        intro hwtrue
        by_cases hwin : w < Np + Nl
        · have hrw : remap w = w := if_pos (by omega)
          rw [hrw]
          change (wiresFrom D'.gates (List.ofFn z)).getD w false = true
          change (wiresFrom C.gates (List.ofFn z)).getD w false = true at hwtrue
          rw [wiresFrom_getD_lt _ _ _ (by rw [List.length_ofFn]; exact hwin)] at hwtrue ⊢
          exact hwtrue
        · by_cases hwhi : Np + Nl + C.gates.length ≤ w
          · exfalso
            change (wiresFrom C.gates (List.ofFn z)).getD w false = true at hwtrue
            rw [List.getD_eq_default _ _ (by rw [wiresFrom_len, List.length_ofFn]; omega)] at hwtrue
            cases hwtrue
          · by_cases hwi : w = Np + Nl + i
            · subst hwi
              have hrw : remap (Np + Nl + i) = a := by dsimp only [remap]; rw [if_neg (by omega), if_pos rfl]
              have hra : remap a = a := if_pos halt
              rw [hCwire z i hi, hiand, evalAnd] at hwtrue
              have hatrue : (C.wires (List.ofFn z)).getD a false = true :=
                List.all_eq_true.1 hwtrue _ (List.mem_map.2 ⟨a, ha, rfl⟩)
              rw [hrw, ← hra]
              exact ih a halt hatrue
            · let m := w - (Np + Nl)
              have hm_eq : w = Np + Nl + m := by omega
              have hm_lt : m < C.gates.length := by omega
              have hm_nei : m ≠ i := by omega
              let q := if m < i then m else m - 1
              have hq_lt : q < D'.gates.length := by dsimp only [q]; split_ifs <;> omega
              have hq_if : (if q < i then q else q + 1) = m := by dsimp only [q]; split_ifs <;> omega
              have hrw : remap w = Np + Nl + q := by dsimp only [remap, q]; split_ifs <;> omega
              rw [hrw]
              rw [hm_eq] at hwtrue
              have hrbD' : ∀ u ∈ D'.gates[q].inputs, u < (List.ofFn z).length + q := by
                intro u hu; rw [List.length_ofFn]
                exact hD'ao.2.1 q hq_lt u (by change u ∈ (D'.gates.getD q ⟨GateOp.or, []⟩).inputs; rw [List.getD_eq_getElem _ _ hq_lt]; exact hu)
              have h1 := wiresFrom_gate D'.gates (List.ofFn z) q hq_lt hrbD'
              rw [List.length_ofFn] at h1
              change (wiresFrom D'.gates (List.ofFn z)).getD (Np + Nl + q) false = true
              rw [h1, hD'get q hq_lt]
              rw [hCwire z m hm_lt, hgateAt_eq m hm_lt] at hwtrue
              have hgate_eq : C.gates[if q < i then q else q + 1]'(by rw [hq_if]; exact hm_lt) = C.gates[m]'hm_lt := by congr 1
              rw [hgate_eq]; dsimp only
              rcases hC.1 _ (List.getElem_mem hm_lt) with hand | hor
              · rw [hand, evalAnd] at hwtrue ⊢
                rw [List.map_map]
                apply List.all_eq_true.2
                intro b hb
                obtain ⟨u, hu, rfl⟩ := List.mem_map.1 hb
                have hult : u < w := by have := hCrb m hm_lt u (by rw [hgateAt_eq m hm_lt]; exact hu); omega
                have hutrue : (C.wires (List.ofFn z)).getD u false = true :=
                  List.all_eq_true.1 hwtrue _ (List.mem_map.2 ⟨u, hu, rfl⟩)
                exact ih u hult hutrue
              · rw [hor, evalOr] at hwtrue ⊢
                rw [List.map_map]
                obtain ⟨b, hb, hbeq⟩ := List.any_eq_true.1 hwtrue
                obtain ⟨u, hu, rfl⟩ := List.mem_map.1 hb
                have hult : u < w := by have := hCrb m hm_lt u (by rw [hgateAt_eq m hm_lt]; exact hu); omega
                apply List.any_eq_true.2
                exact ⟨true, List.mem_map.2 ⟨u, hu, ih u hult hbeq⟩, rfl⟩
    have hD'fun : ∀ z : Fin (Np + Nl) → Bool, circuitFun (Np + Nl) D' z = f z := by
      intro z
      cases hfz : f z
      · change (D'.wires (List.ofFn z)).getD (remap C.output) false = false
        rw [hD'false z hfz C.output]
        exact (hfun z).trans hfz
      · have hCtrue : (C.wires (List.ofFn z)).getD C.output false = true := (hfun z).trans hfz
        exact hD'mono z C.output hCtrue
    have hle := hleast D' hD'ao hD'fun
    rw [sizeEq, sizeEq, hD'len] at hle
    omega
  let zP : Fin (Np + Nl) → Bool := fun k => Decidable.decide (k.val < Np)
  let zL : Fin (Np + Nl) → Bool := fun k => Decidable.decide (Np ≤ k.val)
  have hf_zP : f zP = false := by
    dsimp only [f]
    rw [decide_eq_false_iff_not]
    rintro ⟨p, l, _, _, hl⟩
    dsimp only [zP] at hl
    rw [decide_eq_true_iff] at hl
    simp only [Fin.val_natAdd] at hl
    omega
  have hf_zL : f zL = false := by
    dsimp only [f]
    rw [decide_eq_false_iff_not]
    rintro ⟨p, l, _, hp, _⟩
    dsimp only [zL] at hp
    rw [decide_eq_true_iff] at hp
    simp only [Fin.val_castAdd] at hp
    have := p.isLt; omega
  have hBelow_of_both_false : ∀ w, w < Np + Nl + C.gates.length →
      (C.wires (List.ofFn zP)).getD w false = false →
      (C.wires (List.ofFn zL)).getD w false = false → Below w := by
    intro w
    induction w using Nat.strong_induction_on with
    | ind w ih =>
      intro hwlt hP0 hL0
      by_cases hwP : w < Np
      · exfalso
        have hw2 : w < (List.ofFn zP).length := by rw [List.length_ofFn]; omega
        change (wiresFrom C.gates (List.ofFn zP)).getD w false = false at hP0
        rw [wiresFrom_getD_lt _ _ _ hw2, List.getD_eq_getElem _ _ hw2, List.getElem_ofFn] at hP0
        dsimp only [zP] at hP0
        rw [decide_eq_true hwP] at hP0
        cases hP0
      · by_cases hwL : w < Np + Nl
        · exfalso
          have hw2 : w < (List.ofFn zL).length := by rw [List.length_ofFn]; omega
          change (wiresFrom C.gates (List.ofFn zL)).getD w false = false at hL0
          rw [wiresFrom_getD_lt _ _ _ hw2, List.getD_eq_getElem _ _ hw2, List.getElem_ofFn] at hL0
          dsimp only [zL] at hL0
          rw [decide_eq_true (by omega)] at hL0
          cases hL0
        · let m := w - (Np + Nl)
          have hm_eq : w = Np + Nl + m := by omega
          have hm_lt : m < C.gates.length := by omega
          rw [hm_eq] at hP0 hL0 ⊢
          have hmemm : gateAt C m ∈ C.gates := by rw [hgateAt_eq m hm_lt]; exact List.getElem_mem hm_lt
          rcases hC.1 _ hmemm with hand | hor
          · exact hNoDirty m hm_lt hand
          · intro z hz
            rw [hCwire z m hm_lt, hor, evalOr] at hz
            obtain ⟨b, hb, hbeq⟩ := List.any_eq_true.1 hz
            obtain ⟨u, hu, rfl⟩ := List.mem_map.1 hb
            have hult : u < Np + Nl + m := hCrb m hm_lt u hu
            rw [hCwire zP m hm_lt, hor, evalOr] at hP0
            rw [hCwire zL m hm_lt, hor, evalOr] at hL0
            have huP : (C.wires (List.ofFn zP)).getD u false = false := by
              have := List.any_eq_false.1 hP0 _ (List.mem_map.2 ⟨u, hu, rfl⟩); simpa using this
            have huL : (C.wires (List.ofFn zL)).getD u false = false := by
              have := List.any_eq_false.1 hL0 _ (List.mem_map.2 ⟨u, hu, rfl⟩); simpa using this
            exact ih u (by omega) (by omega) huP huL z hbeq
  have hT_reader : ∀ i ∈ T, ∀ k < C.gates.length, Np + Nl + i ∈ (gateAt C k).inputs → k ∈ T := by
    intro i hiT k hk hread
    obtain ⟨_, _, hout_or⟩ := hT_mem i hiT
    rcases hout_or with hout | ⟨r, hrT, huniq⟩
    · have hBi : Below (Np + Nl + i) := by rw [hout]; exact hBelow_out
      have hkor : (gateAt C k).op = GateOp.or := by
        have hmemk : gateAt C k ∈ C.gates := by rw [hgateAt_eq k hk]; exact List.getElem_mem hk
        rcases hC.1 _ hmemk with hand | hor
        · exact absurd hBi (hBelow_not_in_and k hk hand (Np + Nl + i) hread)
        · exact hor
      exact hT_close (Np + Nl + i) (fun z hz => decide_eq_true_iff.1 (hBi z hz)) ⟨k, hk, hkor, hread⟩ k hk hread
    · have hkr : k = r := (huniq k hk).1 hread
      subst hkr
      exact hrT
  let stepSet : Finset ℕ → ℕ → Finset ℕ := fun S i =>
    if (gateAt C i).op = GateOp.or ∧ ∀ u ∈ (gateAt C i).inputs, u ∈ S then insert (Np + Nl + i) S else S
  let buildSet : Finset ℕ → ℕ → Finset ℕ := fun S0 m => (List.range m).foldl stepSet S0
  have build_succ : ∀ S0 m, buildSet S0 (m + 1) = stepSet (buildSet S0 m) m := by
    intro S0 m; simp only [buildSet, List.range_succ, List.foldl_append, List.foldl_cons, List.foldl_nil]
  have build_mono : ∀ S0 {m1 m2}, m1 ≤ m2 → buildSet S0 m1 ⊆ buildSet S0 m2 := by
    intro S0 m1 m2 hle
    induction hle with
    | refl => exact Finset.Subset.refl _
    | step _ ih =>
      intro w hw; rw [build_succ]; dsimp only [stepSet]; split_ifs
      · exact Finset.mem_insert_of_mem (ih hw)
      · exact ih hw
  have build_lt_iff : ∀ S0 {m1 m2 w}, w < Np + Nl + m1 → m1 ≤ m2 →
      (w ∈ buildSet S0 m1 ↔ w ∈ buildSet S0 m2) := by
    intro S0 m1 m2 w hw hle
    induction hle with
    | refl => exact Iff.rfl
    | @step m h1 ih =>
      constructor
      · intro h; exact build_mono S0 (Nat.le_succ m) (ih.1 h)
      · intro h
        rw [build_succ] at h; dsimp only [stepSet] at h
        split_ifs at h
        · rcases Finset.mem_insert.1 h with hwm | h'
          · have hm1 : m1 ≤ m := h1; omega
          · exact ih.2 h'
        · exact ih.2 h
  have build_mem : ∀ S0 m w, w ∈ buildSet S0 m →
      w ∈ S0 ∨ ∃ i < m, w = Np + Nl + i ∧ (gateAt C i).op = GateOp.or ∧
        ∀ u ∈ (gateAt C i).inputs, u ∈ buildSet S0 m := by
    intro S0 m
    induction m with
    | zero => intro w hw; exact Or.inl hw
    | succ m ih =>
      intro w hw
      rw [build_succ] at hw
      dsimp only [stepSet] at hw
      split_ifs at hw with hcond
      · rcases Finset.mem_insert.1 hw with rfl | hw'
        · exact Or.inr ⟨m, Nat.lt_succ_self m, rfl, hcond.1, fun u hu => build_mono S0 (Nat.le_succ m) (hcond.2 u hu)⟩
        · rcases ih w hw' with h0 | ⟨i, hi, heq, hop, hins⟩
          · exact Or.inl h0
          · exact Or.inr ⟨i, Nat.lt_succ_of_lt hi, heq, hop, fun u hu => build_mono S0 (Nat.le_succ m) (hins u hu)⟩
      · rcases ih w hw with h0 | ⟨i, hi, heq, hop, hins⟩
        · exact Or.inl h0
        · exact Or.inr ⟨i, Nat.lt_succ_of_lt hi, heq, hop, fun u hu => build_mono S0 (Nat.le_succ m) (hins u hu)⟩
  have build_closed : ∀ S0 i, i < C.gates.length → (gateAt C i).op = GateOp.or →
      (∀ u ∈ (gateAt C i).inputs, u ∈ buildSet S0 C.gates.length) →
      Np + Nl + i ∈ buildSet S0 C.gates.length := by
    intro S0 i hi hor hins
    apply build_mono S0 (Nat.succ_le_of_lt hi)
    rw [build_succ]
    dsimp only [stepSet]
    have hins' : ∀ u ∈ (gateAt C i).inputs, u ∈ buildSet S0 i := by
      intro u hu
      exact (build_lt_iff S0 (hCrb i hi u hu) (le_of_lt hi)).2 (hins u hu)
    rw [if_pos ⟨hor, hins'⟩]
    exact Finset.mem_insert_self _ _
  let P : Finset ℕ := buildSet (Finset.range Np) C.gates.length
  let L : Finset ℕ := buildSet (Finset.Ico Np (Np + Nl)) C.gates.length
  have hP_spec : ∀ w ∈ P, w < Np ∨ ∃ i < C.gates.length, w = Np + Nl + i ∧ (gateAt C i).op = GateOp.or ∧
      ∀ u ∈ (gateAt C i).inputs, u ∈ P := by
    intro w hw
    rcases build_mem _ _ w hw with h0 | h1
    · exact Or.inl (Finset.mem_range.1 h0)
    · exact Or.inr h1
  have hL_spec : ∀ w ∈ L, (Np ≤ w ∧ w < Np + Nl) ∨ ∃ i < C.gates.length, w = Np + Nl + i ∧ (gateAt C i).op = GateOp.or ∧
      ∀ u ∈ (gateAt C i).inputs, u ∈ L := by
    intro w hw
    rcases build_mem _ _ w hw with h0 | h1
    · exact Or.inl (Finset.mem_Ico.1 h0)
    · exact Or.inr h1
  have hPureP : ∀ w, w < Np + Nl + C.gates.length → (∀ m ∈ T, w ≠ Np + Nl + m) →
      ¬ Below w → (C.wires (List.ofFn zL)).getD w false = false → w ∈ P := by
    intro w
    induction w using Nat.strong_induction_on with
    | ind w ih =>
      intro hwlt hnotT hnotB hL0
      by_cases hwP : w < Np
      · exact build_mono _ (Nat.zero_le _) (Finset.mem_range.2 hwP)
      · by_cases hwL : w < Np + Nl
        · exfalso
          have hw2 : w < (List.ofFn zL).length := by rw [List.length_ofFn]; omega
          change (wiresFrom C.gates (List.ofFn zL)).getD w false = false at hL0
          rw [wiresFrom_getD_lt _ _ _ hw2, List.getD_eq_getElem _ _ hw2, List.getElem_ofFn] at hL0
          dsimp only [zL] at hL0
          rw [decide_eq_true (by omega)] at hL0
          cases hL0
        · let m := w - (Np + Nl)
          have hm_eq : w = Np + Nl + m := by omega
          have hm_lt : m < C.gates.length := by omega
          have hm_notT : m ∉ T := fun hmT => hnotT m hmT hm_eq
          rw [hm_eq] at hnotB hL0 ⊢
          have hmemm : gateAt C m ∈ C.gates := by rw [hgateAt_eq m hm_lt]; exact List.getElem_mem hm_lt
          have hor : (gateAt C m).op = GateOp.or := by
            rcases hC.1 _ hmemm with hand | hor
            · exact absurd (hNoDirty m hm_lt hand) hnotB
            · exact hor
          apply build_closed _ m hm_lt hor
          intro u hu
          have hult : u < Np + Nl + m := hCrb m hm_lt u hu
          have hu_notT : ∀ r ∈ T, u ≠ Np + Nl + r := by
            intro r hrT hur
            subst hur
            exact hm_notT (hT_reader r hrT m hm_lt hu)
          have hu_notB : ¬ Below u := by
            intro hBu
            exact hm_notT (hT_close u (fun z hz => decide_eq_true_iff.1 (hBu z hz)) ⟨m, hm_lt, hor, hu⟩ m hm_lt hu)
          rw [hCwire zL m hm_lt, hor, evalOr] at hL0
          have huL : (C.wires (List.ofFn zL)).getD u false = false := by
            have := List.any_eq_false.1 hL0 _ (List.mem_map.2 ⟨u, hu, rfl⟩); simpa using this
          exact ih u (by omega) (by omega) hu_notT hu_notB huL
  have hPureL : ∀ w, w < Np + Nl + C.gates.length → (∀ m ∈ T, w ≠ Np + Nl + m) →
      ¬ Below w → (C.wires (List.ofFn zP)).getD w false = false → w ∈ L := by
    intro w
    induction w using Nat.strong_induction_on with
    | ind w ih =>
      intro hwlt hnotT hnotB hP0
      by_cases hwP : w < Np
      · exfalso
        have hw2 : w < (List.ofFn zP).length := by rw [List.length_ofFn]; omega
        change (wiresFrom C.gates (List.ofFn zP)).getD w false = false at hP0
        rw [wiresFrom_getD_lt _ _ _ hw2, List.getD_eq_getElem _ _ hw2, List.getElem_ofFn] at hP0
        dsimp only [zP] at hP0
        rw [decide_eq_true hwP] at hP0
        cases hP0
      · by_cases hwL : w < Np + Nl
        · exact build_mono _ (Nat.zero_le _) (Finset.mem_Ico.2 ⟨by omega, hwL⟩)
        · let m := w - (Np + Nl)
          have hm_eq : w = Np + Nl + m := by omega
          have hm_lt : m < C.gates.length := by omega
          have hm_notT : m ∉ T := fun hmT => hnotT m hmT hm_eq
          rw [hm_eq] at hnotB hP0 ⊢
          have hmemm : gateAt C m ∈ C.gates := by rw [hgateAt_eq m hm_lt]; exact List.getElem_mem hm_lt
          have hor : (gateAt C m).op = GateOp.or := by
            rcases hC.1 _ hmemm with hand | hor
            · exact absurd (hNoDirty m hm_lt hand) hnotB
            · exact hor
          apply build_closed _ m hm_lt hor
          intro u hu
          have hult : u < Np + Nl + m := hCrb m hm_lt u hu
          have hu_notT : ∀ r ∈ T, u ≠ Np + Nl + r := by
            intro r hrT hur
            subst hur
            exact hm_notT (hT_reader r hrT m hm_lt hu)
          have hu_notB : ¬ Below u := by
            intro hBu
            exact hm_notT (hT_close u (fun z hz => decide_eq_true_iff.1 (hBu z hz)) ⟨m, hm_lt, hor, hu⟩ m hm_lt hu)
          rw [hCwire zP m hm_lt, hor, evalOr] at hP0
          have huP : (C.wires (List.ofFn zP)).getD u false = false := by
            have := List.any_eq_false.1 hP0 _ (List.mem_map.2 ⟨u, hu, rfl⟩); simpa using this
          exact ih u (by omega) (by omega) hu_notT hu_notB huP
  refine ⟨P, L, hP_spec, hL_spec, ?_⟩
  intro i hi hiand
  have hlen2 : (gateAt C i).inputs.length = 2 := by
    rw [hgateAt_eq i hi]; exact hC.2.2 _ (List.getElem_mem hi)
  rcases hins : (gateAt C i).inputs with _ | ⟨a, _ | ⟨b, _ | ⟨c, l⟩⟩⟩
  · simp [hins] at hlen2
  · simp [hins] at hlen2
  · refine ⟨a, b, rfl, ?_⟩
    have ha_mem : a ∈ (gateAt C i).inputs := by rw [hins]; exact List.mem_cons_self
    have hb_mem : b ∈ (gateAt C i).inputs := by rw [hins]; exact List.mem_cons_of_mem _ List.mem_cons_self
    have ha_lt : a < Np + Nl + C.gates.length := by have := hCrb i hi a ha_mem; omega
    have hb_lt : b < Np + Nl + C.gates.length := by have := hCrb i hi b hb_mem; omega
    have ha_notB : ¬ Below a := hBelow_not_in_and i hi hiand a ha_mem
    have hb_notB : ¬ Below b := hBelow_not_in_and i hi hiand b hb_mem
    have hi_notT : i ∉ T := by
      intro hiT
      have hor := (hT_mem i hiT).2.1
      rw [hiand] at hor; cases hor
    have ha_notT : ∀ m ∈ T, a ≠ Np + Nl + m := by
      intro m hmT ham; subst ham; exact hi_notT (hT_reader m hmT i hi ha_mem)
    have hb_notT : ∀ m ∈ T, b ≠ Np + Nl + m := by
      intro m hmT hbm; subst hbm; exact hi_notT (hT_reader m hmT i hi hb_mem)
    have hSide_i := hSide i hi hiand
    have hiP0 : (C.wires (List.ofFn zP)).getD (Np + Nl + i) false = false := hSide_i.1
    have hiL0 : (C.wires (List.ofFn zL)).getD (Np + Nl + i) false = false := hSide_i.2
    rw [hCwire zP i hi, hiand, hins, evalAnd] at hiP0
    rw [hCwire zL i hi, hiand, hins, evalAnd] at hiL0
    simp only [List.map_cons, List.map_nil, List.all_cons, List.all_nil, id_eq, Bool.and_true] at hiP0 hiL0
    cases haP : (C.wires (List.ofFn zP)).getD a false
    · cases haL : (C.wires (List.ofFn zL)).getD a false
      · exact absurd (hBelow_of_both_false a ha_lt haP haL) ha_notB
      · rw [haL, Bool.true_and] at hiL0
        exact Or.inr ⟨hPureL a ha_lt ha_notT ha_notB haP, hPureP b hb_lt hb_notT hb_notB hiL0⟩
    · rw [haP, Bool.true_and] at hiP0
      cases haL : (C.wires (List.ofFn zL)).getD a false
      · exact Or.inl ⟨hPureP a ha_lt ha_notT ha_notB haL, hPureL b hb_lt hb_notT hb_notB hiP0⟩
      · rw [haL, Bool.true_and] at hiL0
        exact absurd (hBelow_of_both_false b hb_lt hiP0 hiL0) hb_notB
  · simp [hins] at hlen2
