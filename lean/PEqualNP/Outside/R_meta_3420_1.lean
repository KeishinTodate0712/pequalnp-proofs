import Mathlib
import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.Defs.LratEncoding

set_option maxHeartbeats 4000000 in
theorem PEqualNP.Outside.R_meta_3420_1
    (h3208 : ∀ (x1 x2 : ℕ) (x3 : ℕ → Bool) (x4 : List ℕ) (x5 : PEqualNP.CircuitLowerBounds.Circuit), (∀ x6 ∈ x4, x6 < (2 : ℕ) ^ x1) → PEqualNP.MetaComplexity.Monotone2 x5 → x5.size ≤ x2 → (∀ x9 ∈ x4, x5.eval (List.ofFn fun (x11 : Fin x1) => x9.testBit ↑x11) = x3 x9) → PEqualNP.Defs.LratEncoding.FormulaSat (PEqualNP.Defs.LratEncoding.enc x1 x2 x3 x4))
    (hUnsat : have p : List ℕ := [(515 : ℕ), (6 : ℕ), (524 : ℕ), (536 : ℕ), (529 : ℕ), (545 : ℕ), (66 : ℕ), (132 : ℕ), (776 : ℕ), (160 : ℕ), (320 : ℕ), (288 : ℕ)]; have n : List ℕ := [(554 : ℕ), (50 : ℕ), (581 : ℕ), (616 : ℕ), (116 : ℕ), (650 : ℕ), (713 : ℕ), (208 : ℕ), (773 : ℕ), (276 : ℕ), (897 : ℕ), (402 : ℕ)]; ¬PEqualNP.Defs.LratEncoding.FormulaSat (PEqualNP.Defs.LratEncoding.enc (10 : ℕ) (14 : ℕ) (fun (r : ℕ) => p.contains r) (p ++ n))) :
    ¬∃ (x1 : List (BitVec (24 : ℕ))),     x1.length = (24 : ℕ) ∧       List.take (10 : ℕ) x1 = [(5521457 : BitVec (24 : ℕ)), (8532035 : BitVec (24 : ℕ)), (3227782 : BitVec (24 : ℕ)), (430348 : BitVec (24 : ℕ)), (11083800 : BitVec (24 : ℕ)), (113184 : BitVec (24 : ℕ)), (902208 : BitVec (24 : ℕ)), (13501056 : BitVec (24 : ℕ)), (15731968 : BitVec (24 : ℕ)), (5689661 : BitVec (24 : ℕ))] ∧         x1.getD (23 : ℕ) (0 : BitVec (24 : ℕ)) = (4095 : BitVec (24 : ℕ)) ∧           ((0 : BitVec (24 : ℕ)) :: x1).Nodup ∧             ∀ (x2 : ℕ),               (0 : ℕ) < x2 →                 x2 < (15 : ℕ) →                   have x5 : BitVec (24 : ℕ) := x1.getD ((9 : ℕ) + x2) (0 : BitVec (24 : ℕ));                   x5 = (16777215 : BitVec (24 : ℕ)) ∨ ∃ (x6 : BitVec (24 : ℕ)) (x7 : BitVec (24 : ℕ)), x6 ∈ List.take ((9 : ℕ) + x2) x1 ∧ x7 ∈ List.take ((9 : ℕ) + x2) x1 ∧ (x5 = x6 &&& x7 ∨ x5 = x6 ||| x7) := by
  classical
  have evalAnd : ∀ l : List Bool, GateOp.and.eval l = l.all id := fun _ => rfl
  have evalOr : ∀ l : List Bool, GateOp.or.eval l = l.any id := fun _ => rfl
  have sizeEq : ∀ c : Circuit, c.size = c.gates.length := fun _ => rfl
  let wiresFrom : List Gate → List Bool → List Bool := fun gs w =>
    gs.foldl (fun w g => w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]) w
  let seeds : List (BitVec 24) :=
    [5521457, 8532035, 3227782, 430348, 11083800, 113184, 902208, 13501056, 15731968, 5689661]
  let posRows : List ℕ := [515, 6, 524, 536, 529, 545, 66, 132, 776, 160, 320, 288]
  let negRows : List ℕ := [554, 50, 581, 616, 116, 650, 713, 208, 773, 276, 897, 402]
  let allRows : List ℕ := posRows ++ negRows
  have hbound : ∀ r ∈ allRows, r < 2 ^ 10 := by
    have hall : allRows.all (fun r => decide (r < 2 ^ 10)) = true := by decide
    intro r hr
    exact of_decide_eq_true (List.all_eq_true.1 hall r hr)
  have hones : ∀ r : Fin 24, (16777215 : BitVec 24).getLsbD r.val = true := by decide
  have hbase : ∀ (r : Fin 24) (i : Fin 10),
      (allRows.getD r.val 0).testBit i.val = (seeds.getD i.val 0).getLsbD r.val := by decide
  have htarget : ∀ r : Fin 24,
      (4095 : BitVec 24).getLsbD r.val = posRows.contains (allRows.getD r.val 0) := by decide
  have hrowIdx : ∀ r ∈ allRows, ∃ idx : Fin 24, allRows.getD idx.val 0 = r := by
    intro r hr
    obtain ⟨idx, hidx, rfl⟩ := List.mem_iff_getElem.1 hr
    have h24 : idx < 24 := by
      have : allRows.length = 24 := rfl
      omega
    refine ⟨⟨idx, h24⟩, ?_⟩
    exact List.getD_eq_getElem _ _ hidx
  intro hex
  obtain ⟨w, hwlen, hwtake, hwout, _, hwstep⟩ := hex
  have hgate : ∀ k : Fin 14, ∃ g : Gate,
      (g.op = GateOp.and ∨ g.op = GateOp.or) ∧ g.inputs.length ≤ 2 ∧
      (∀ i ∈ g.inputs, i < 10 + k.val) ∧
      ∀ r : Fin 24, (w.getD (10 + k.val) 0).getLsbD r.val =
        g.op.eval (g.inputs.map fun i => (w.getD i 0).getLsbD r.val) := by
    intro k
    have hstep := hwstep (k.val + 1) (by omega) (by omega)
    have hidx : 9 + (k.val + 1) = 10 + k.val := by omega
    dsimp only at hstep
    rw [hidx] at hstep
    rcases hstep with h1 | ⟨u, v, hu, hv, hoper⟩
    · refine ⟨⟨GateOp.and, []⟩, Or.inl rfl, by simp, by simp, fun r => ?_⟩
      rw [h1, hones r, evalAnd]
      rfl
    · obtain ⟨a, ha, hau⟩ := List.mem_iff_getElem.1 hu
      obtain ⟨b, hb, hbv⟩ := List.mem_iff_getElem.1 hv
      have hal : a < 10 + k.val := by rw [List.length_take] at ha; omega
      have hbl : b < 10 + k.val := by rw [List.length_take] at hb; omega
      have hwa : w.getD a 0 = u := by
        rw [List.getD_eq_getElem _ _ (by omega), ← hau, List.getElem_take]
      have hwb : w.getD b 0 = v := by
        rw [List.getD_eq_getElem _ _ (by omega), ← hbv, List.getElem_take]
      rcases hoper with hand | hor
      · refine ⟨⟨GateOp.and, [a, b]⟩, Or.inl rfl, by simp, ?_, fun r => ?_⟩
        · intro i hi
          simp only [List.mem_cons, List.not_mem_nil, or_false] at hi
          rcases hi with rfl | rfl <;> assumption
        · rw [hand, BitVec.getLsbD_and, evalAnd, List.map_cons, List.map_cons, List.map_nil,
            hwa, hwb]
          simp
      · refine ⟨⟨GateOp.or, [a, b]⟩, Or.inr rfl, by simp, ?_, fun r => ?_⟩
        · intro i hi
          simp only [List.mem_cons, List.not_mem_nil, or_false] at hi
          rcases hi with rfl | rfl <;> assumption
        · rw [hor, BitVec.getLsbD_or, evalOr, List.map_cons, List.map_cons, List.map_nil,
            hwa, hwb]
          simp
  let gateOf : Fin 14 → Gate := fun k => Classical.choose (hgate k)
  have hgateSpec : ∀ k : Fin 14,
      ((gateOf k).op = GateOp.and ∨ (gateOf k).op = GateOp.or) ∧
      (gateOf k).inputs.length ≤ 2 ∧
      (∀ i ∈ (gateOf k).inputs, i < 10 + k.val) ∧
      ∀ r : Fin 24, (w.getD (10 + k.val) 0).getLsbD r.val =
        (gateOf k).op.eval ((gateOf k).inputs.map fun i => (w.getD i 0).getLsbD r.val) :=
    fun k => Classical.choose_spec (hgate k)
  let C : Circuit := ⟨List.ofFn gateOf, 23⟩
  have hmono : Monotone2 C := by
    intro g hg
    obtain ⟨k, rfl⟩ := List.mem_ofFn.1 hg
    have hs := hgateSpec k
    refine ⟨?_, hs.2.1⟩
    rcases hs.1 with h | h
    · exact Or.inl h
    · exact Or.inr h
  have hsz : C.size ≤ 14 := by
    rw [sizeEq]
    change (List.ofFn gateOf).length ≤ 14
    rw [List.length_ofFn]
  have wiresFrom_append : ∀ (gs gs' : List Gate) (xs : List Bool),
      wiresFrom (gs ++ gs') xs = wiresFrom gs' (wiresFrom gs xs) := by
    intro gs gs' xs
    simp [wiresFrom, List.foldl_append]
  have wiresFrom_len : ∀ (gs : List Gate) (xs : List Bool),
      (wiresFrom gs xs).length = xs.length + gs.length := by
    intro gs
    induction gs with
    | nil => intro xs; simp [wiresFrom]
    | cons g gs ih =>
      intro xs
      change (wiresFrom gs (xs ++ [_])).length = xs.length + (g :: gs).length
      rw [ih, List.length_append, List.length_singleton, List.length_cons]
      omega
  have hwires : ∀ (r : Fin 24) (m : ℕ), m ≤ 14 →
      ∀ p < 10 + m,
        (wiresFrom (C.gates.take m) (List.ofFn fun i : Fin 10 => (allRows.getD r.val 0).testBit i.val)).getD p false =
          (w.getD p 0).getLsbD r.val := by
    intro r m
    induction m with
    | zero =>
      intro _ p hp
      have h10 : p < 10 := by omega
      change (List.ofFn fun i : Fin 10 => (allRows.getD r.val 0).testBit i.val).getD p false = _
      rw [List.getD_eq_getElem _ _ (by simp [h10]), List.getElem_ofFn, hbase r ⟨p, h10⟩]
      have hwtake' : w.take 10 = seeds := hwtake
      have hwp : w.getD p 0 = seeds.getD p 0 := by
        rw [← hwtake', List.getD_eq_getElem _ _ (by omega), List.getD_eq_getElem _ _ (by rw [List.length_take]; omega),
          List.getElem_take]
      rw [hwp]
    | succ m ih =>
      intro hm p hp
      have hm14 : m < 14 := by omega
      have hclen : C.gates.length = 14 := List.length_ofFn
      have htake : C.gates.take (m + 1) = C.gates.take m ++ [gateOf ⟨m, hm14⟩] := by
        have h1 := List.take_succ_eq_append_getElem (l := C.gates) (i := m) (by omega)
        have h2 : C.gates[m]'(by omega) = gateOf ⟨m, hm14⟩ := by
          change (List.ofFn gateOf)[m]'(by rw [List.length_ofFn]; exact hm14) = gateOf ⟨m, hm14⟩
          rw [List.getElem_ofFn]
        rw [h1, h2]
      set xs := List.ofFn fun i : Fin 10 => (allRows.getD r.val 0).testBit i.val with hxs
      set prev := wiresFrom (C.gates.take m) xs with hprev
      have hprevlen : prev.length = 10 + m := by
        rw [hprev, wiresFrom_len, hxs, List.length_ofFn, List.length_take, hclen]
        omega
      have hwf : wiresFrom (C.gates.take (m + 1)) xs =
          prev ++ [(gateOf ⟨m, hm14⟩).op.eval ((gateOf ⟨m, hm14⟩).inputs.map fun i => prev.getD i false)] := by
        rw [htake, wiresFrom_append]
        rfl
      rw [hwf]
      by_cases hpm : p < 10 + m
      · rw [List.getD_append _ _ _ _ (by omega)]
        exact ih (by omega) p hpm
      · have hpeq : p = 10 + m := by omega
        subst hpeq
        rw [List.getD_append_right _ _ _ _ (by omega), show 10 + m - prev.length = 0 by omega]
        simp only [List.getD_cons_zero]
        have hs := hgateSpec ⟨m, hm14⟩
        have hmap : ((gateOf ⟨m, hm14⟩).inputs.map fun i => prev.getD i false) =
            ((gateOf ⟨m, hm14⟩).inputs.map fun i => (w.getD i 0).getLsbD r.val) := by
          apply List.map_congr_left
          intro i hi
          exact ih (by omega) i (hs.2.2.1 i hi)
        rw [hmap]
        exact (hs.2.2.2 r).symm
  have heval : ∀ r ∈ allRows,
      C.eval (List.ofFn fun i : Fin 10 => r.testBit i.val) = posRows.contains r := by
    intro r hr
    obtain ⟨idx, hidx⟩ := hrowIdx r hr
    rw [← hidx]
    have hclen : C.gates.length = 14 := List.length_ofFn
    have htake14 : C.gates.take 14 = C.gates := List.take_of_length_le (by omega)
    have h23 := hwires idx 14 le_rfl 23 (by omega)
    rw [htake14] at h23
    change (wiresFrom C.gates (List.ofFn fun i : Fin 10 => (allRows.getD idx.val 0).testBit i.val)).getD 23 false = _
    rw [h23, hwout, htarget idx]
  exact hUnsat (h3208 10 14 (fun r => posRows.contains r) allRows C hbound hmono hsz heval)
