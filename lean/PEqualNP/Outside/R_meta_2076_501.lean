import Mathlib
import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.TopForm PEqualNP.EdgeOwnership PEqualNP.CleanedNonEdge
  PEqualNP.MetaComplexity PEqualNP.MetaComplexity.NestedCover

theorem PEqualNP.Outside.R_meta_2076_501
    (hOneJunk : ∃ k : ℕ, ∀ (n : ℕ) (G : SimpleGraph (Fin n)) [DecidableRel G.Adj],
      (∀ (v : Fin n) (p : G.Walk v v), p.IsCycle → 5 ≤ p.length) → NoFourCycle G →
      ∀ (C : Circuit) (H : SimpleGraph (Fin n)), IsLeastAO G C → TopForm G C →
      H ≤ G.deleteEdges ↑(starEdges G C) →
      (∀ v : Fin n, (H.neighborSet v).ncard = 0 ∨ 3 ≤ (H.neighborSet v).ncard) →
      (∃ g : ℕ, junk G C = {g}) →
      {e | e ∈ H.edgeSet ∧ ¬ ∃ u v : Fin n, e = s(u, v) ∧ ∃ h < C.gates.length, ∃ b : Fin 2,
        2 ≤ (orIn n C (n + h)).card ∧ (∀ w ∈ orIn n C (n + h), G.Adj u w) ∧
        orIn n C (opnd C h b) = {v}}.ncard ≤ k * (C.size + 1))
    (hAnti : ∃ k : ℕ, ∀ (n : ℕ) (G : SimpleGraph (Fin n)) [DecidableRel G.Adj],
      (∀ (v : Fin n) (p : G.Walk v v), p.IsCycle → 5 ≤ p.length) → NoFourCycle G →
      ∀ (C : Circuit) (H : SimpleGraph (Fin n)), IsLeastAO G C → TopForm G C →
      H ≤ G.deleteEdges ↑(starEdges G C) →
      (∀ v : Fin n, (H.neighborSet v).ncard = 0 ∨ 3 ≤ (H.neighborSet v).ncard) →
      (2 ≤ (junk G C).card ∧ ∀ i ∈ junk G C, ∀ j ∈ junk G C, ¬ InCone n C i j) →
      {e | e ∈ H.edgeSet ∧ ¬ ∃ u v : Fin n, e = s(u, v) ∧ ∃ h < C.gates.length, ∃ b : Fin 2,
        2 ≤ (orIn n C (n + h)).card ∧ (∀ w ∈ orIn n C (n + h), G.Adj u w) ∧
        orIn n C (opnd C h b) = {v}}.ncard ≤ k * (C.size + 1))
    (hNested : ∃ k : ℕ, ∀ (n : ℕ) (G : SimpleGraph (Fin n)) [DecidableRel G.Adj],
      (∀ (v : Fin n) (p : G.Walk v v), p.IsCycle → 5 ≤ p.length) → NoFourCycle G →
      ∀ (C : Circuit) (H : SimpleGraph (Fin n)), IsLeastAO G C → TopForm G C →
      H ≤ G.deleteEdges ↑(starEdges G C) →
      (∀ v : Fin n, (H.neighborSet v).ncard = 0 ∨ 3 ≤ (H.neighborSet v).ncard) →
      (2 ≤ (junk G C).card ∧ ∃ i ∈ junk G C, ∃ j ∈ junk G C, InCone n C i j) →
      {e | e ∈ H.edgeSet ∧ ¬ ∃ u v : Fin n, e = s(u, v) ∧ ∃ h < C.gates.length, ∃ b : Fin 2,
        2 ≤ (orIn n C (n + h)).card ∧ (∀ w ∈ orIn n C (n + h), G.Adj u w) ∧
        orIn n C (opnd C h b) = {v}}.ncard ≤ k * (C.size + 1)) :
    ∃ (x1 : ℕ), ∀ (x2 : ℕ) (x3 : SimpleGraph (Fin x2)) [x4 : DecidableRel x3.Adj], (∀ (x5 : Fin x2) (x6 : x3.Walk x5 x5), x6.IsCycle → (5 : ℕ) ≤ x6.length) → x3.edgeFinset.Nonempty → ∀ (x7 : PEqualNP.CircuitLowerBounds.Circuit) (x8 : SimpleGraph (Fin x2)), PEqualNP.TopForm.IsLeastAO x3 x7 → PEqualNP.TopForm.TopForm x3 x7 → x8 ≤ x3.deleteEdges ↑(PEqualNP.TopForm.starEdges x3 x7) → (∀ (x12 : Fin x2), (x8.neighborSet x12).ncard = (0 : ℕ) ∨ (3 : ℕ) ≤ (x8.neighborSet x12).ncard) → x8.edgeSet.ncard ≤ x1 * (x7.size + (1 : ℕ)) := by
  obtain ⟨k1, hk1⟩ := hOneJunk
  obtain ⟨k2, hk2⟩ := hAnti
  obtain ⟨k3, hk3⟩ := hNested
  refine ⟨2 + k1 + k2 + k3, ?_⟩
  intro n G _ hg _ C H hl ht hH hdeg
  have h4 : NoFourCycle G := by
    intro a b hab
    by_contra hc
    rw [not_le] at hc
    obtain ⟨w1, hw1, w2, hw2, hne⟩ := Finset.one_lt_card.mp hc
    rw [Finset.mem_filter] at hw1 hw2
    obtain ⟨-, ha1, hb1⟩ := hw1
    obtain ⟨-, ha2, hb2⟩ := hw2
    have e1 := G.ne_of_adj ha1
    have e2 := G.ne_of_adj hb1
    have e3 := G.ne_of_adj ha2
    have e4 := G.ne_of_adj hb2
    have hcyc : (SimpleGraph.Walk.cons ha1 (SimpleGraph.Walk.cons hb1.symm
        (SimpleGraph.Walk.cons hb2 (SimpleGraph.Walk.cons ha2.symm SimpleGraph.Walk.nil)))).IsCycle := by
      rw [SimpleGraph.Walk.cons_isCycle_iff]
      refine ⟨?_, ?_⟩
      · simp [e4, hne, Ne.symm e1, Ne.symm e2,
          Ne.symm e3, Ne.symm hab]
      · simp [e1, e3, hab, hne, Ne.symm e1, Ne.symm e2]
    have h5 := hg a _ hcyc
    simp at h5
  have hsub : ∀ e ∈ H.edgeSet, e ∈ G.edgeSet \ ↑(starEdges G C) := by
    intro e he
    rw [← SimpleGraph.edgeSet_deleteEdges]
    exact SimpleGraph.edgeSet_mono hH he
  let P : Sym2 (Fin n) → Prop := fun e => ∃ u v : Fin n, e = s(u, v) ∧
    ∃ h < C.gates.length, ∃ b : Fin 2, 2 ≤ (orIn n C (n + h)).card ∧
      (∀ w ∈ orIn n C (n + h), G.Adj u w) ∧ orIn n C (opnd C h b) = {v}
  have hsplit : H.edgeSet.ncard =
      {e | e ∈ H.edgeSet ∧ P e}.ncard + {e | e ∈ H.edgeSet ∧ ¬ P e}.ncard :=
    (Set.ncard_inter_add_ncard_sdiff_eq_ncard H.edgeSet {e | P e}).symm
  have hbr : {e | e ∈ H.edgeSet ∧ P e}.ncard ≤ 2 * C.size := by
    classical
    let T : ℕ × Fin 2 → Finset (Sym2 (Fin n)) := fun p => Finset.univ.filter fun e =>
      ∃ u v : Fin n, e = s(u, v) ∧ 2 ≤ (orIn n C (n + p.1)).card ∧
        (∀ w ∈ orIn n C (n + p.1), G.Adj u w) ∧ orIn n C (opnd C p.1 p.2) = {v}
    have hT : ∀ p ∈ Finset.range C.gates.length ×ˢ (Finset.univ : Finset (Fin 2)),
        (T p).card ≤ 1 := by
      intro p _
      apply Finset.card_le_one.mpr
      intro e1 he1 e2 he2
      obtain ⟨u1, v1, rfl, hc1, ha1, hv1⟩ := (Finset.mem_filter.mp he1).2
      obtain ⟨u2, v2, rfl, -, ha2, hv2⟩ := (Finset.mem_filter.mp he2).2
      have hv : v1 = v2 := Finset.singleton_injective (hv1.symm.trans hv2)
      obtain ⟨w1, hw1, w2, hw2, hne⟩ := Finset.one_lt_card.mp hc1
      by_cases hu : u1 = u2
      · rw [hu, hv]
      · exfalso
        exact hne (Finset.card_le_one.mp (h4 u1 u2 hu) w1
          (Finset.mem_filter.mpr ⟨Finset.mem_univ _, ha1 w1 hw1, ha2 w1 hw1⟩) w2
          (Finset.mem_filter.mpr ⟨Finset.mem_univ _, ha1 w2 hw2, ha2 w2 hw2⟩))
    have hsT : {e | e ∈ H.edgeSet ∧ P e} ⊆
        ↑((Finset.range C.gates.length ×ˢ (Finset.univ : Finset (Fin 2))).biUnion T) := by
      intro e he
      obtain ⟨u, v, he', h, hh, b, hc, ha, hv⟩ := he.2
      rw [Finset.mem_coe, Finset.mem_biUnion]
      exact ⟨(h, b), Finset.mem_product.mpr ⟨Finset.mem_range.mpr hh, Finset.mem_univ _⟩,
        Finset.mem_filter.mpr ⟨Finset.mem_univ _, u, v, he', hc, ha, hv⟩⟩
    calc {e | e ∈ H.edgeSet ∧ P e}.ncard
        ≤ (↑((Finset.range C.gates.length ×ˢ (Finset.univ : Finset (Fin 2))).biUnion T) :
            Set (Sym2 (Fin n))).ncard := Set.ncard_le_ncard hsT
      _ = ((Finset.range C.gates.length ×ˢ (Finset.univ : Finset (Fin 2))).biUnion T).card :=
          Set.ncard_coe_finset _
      _ ≤ (Finset.range C.gates.length ×ˢ (Finset.univ : Finset (Fin 2))).card * 1 :=
          Finset.card_biUnion_le_card_mul _ _ _ hT
      _ = 2 * C.size := by
          rw [Finset.card_product, Finset.card_range, Finset.card_univ, Fintype.card_fin]
          show C.gates.length * 2 * 1 = 2 * C.gates.length
          omega
  have hfin : ∀ k, k ≤ k1 + k2 + k3 → {e | e ∈ H.edgeSet ∧ ¬ P e}.ncard ≤ k * (C.size + 1) →
      H.edgeSet.ncard ≤ (2 + k1 + k2 + k3) * (C.size + 1) := by
    intro k hk hb
    have hm := Nat.mul_le_mul_right (C.size + 1) hk
    calc H.edgeSet.ncard = _ := hsplit
      _ ≤ 2 * C.size + k * (C.size + 1) := Nat.add_le_add hbr hb
      _ ≤ 2 * (C.size + 1) + (k1 + k2 + k3) * (C.size + 1) :=
          Nat.add_le_add (Nat.mul_le_mul_left 2 (Nat.le_succ _)) hm
      _ = (2 + k1 + k2 + k3) * (C.size + 1) := by ring
  rcases Nat.lt_or_ge (junk G C).card 1 with h0 | h1
  · have hj : junk G C = ∅ := Finset.card_eq_zero.mp (by omega)
    obtain ⟨⟨hao, hrb, hl2⟩, hfun, -⟩ := hl
    have hpre : ∀ {α : Type} (f : List α → Gate → List α), (∀ a g, ∃ b, f a g = a ++ [b]) →
        ∀ (l : List Gate) (a : List α), a <+: l.foldl f a := by
      intro α f hf l
      induction l with
      | nil => intro a; exact List.prefix_refl a
      | cons g t ih =>
        intro a
        obtain ⟨b, hb⟩ := hf a g
        rw [List.foldl_cons]
        exact (show a <+: f a g by rw [hb]; exact List.prefix_append a [b]).trans (ih _)
    have hlen : ∀ {α : Type} (f : List α → Gate → List α), (∀ a g, ∃ b, f a g = a ++ [b]) →
        ∀ (l : List Gate) (a : List α), (l.foldl f a).length = a.length + l.length := by
      intro α f hf l
      induction l with
      | nil => intro a; rfl
      | cons g t ih =>
        intro a
        obtain ⟨b, hb⟩ := hf a g
        rw [List.foldl_cons, ih, hb, List.length_append]
        simp only [List.length_cons, List.length_nil]
        omega
    have key : ∀ {α : Type} (f : List α → Gate → List α), (∀ a g, ∃ b, f a g = a ++ [b]) →
        ∀ (init : List α) (j : ℕ), j < C.gates.length → ∃ acc : List α,
          acc.length = init.length + j ∧ f acc (gateAt C j) <+: C.gates.foldl f init := by
      intro α f hf init j hj
      refine ⟨(C.gates.take j).foldl f init, ?_, ?_⟩
      · rw [hlen f hf, List.length_take]
        omega
      · have e2 : gateAt C j = C.gates[j] := List.getD_eq_getElem _ _ hj
        have e3 : C.gates.foldl f init =
            (C.gates.drop (j + 1)).foldl f (f ((C.gates.take j).foldl f init) C.gates[j]) := by
          rw [← List.foldl_cons, ← List.foldl_append, ← List.drop_eq_getElem_cons hj,
            List.take_append_drop]
        rw [e2, e3]
        exact hpre f hf _ _
    have hpg : ∀ {α : Type} (P L : List α) (d : α) (i : ℕ), P <+: L → i < P.length →
        L.getD i d = P.getD i d := by
      intro α P L d i hp hi
      obtain ⟨t, rfl⟩ := hp
      exact List.getD_append _ _ _ _ hi
    have hfw : ∀ (a : List Bool) (g : Gate), ∃ b, (fun (w : List Bool) (g : Gate) =>
        w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]) a g = a ++ [b] :=
      fun a g => ⟨_, rfl⟩
    have hWlen : ∀ x : Fin n → Bool, (C.wires (List.ofFn x)).length = n + C.gates.length := by
      intro x
      have := hlen _ hfw C.gates (List.ofFn x)
      rw [List.length_ofFn] at this
      exact this
    have hWin : ∀ (x : Fin n → Bool) (i : ℕ) (hi : i < n),
        (C.wires (List.ofFn x)).getD i false = x ⟨i, hi⟩ := by
      intro x i hi
      rw [hpg (List.ofFn x) (C.wires (List.ofFn x)) false i (hpre _ hfw C.gates _)
        (by rw [List.length_ofFn]; exact hi)]
      rw [List.getD_eq_getElem _ _ (by rw [List.length_ofFn]; exact hi), List.getElem_ofFn]
    have hWout : ∀ (x : Fin n → Bool) (i : ℕ), n + C.gates.length ≤ i →
        (C.wires (List.ofFn x)).getD i false = false :=
      fun x i hi => List.getD_eq_default _ _ (by rw [hWlen]; exact hi)
    have hWgate : ∀ (x : Fin n → Bool) (j : ℕ), j < C.gates.length → gateVal n C j x =
        (gateAt C j).op.eval ((gateAt C j).inputs.map fun i => (C.wires (List.ofFn x)).getD i false) := by
      intro x j hj
      obtain ⟨acc, hal, hap⟩ := key _ hfw (List.ofFn x) j hj
      rw [List.length_ofFn] at hal
      have hap' : acc ++ [(gateAt C j).op.eval ((gateAt C j).inputs.map fun i => acc.getD i false)]
          <+: C.wires (List.ofFn x) := hap
      show (C.wires (List.ofFn x)).getD (n + j) false = _
      rw [hpg _ _ false (n + j) hap' (by rw [List.length_append, hal, List.length_singleton]; omega),
        List.getD_append_right _ _ _ _ (by omega), hal, Nat.sub_self, List.getD_cons_zero]
      congr 1
      apply List.map_congr_left
      intro i hi
      exact (hpg acc _ false i ((List.prefix_append _ _).trans hap')
        (by rw [hal]; exact hrb j hj i hi)).symm
    have hmem : ∀ j < C.gates.length, gateAt C j ∈ C.gates := by
      intro j hj
      rw [show gateAt C j = C.gates[j] from List.getD_eq_getElem _ _ hj]
      exact List.getElem_mem hj
    have hG2 : ∀ j < C.gates.length, ∃ p q, (gateAt C j).inputs = [p, q] :=
      fun j hj => List.length_eq_two.mp (hl2 _ (hmem j hj))
    have hA : ∀ a b : Bool, GateOp.eval GateOp.and [a, b] = (a && b) := by
      intro a b; cases a <;> cases b <;> rfl
    have hO : ∀ a b : Bool, GateOp.eval GateOp.or [a, b] = (a || b) := by
      intro a b; cases a <;> cases b <;> rfl
    have hAnd : ∀ j < C.gates.length, (gateAt C j).op = GateOp.and → ∀ p q,
        (gateAt C j).inputs = [p, q] → ∀ x : Fin n → Bool, gateVal n C j x =
          ((C.wires (List.ofFn x)).getD p false && (C.wires (List.ofFn x)).getD q false) := by
      intro j hj ho p q hpq x
      rw [hWgate x j hj, hpq, ho]
      exact hA _ _
    have hOr : ∀ j < C.gates.length, (gateAt C j).op = GateOp.or → ∀ p q,
        (gateAt C j).inputs = [p, q] → ∀ x : Fin n → Bool, gateVal n C j x =
          ((C.wires (List.ofFn x)).getD p false || (C.wires (List.ofFn x)).getD q false) := by
      intro j hj ho p q hpq x
      rw [hWgate x j hj, hpq, ho]
      exact hO _ _
    have hfo : ∀ (a : List (List ℕ)) (g : Gate), ∃ b, orStep n a g = a ++ [b] :=
      fun a g => ⟨_, rfl⟩
    have hO1 : ∀ j < C.gates.length, OrReaches n C (n + j) j := by
      intro j hj
      refine ⟨Nat.le_add_right n j, ?_⟩
      obtain ⟨acc, hal, hap⟩ := key (orStep n) hfo [] j hj
      rw [List.length_nil, Nat.zero_add] at hal
      rw [Nat.add_sub_cancel_left]
      have hap' : acc ++ [acc.length :: _] <+: orSets n C := hap
      rw [hpg _ _ [] j hap' (by rw [List.length_append, hal, List.length_singleton]; omega),
        List.getD_append_right _ _ _ _ (by omega), hal, Nat.sub_self, List.getD_cons_zero]
      exact List.mem_cons_self
    have hO2 : ∀ j < C.gates.length, (gateAt C j).op = GateOp.or → ∀ i ∈ (gateAt C j).inputs,
        n ≤ i → i < n + j → ∀ k, OrReaches n C i k → OrReaches n C (n + j) k := by
      intro j hj hor i hi hni hij k hk
      refine ⟨Nat.le_add_right n j, ?_⟩
      obtain ⟨acc, hal, hap⟩ := key (orStep n) hfo [] j hj
      rw [List.length_nil, Nat.zero_add] at hal
      have hk2 : k ∈ acc.getD (i - n) [] := by
        rw [← hpg acc (orSets n C) [] (i - n) ((List.prefix_append _ _).trans hap) (by omega)]
        exact hk.2
      rw [Nat.add_sub_cancel_left]
      have hap' : acc ++ [acc.length :: _] <+: orSets n C := hap
      rw [hpg _ _ [] j hap' (by rw [List.length_append, hal, List.length_singleton]; omega),
        List.getD_append_right _ _ _ _ (by omega), hal, Nat.sub_self, List.getD_cons_zero]
      apply List.mem_cons_of_mem
      rw [ite_eq_left hor, List.mem_flatMap]
      exact ⟨i, List.mem_filter.mpr ⟨hi, decide_eq_true ⟨hni, hij⟩⟩, hk2⟩
    have hF0 : ∀ w : Fin n, graphFun G ∅ (pairInput w w) ≠ true := by
      intro w hw
      rcases Bool.or_eq_true_iff.mp hw with h | h
      · obtain ⟨a, ha, -⟩ := of_decide_eq_true h
        exact Finset.notMem_empty a ha
      · obtain ⟨a, b, hab, ha, hb⟩ := of_decide_eq_true h
        have e1 : a = w := (of_decide_eq_true ha).elim id id
        have e2 : b = w := (of_decide_eq_true hb).elim id id
        subst e1 e2
        exact G.irrefl hab
    have hstar : ∀ u v : Fin n, G.Adj u v → s(u, v) ∈ starEdges G C := by
      intro u v huv
      let : DecidableEq GateOp := gateOpDecEq
      have hmor : ∀ j < C.gates.length, (gateAt C j).op = GateOp.or → ∀ r ∈ (gateAt C j).inputs,
          r < n + j → ∀ y : Fin n, y ∈ orIn n C r → y ∈ orIn n C (n + j) := by
        intro j hj ho r hr hrj y hy
        refine Finset.mem_filter.mpr ⟨Finset.mem_univ _, Or.inr ?_⟩
        rcases (Finset.mem_filter.mp hy).2 with hyr | ⟨k, hk, hkr, hko, hki⟩
        · exact ⟨j, hj, hO1 j hj, ho, by rw [hyr]; exact hr⟩
        · exact ⟨k, hk, hO2 j hj ho r hr hkr.1 hrj k hkr, hko, hki⟩
      have hD : ∀ m ≤ C.gates.length, (∀ j < m, (gateAt C j).op = GateOp.and →
          gateVal n C j (pairInput u v) = false) → ∀ w, w < n + m →
          (C.wires (List.ofFn (pairInput u v))).getD w false = true →
          (u ∈ orIn n C w ∧ (C.wires (List.ofFn (pairInput u u))).getD w false = true) ∨
          (v ∈ orIn n C w ∧ (C.wires (List.ofFn (pairInput v v))).getD w false = true) := by
        intro m hm hand w
        induction w using Nat.strong_induction_on with
        | ind w ih =>
          intro hw hval
          by_cases hwn : w < n
          · rw [hWin _ w hwn] at hval
            rcases of_decide_eq_true hval with h | h
            · left
              refine ⟨Finset.mem_filter.mpr ⟨Finset.mem_univ _, Or.inl (congrArg Fin.val h.symm)⟩, ?_⟩
              rw [hWin _ w hwn]
              exact decide_eq_true (Or.inl h)
            · right
              refine ⟨Finset.mem_filter.mpr ⟨Finset.mem_univ _, Or.inl (congrArg Fin.val h.symm)⟩, ?_⟩
              rw [hWin _ w hwn]
              exact decide_eq_true (Or.inl h)
          · obtain ⟨j, rfl⟩ : ∃ j, w = n + j := ⟨w - n, by omega⟩
            have hjm : j < m := by omega
            have hjl : j < C.gates.length := by omega
            obtain ⟨p, q, hpq⟩ := hG2 j hjl
            have hpj : p < n + j := hrb j hjl p (by rw [hpq]; simp)
            have hqj : q < n + j := hrb j hjl q (by rw [hpq]; simp)
            rcases hao _ (hmem j hjl) with ho | ho
            · exfalso
              have h' : gateVal n C j (pairInput u v) = true := hval
              rw [hand j hjm ho] at h'
              exact Bool.false_ne_true h'
            · have hor := hOr j hjl ho p q hpq
              have hval' := (hor (pairInput u v)).symm.trans hval
              have hup : ∀ r ∈ (gateAt C j).inputs, r < n + j →
                  (C.wires (List.ofFn (pairInput u v))).getD r false = true →
                  (u ∈ orIn n C (n + j) ∧
                    (C.wires (List.ofFn (pairInput u u))).getD (n + j) false = true) ∨
                  (v ∈ orIn n C (n + j) ∧
                    (C.wires (List.ofFn (pairInput v v))).getD (n + j) false = true) := by
                intro r hr hrj hrv
                have hmono : ∀ x : Fin n → Bool, (C.wires (List.ofFn x)).getD r false = true →
                    (C.wires (List.ofFn x)).getD (n + j) false = true := by
                  intro x hx
                  show gateVal n C j x = true
                  rw [hor x]
                  rw [hpq] at hr
                  rcases List.mem_pair.mp hr with rfl | rfl
                  · rw [hx]; rfl
                  · rw [hx, Bool.or_true]
                rcases ih r hrj (by omega) hrv with ⟨h1, h2⟩ | ⟨h1, h2⟩
                · exact Or.inl ⟨hmor j hjl ho r hr hrj u h1, hmono _ h2⟩
                · exact Or.inr ⟨hmor j hjl ho r hr hrj v h1, hmono _ h2⟩
              rcases Bool.or_eq_true_iff.mp hval' with hp | hq
              · exact hup p (by rw [hpq]; simp) hpj hp
              · exact hup q (by rw [hpq]; simp) hqj hq
      have hex : ∃ a, a < C.gates.length ∧ (gateAt C a).op = GateOp.and ∧
          gateVal n C a (pairInput u v) = true := by
        by_contra hne
        have hall : ∀ j < C.gates.length, (gateAt C j).op = GateOp.and →
            gateVal n C j (pairInput u v) = false :=
          fun j hj ho => Bool.eq_false_iff.mpr (fun h => hne ⟨j, hj, ho, h⟩)
        have hout : (C.wires (List.ofFn (pairInput u v))).getD C.output false = true := by
          have h1 : circuitFun n C (pairInput u v) = graphFun G ∅ (pairInput u v) :=
            congrFun hfun _
          have h2 : graphFun G ∅ (pairInput u v) = true :=
            Bool.or_eq_true_iff.mpr (Or.inr (decide_eq_true
              ⟨u, v, huv, decide_eq_true (Or.inl rfl), decide_eq_true (Or.inr rfl)⟩))
          exact h1.trans h2
        by_cases hlt : C.output < n + C.gates.length
        · rcases hD C.gates.length le_rfl hall C.output hlt hout with ⟨-, h⟩ | ⟨-, h⟩
          · exact hF0 u ((congrFun hfun (pairInput u u)).symm.trans h)
          · exact hF0 v ((congrFun hfun (pairInput v v)).symm.trans h)
        · rw [hWout _ _ (by omega)] at hout
          exact Bool.false_ne_true hout
      have hexm : ∃ a, (a < C.gates.length ∧ (gateAt C a).op = GateOp.and ∧
          gateVal n C a (pairInput u v) = true) ∧ ∀ j < a, (gateAt C j).op = GateOp.and →
          gateVal n C j (pairInput u v) = false := by
        classical
        refine ⟨Nat.find hex, Nat.find_spec hex, ?_⟩
        intro j hja hjo
        exact Bool.eq_false_iff.mpr (fun h => Nat.find_min hex hja
          ⟨by have := (Nat.find_spec hex).1; omega, hjo, h⟩)
      obtain ⟨a, ⟨ha, hao', hav⟩, hmin⟩ := hexm
      obtain ⟨p, q, hpq⟩ := hG2 _ ha
      have hp : p < n + a := hrb _ ha p (by rw [hpq]; simp)
      have hq : q < n + a := hrb _ ha q (by rw [hpq]; simp)
      have hand := hAnd _ ha hao' p q hpq
      obtain ⟨hpv, hqv⟩ := Bool.and_eq_true_iff.mp ((hand _).symm.trans hav)
      have hbel : BelowF G C (a) := by
        intro x hx
        by_contra hF
        have hnot : a ∉ junk G C := by
          rw [hj]
          exact Finset.notMem_empty _
        exact hnot (Finset.mem_filter.mpr ⟨Finset.mem_range.mpr ha, hao', ha, x, hx,
          Bool.eq_false_iff.mpr hF⟩)
      have hs0 : side C (a) 0 = orIn n C p := by
        show orIn n C ((gateAt C (a)).inputs.getD _ 0) = _
        rw [hpq]
        rfl
      have hs1 : side C (a) 1 = orIn n C q := by
        show orIn n C ((gateAt C (a)).inputs.getD _ 0) = _
        rw [hpq]
        rfl
      have hfin2 : ∀ y z : Fin n, y ∈ orIn n C p → z ∈ orIn n C q → s(u, v) = s(y, z) →
          s(u, v) ∈ starEdges G C := by
        intro y z hy hz he
        rw [he]
        exact Finset.mem_biUnion.mpr ⟨a,
          Finset.mem_filter.mpr ⟨Finset.mem_range.mpr ha, hao', hbel⟩,
          Finset.mem_image.mpr ⟨(y, z), Finset.mem_product.mpr ⟨hs0 ▸ hy, hs1 ▸ hz⟩, rfl⟩⟩
      rcases hD _ ha.le hmin p hp hpv with ⟨hup, hup'⟩ | ⟨hvp, hvp'⟩ <;>
        rcases hD _ ha.le hmin q hq hqv with ⟨huq, huq'⟩ | ⟨hvq, hvq'⟩
      · exact absurd (hbel _ (by rw [hand, hup', huq']; rfl)) (hF0 u)
      · exact hfin2 u v hup hvq rfl
      · exact hfin2 v u hvp huq Sym2.eq_swap
      · exact absurd (hbel _ (by rw [hand, hvp', hvq']; rfl)) (hF0 v)
    have hHe : H.edgeSet = ∅ := by
      apply Set.eq_empty_iff_forall_notMem.mpr
      intro e he
      have h1 := hsub e he
      revert h1
      refine Sym2.ind (fun u v => ?_) e
      intro h1
      exact h1.2 (hstar u v (h1.1))
    rw [hHe, Set.ncard_empty]
    exact Nat.zero_le _
  · rcases Nat.lt_or_ge (junk G C).card 2 with h2 | h2
    · obtain ⟨g, hg1⟩ := Finset.card_eq_one.mp (by omega : (junk G C).card = 1)
      exact hfin k1 (by omega) (hk1 n G hg h4 C H hl ht hH hdeg ⟨g, hg1⟩)
    · by_cases hn : ∃ i ∈ junk G C, ∃ j ∈ junk G C, InCone n C i j
      · exact hfin k3 (by omega) (hk3 n G hg h4 C H hl ht hH hdeg ⟨h2, hn⟩)
      · exact hfin k2 (by omega) (hk2 n G hg h4 C H hl ht hH hdeg
          ⟨h2, fun i hi j hj hc => hn ⟨i, hi, j, hj, hc⟩⟩)
