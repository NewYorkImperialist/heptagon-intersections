import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2100-2149 of the 2189-step refutation of ccase000: 99 core clauses and 63 earlier-derived ones give 8 more. -/
theorem CCase000_block042
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c52 : ¬v10 ∨ ¬v12)
    (c53 : ¬v10 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v12)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c58 : ¬v13 ∨ ¬v12)
    (c59 : ¬v14 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c69 : ¬v16 ∨ ¬v19)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c79 : ¬v19 ∨ ¬v20)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c110 : ¬v30 ∨ ¬v31)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c134 : ¬v40 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c153 : ¬v49 ∨ ¬v43)
    (c158 : ¬v49 ∨ ¬v44)
    (c162 : ¬v49 ∨ ¬v45)
    (c165 : ¬v49 ∨ ¬v46)
    (c167 : ¬v49 ∨ ¬v47)
    (c168 : ¬v49 ∨ ¬v48)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c191 : ¬v4 ∨ v12 ∨ v5 ∨ v46 ∨ v45 ∨ v3 ∨ v11 ∨ v47)
    (c197 : v43 ∨ v29 ∨ v30 ∨ v35 ∨ v44 ∨ ¬v36 ∨ v42 ∨ v37)
    (c215 : v3 ∨ ¬v4 ∨ v45 ∨ v5 ∨ v11 ∨ v10 ∨ v46 ∨ v47)
    (c218 : ¬v34 ∨ v41 ∨ v27 ∨ v21 ∨ v38 ∨ v28 ∨ v32 ∨ v24 ∨ v33 ∨ v19 ∨ v35 ∨ v31 ∨ v40 ∨ v20)
    (c260 : v14 ∨ v48 ∨ v4 ∨ v7 ∨ ¬v6 ∨ v47 ∨ v5 ∨ v13 ∨ v26 ∨ v27 ∨ v20 ∨ v46 ∨ v11 ∨ v28)
    (c288 : v12 ∨ ¬v19 ∨ v18 ∨ v20 ∨ v26 ∨ v11 ∨ v27 ∨ v13)
    (c325 : ¬v49 ∨ v7 ∨ v4 ∨ v42 ∨ v39 ∨ v1 ∨ v41 ∨ v13 ∨ v8 ∨ v14 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c336 : ¬v34 ∨ v41 ∨ v6 ∨ v27 ∨ v33 ∨ v29 ∨ v28 ∨ v22 ∨ v7 ∨ v35 ∨ v36 ∨ v40 ∨ v5 ∨ v48)
    (c399 : v14 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v48 ∨ v47 ∨ v7 ∨ v13)
    (c404 : ¬v49 ∨ v36 ∨ v7 ∨ v42 ∨ v1 ∨ v41 ∨ v43 ∨ v48)
    (c427 : ¬v12 ∨ v6 ∨ v18 ∨ v5 ∨ v11 ∨ v4 ∨ v19 ∨ v13)
    (c444 : ¬v32 ∨ v39 ∨ v25 ∨ v40 ∨ v38 ∨ v33 ∨ v26 ∨ v31)
    (c532 : ¬v49 ∨ v36 ∨ v7 ∨ v42 ∨ v41 ∨ v6 ∨ v43 ∨ v48)
    (c538 : ¬v34 ∨ v41 ∨ v12 ∨ v35 ∨ v27 ∨ v20 ∨ v33 ∨ v40 ∨ v28 ∨ v32 ∨ v39 ∨ v25 ∨ v13 ∨ v14)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c624 : ¬v11 ∨ v3 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c861 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c879 : v14 ∨ v6 ∨ v13 ∨ v26 ∨ ¬v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c896 : ¬v5 ∨ ¬v1 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c924 : ¬v17 ∨ v5 ∨ v12 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c982 : ¬v17 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c1074 : v5 ∨ ¬v2 ∨ ¬v4 ∨ v7 ∨ v12 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1117 : ¬v27 ∨ ¬v33 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1265 : v5 ∨ v12 ∨ v13 ∨ ¬v27 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1372 : ¬v19 ∨ v5 ∨ v11 ∨ v12 ∨ v14 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1402 : v40 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46 ∨ v47)
    (c1403 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1404 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1460 : ¬v28 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1519 : v7 ∨ v1 ∨ v6 ∨ v9 ∨ v13 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v43 ∨ v48)
    (c1533 : v11 ∨ ¬v1 ∨ ¬v2 ∨ ¬v4 ∨ v10 ∨ v12 ∨ v46 ∨ v47)
    (c1538 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v21 ∨ v27 ∨ v28)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1763 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ ¬v40 ∨ v48)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1817 : v35 ∨ v1 ∨ v8 ∨ v12 ∨ v14 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v36 ∨ v43)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1917 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2015 : ¬v6 ∨ ¬v2 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2109 : ¬v39 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v24 ∨ v45 ∨ v46 ∨ v48)
    (c2112 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45)
    (c2127 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c2221 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c2254 : ¬v9 ∨ v3 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2354 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c2390 : ¬v24 ∨ v4 ∨ v11 ∨ v30 ∨ v31 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2400 : ¬v7 ∨ ¬v2 ∨ ¬v4 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2483 : ¬v32 ∨ v24 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46)
    (c2505 : ¬v10 ∨ v4 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2546 : v49)
    (c2547 : v42 ∨ v1 ∨ v6 ∨ v7)
    (c2554 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40)
    (c2570 : ¬v13 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36)
    (c2576 : v41 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v33)
    (c2650 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v37)
    (c2653 : v2)
    (c2664 : ¬v6 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36)
    (c2669 : v22 ∨ ¬v41)
    (c2672 : v27 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v26 ∨ v31 ∨ v32 ∨ v40)
    : (¬v6 ∨ ¬v4) ∧ (v12 ∨ v4 ∨ v6 ∨ v25 ∨ v26 ∨ v27 ∨ v40) ∧ (¬v13 ∨ v4 ∨ v25 ∨ v32) ∧ (v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v41) ∧ (v6 ∨ v22) ∧ (¬v25 ∨ v13 ∨ v40) ∧ (v26 ∨ v1 ∨ v3 ∨ v4 ∨ v7 ∨ v25 ∨ v27 ∨ v40 ∨ v41) ∧ (¬v5 ∨ v22 ∨ v25 ∨ v27 ∨ v28 ∨ v40) := by
  have c2673 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    rcases c197 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a n4
  have c2674 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v25 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u4
    have u6 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n6
    have u7 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
    have u10 : v16 := by
      rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c69 with a|a
    · exact absurd u10 a
    · exact absurd u6 a
  have c2675 : v22 ∨ ¬v4 ∨ v12 ∨ v23 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u9 : v31 := by
      rcases c2672 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    have u10 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v5 := by
      rcases c2674 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n8
    have u14 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u13 a
      · exact absurd n1 a
    have u15 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
      · exact absurd u13 a
    have u16 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u7 a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u21 : v42 := by
      rcases c2547 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u8
    have u22 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1817 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u22
    · exact absurd a u2
  have c2676 : v23 ∨ ¬v4 ∨ v22 ∨ v26 ∨ v27 ∨ v32 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u10 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u9
    have u13 : v12 := by
      rcases c2675 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n6
    have u14 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : v28 := by
      rcases c2576 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u12
    have u21 : v31 := by
      rcases c2672 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v42 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd u20 a
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a u9
      · exact a
      · exact absurd a u7
    have u24 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : v1 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u7
    have u27 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd u26 a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u28 : ¬v5 := by
      rcases c5 with a|a|a|a
      · exact absurd u26 a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    rcases c215 with a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u28
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a u6
  have c2677 : ¬v12 ∨ ¬v4 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v2 := c2653
    have u6 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : v6 := by
      rcases c2576 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c642 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd u5 a
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2678 : v32 ∨ ¬v4 ∨ v22 ∨ v26 ∨ v27 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u9 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u10 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u9
    have u11 : v23 := by
      rcases c2676 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u12 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v12 := by
      rcases c2677 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
    have u15 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u6
    have u16 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u15 a
      · exact absurd n1 a
    have u17 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
      · exact absurd u15 a
    have u18 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u7 a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v6 := by
      rcases c2576 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u10
    rcases c642 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd u7 a
    · exact absurd n1 a
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c2679 : ¬v5 ∨ ¬v4 ∨ v26 ∨ v27 ∨ v34 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact absurd n1 a
    have u10 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : v42 := by
      rcases c2547 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u11
    have u17 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u18 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v28 := by
      rcases c696 with a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u21 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v32 := by
      rcases c2678 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
    rcases c2483 with a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2680 : v12 ∨ ¬v4 ∨ v22 ∨ v26 ∨ v27 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u9 : v32 := by
      rcases c2678 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v36 := by
      rcases c2673 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u16
    have u18 : ¬v5 := by
      rcases c2679 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u8
    have u19 : v25 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u18
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u6
    have u20 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v6 := by
      rcases c2664 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u17
    have u23 : v13 := by
      rcases c2576 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u22
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u10
    have u24 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v1 := by
      rcases c2570 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u17
    rcases c1533 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd u26 a
    · exact absurd u7 a
    · exact absurd n1 a
    · exact absurd a u24
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u6
  have c2681 : v27 ∨ ¬v4 ∨ v22 ∨ v26 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u9 : v12 := by
      rcases c2680 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u10 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : v32 := by
      rcases c2678 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u15 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v28 := by
      rcases c2576 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u15
    have u18 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v42 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u8
      · exact a
      · exact absurd a u6
    have u21 : v39 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u18
      · exact absurd a u19
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c143 with a|a
    · exact absurd u20 a
    · exact absurd u21 a
  have c2682 : v1 ∨ v6 ∨ v7 ∨ ¬v12 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v42 := by
      rcases c2547 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v29 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a u2
    rcases c2650 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u7
  have c2683 : ¬v12 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v2 := c2653
    have u7 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : v1 := by
      rcases c2682 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd u11 a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v5 := by
      rcases c5 with a|a|a|a
      · exact absurd u11 a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    rcases c215 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u5
  have c2684 : v26 ∨ ¬v4 ∨ v22 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : v27 := by
      rcases c2681 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u10 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u12 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v33 := by
      rcases c1117 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v12 := by
      rcases c2683 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u15
    have u18 : v5 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u19 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u18 a
      · exact absurd n1 a
    have u20 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
      · exact absurd u18 a
    have u21 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u8 a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u24 : v42 := by
      rcases c2547 with a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u10
    have u25 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v29 := by
      rcases c2650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u26
    rcases c1516 with a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u27
    · exact absurd a u25
    · exact absurd a u2
  have c2685 : ¬v9 ∨ ¬v4 ∨ v6 ∨ v22 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : v26 := by
      rcases c2684 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v1 := by
      rcases c1533 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v42 := by
      rcases c2547 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u11
    have u17 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v29 := by
      rcases c2650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u18
    rcases c1516 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u2
  have c2686 : v33 ∨ v5 ∨ v6 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v34 ∨ v36 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n8 a
      · exact a
    rcases c336 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a n11
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a u2
  have c2687 : ¬v34 ∨ v5 ∨ v6 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2686 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2688 : v1 ∨ ¬v4 ∨ v6 ∨ v22 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v9 := by
      rcases c2685 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : v26 := by
      rcases c2684 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n3
      · exact a
    have u13 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd u8 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v42 := by
      rcases c2547 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u10
    have u15 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u14 a
    have u21 : ¬v29 := by
      rcases c2650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
    have u22 : ¬v13 := by
      rcases c2570 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u19
    have u23 : v34 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u21
      · exact a
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u7
    rcases c2687 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a n4
    · exact absurd a u12
  have c2689 : v6 ∨ ¬v4 ∨ v22 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v2 := c2653
    have u7 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u8 : ¬v9 := by
      rcases c2685 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v1 := by
      rcases c2688 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u11 : v26 := by
      rcases c2684 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v12 := by
      rcases c2683 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u14
    have u17 : ¬v5 := by
      rcases c5 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u18 : v11 := by
      rcases c191 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u10
      · exact a
      · exact absurd a u4
    have u19 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u14
    have u23 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u14
    have u24 : ¬v20 := by
      rcases c1538 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u14
    have u25 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u7
    have u26 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c538 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u7
    · exact absurd a u16
    · exact absurd a u27
    · exact absurd a u13
    · exact absurd a u24
    · exact absurd a u28
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a u26
    · exact absurd a u29
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u20
  have c2690 : ¬v6 ∨ ¬v4 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u10 : ¬v1 := by
      rcases c6 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact absurd n1 a
    have u11 : v11 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v5 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u12
    have u17 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd u8 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c24 with a|a|a|a
    · exact absurd u8 a
    · exact absurd u16 a
    · exact absurd u17 a
    · exact absurd n0 a
  have c2691 : ¬v4 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v6 := by
      rcases c2690 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n1
      · exact a
    have u11 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : v40 := by
      rcases c2689 with a|a|a|a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
    have u13 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u12 a
      · exact a
    rcases c532 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u7
  have c2692 : ¬v9 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v32 ∨ v36 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v4 := by
      rcases c2691 with a|a
      · exact a
      · exact absurd a n2
    have u8 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u3
    have u9 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u8 a
      · exact a
    rcases c1516 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u2
  have c2693 : v13 ∨ v6 ∨ ¬v23 ∨ v28 ∨ v34 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a n5
    rcases c696 with a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n3
  have c2694 : v1 ∨ v6 ∨ v22 ∨ v28 ∨ v29 ∨ v32 ∨ v34 ∨ v36 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u2
    have u6 : ¬v13 := by
      rcases c2570 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u7 : ¬v4 := by
      rcases c2691 with a|a
      · exact a
      · exact absurd a n2
    have u8 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u9 : ¬v9 := by
      rcases c2692 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u2
    have u11 : ¬v23 := by
      rcases c2693 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u8
    have u12 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u2
    have u13 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u3
    have u15 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n6
      · exact a
      · exact absurd a u15
      · exact absurd a u8
    rcases c696 with a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u6
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n3
  have c2695 : v13 ∨ v3 ∨ v6 ∨ v9 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v38 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n9
    have u7 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v26 := by
      rcases c696 with a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v4 := by
      rcases c2691 with a|a
      · exact a
      · exact absurd a u9
    have u14 : ¬v11 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u2
    have u15 : v32 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u17
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2696 : v9 ∨ v3 ∨ v4 ∨ v6 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v13 := by
      rcases c2695 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v24 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u2
    rcases c2390 with a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2697 : ¬v9 ∨ v3 ∨ v22 ∨ v23 ∨ v30 ∨ v31 ∨ v32 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v24 := by
      rcases c2254 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v4 := by
      rcases c2691 with a|a
      · exact a
      · exact absurd a n2
    rcases c2390 with a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2698 : v23 ∨ v3 ∨ v6 ∨ v22 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v4 := by
      rcases c2691 with a|a
      · exact a
      · exact absurd a n3
    have u6 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n3
      · exact a
    have u7 : ¬v9 := by
      rcases c2697 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    have u8 : v27 := by
      rcases c2696 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u6
    have u9 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v10 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u2
    rcases c2505 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2699 : v28 ∨ v6 ∨ ¬v7 ∨ v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v2 := c2653
    have u5 : ¬v4 := by
      rcases c2691 with a|a
      · exact a
      · exact absurd a n3
    have u6 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n3
      · exact a
    have u7 : v1 := by
      rcases c2694 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u8 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n2 a
      · exact absurd u4 a
    have u9 : v23 := by
      rcases c2698 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u2
    have u15 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n8
      · exact a
      · exact absurd a u11
      · exact absurd a u6
    rcases c696 with a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n0
  have c2700 : ¬v40 ∨ v6 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u9 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u15 : ¬v4 := by
      rcases c2691 with a|a
      · exact a
      · exact absurd a n2
    have u16 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u8 a
    have u18 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u8 a
    have u19 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u8 a
    have u20 : v7 := by
      rcases c532 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u14
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u6
    have u21 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u8 a
    have u22 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u8 a
    have u23 : v28 := by
      rcases c2699 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u20 a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u24 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v10 := by
      rcases c2505 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u29 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u4
    have u30 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u3
    have u31 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u29 a
      · exact a
    have u33 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u29 a
      · exact a
    have u34 : ¬v1 := by
      rcases c4 with a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u20 a
      · exact absurd u7 a
    rcases c1460 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u34
    · exact absurd a u33
    · exact absurd a u31
    · exact absurd a u32
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd a u2
  have c2701 : v12 ∨ v4 ∨ v6 ∨ v25 ∨ v26 ∨ v27 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v5 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c934 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a u3
  have c2702 : ¬v28 ∨ v6 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v4 := by
      rcases c2691 with a|a
      · exact a
      · exact absurd a u7
    have u13 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a u7
      · exact a
    have u14 : v12 := by
      rcases c2701 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
    have u15 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
    have u19 : v32 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v39 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u21 a
    rcases c879 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd n0 a
    · exact absurd a u20
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a u22
    · exact absurd a u6
  have c2703 : v26 ∨ v4 ∨ v6 ∨ v25 ∨ v27 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v12 := by
      rcases c2701 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v28 := by
      rcases c2702 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u4 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u2 a
    rcases c2576 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u1
  have c2704 : ¬v32 ∨ v6 ∨ v22 ∨ v25 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u15 : ¬v4 := by
      rcases c2691 with a|a
      · exact a
      · exact absurd a n2
    have u16 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u17 : ¬v40 := by
      rcases c2700 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u18 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v36 := by
      rcases c2673 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u18
    have u20 : ¬v28 := by
      rcases c2702 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
    have u21 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : v26 := by
      rcases c2703 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u16
    have u23 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : v39 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u23
      · exact absurd a n3
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : v7 := by
      rcases c532 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u19
      · exact a
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u7
    have u27 : v13 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u28 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u4
    have u32 : v1 := by
      rcases c2570 with a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u19
    rcases c4 with a|a|a|a
    · exact absurd u32 a
    · exact absurd u31 a
    · exact absurd u26 a
    · exact absurd u8 a
  have c2705 : ¬v13 ∨ v4 ∨ v25 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c1376 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u3
  have c2706 : v20 ∨ v12 ∨ v13 ∨ v14 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ ¬v34 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n9 a
      · exact a
    rcases c538 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n12
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n3
  have c2707 : v12 ∨ v6 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v40 := by
      rcases c2700 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u7 : ¬v4 := by
      rcases c2691 with a|a
      · exact a
      · exact absurd a n2
    have u8 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u9 : ¬v32 := by
      rcases c2704 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v28 := by
      rcases c2702 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
    have u11 : ¬v13 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u9
    have u12 : ¬v39 := by
      rcases c1402 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v10 := by
      rcases c2505 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v11 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u3
    have u15 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u10
    have u19 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u10
    have u20 : ¬v20 := by
      rcases c1538 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u10
    have u21 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a u8
    have u22 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u21 a
      · exact a
    rcases c2706 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u22
    · exact absurd u21 a
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u8
  have c2708 : ¬v26 ∨ v6 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n0 a
    have u14 : ¬v40 := by
      rcases c2700 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
    have u15 : ¬v4 := by
      rcases c2691 with a|a
      · exact a
      · exact absurd a u8
    have u16 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a u8
      · exact a
    have u17 : ¬v32 := by
      rcases c2704 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
    have u18 : ¬v13 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u17
    have u19 : v12 := by
      rcases c2707 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
    have u20 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : v18 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u22
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u25 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u12
    have u26 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
    have u29 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a u27
      · exact absurd a u11
      · exact absurd a u16
    have u30 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u29 a
      · exact a
    have u33 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u29 a
    have u34 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u33
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u35 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd a u34
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c218 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u28
    · exact absurd a u35
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u32
    · exact absurd a u26
    · exact absurd a u31
    · exact absurd a u33
    · exact absurd a u14
    · exact absurd a u27
  have c2709 : v32 ∨ v4 ∨ v6 ∨ v25 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v13 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
    have u7 : ¬v39 := by
      rcases c1402 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v26 := by
      rcases c2708 with a|a
      · exact a
      · exact absurd a n2
    have u9 : ¬v28 := by
      rcases c2702 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u10 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v27 := by
      rcases c2576 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a u10
    have u12 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u3
    have u14 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v5 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd u11 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c805 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2710 : v12 ∨ v4 ∨ v6 ∨ v13 ∨ ¬v27 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v5 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c805 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2711 : v13 ∨ v4 ∨ v6 ∨ ¬v7 ∨ v18 ∨ v19 ∨ ¬v27 ∨ v31 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c2702 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
    have u9 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n6 a
    have u10 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n6 a
      · exact a
    have u12 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n6 a
      · exact a
    have u13 : v32 := by
      rcases c2709 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v39 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v36 := by
      rcases c2673 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u18
    have u20 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v12 := by
      rcases c2710 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v1 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u2
    have u24 : v5 := by
      rcases c427 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
    rcases c896 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd n3 a
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c2712 : v25 ∨ v6 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u9 : ¬v26 := by
      rcases c2708 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v40 := by
      rcases c2700 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v4 := by
      rcases c2691 with a|a
      · exact a
      · exact absurd a n2
    have u12 : ¬v28 := by
      rcases c2702 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
    have u13 : v32 := by
      rcases c2709 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u8
    have u14 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v36 := by
      rcases c2673 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
    have u21 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : v39 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u15
    have u23 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : v7 := by
      rcases c532 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u20
      · exact a
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u7
    have u25 : v27 := by
      rcases c2704 with a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
    have u26 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u13 a
      · exact a
    have u27 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u26
      · exact absurd a u18
    have u28 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u18
      · exact absurd a u27
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u26
    have u29 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : v13 := by
      rcases c2711 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd u24 a
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd u25 a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u8
    have u32 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : ¬v5 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u32
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a u32
    · exact absurd a u33
    · exact absurd a u10
    · exact absurd a u30
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u14
  have c2713 : ¬v13 ∨ v6 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v26 := by
      rcases c2708 with a|a
      · exact a
      · exact absurd a n1
    have u12 : v25 := by
      rcases c2712 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u13 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u14 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u15
    have u17 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u15
    have u18 : ¬v40 := by
      rcases c2700 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u19 : ¬v4 := by
      rcases c2681 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u18
    have u20 : ¬v5 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v19 := by
      rcases c1372 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : v33 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u4
      · exact a
    have u23 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : v39 := by
      rcases c839 with a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u11
      · exact a
      · exact absurd a u18
      · exact absurd a u13
    rcases c1402 with a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd u24 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2714 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v40 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u5
    have u7 : v33 := by
      rcases c2576 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u8 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v39 := by
      rcases c839 with a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a n5
    rcases c1402 with a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd u9 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2715 : v6 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n1
      · exact a
    have u2 : ¬v26 := by
      rcases c2708 with a|a
      · exact a
      · exact absurd a n0
    have u3 : ¬v13 := by
      rcases c2713 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u4 : v25 := by
      rcases c2712 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u5 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u4 a
    rcases c2714 with a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u1
  have c2716 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v31 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
    have u4 : v30 := by
      rcases c2674 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c110 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2717 : v32 ∨ v12 ∨ v13 ∨ v22 ∨ ¬v25 ∨ v27 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n4 a
    have u12 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n3
    have u13 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n3
      · exact a
    have u14 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v39 := by
      rcases c1402 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u13
    have u17 : ¬v34 := by
      rcases c2354 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u13
    have u18 : v5 := by
      rcases c2716 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n6
    have u19 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u18 a
      · exact a
      · exact absurd u12 a
    have u20 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u18 a
      · exact a
      · exact absurd u12 a
    have u21 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u12 a
      · exact absurd u8 a
    have u22 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u8 a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v42 := by
      rcases c325 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u20
      · exact absurd a u14
      · exact a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u26 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v29 := by
      rcases c2650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u26
      · exact absurd a u27
    rcases c2692 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u21
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u28
    · exact absurd a n0
    · exact absurd a u26
    · exact absurd a u15
  have c2718 : ¬v5 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n1
    have u9 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n1
      · exact a
    have u10 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd u7 a
      · exact absurd n0 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd u7 a
      · exact absurd n0 a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact absurd u7 a
    have u13 : v42 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u10
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u6
    have u14 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : v32 := by
      rcases c2692 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u16
    have u19 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : v24 := by
      rcases c2254 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u22 a
    rcases c444 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u16
    · exact absurd a u23
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a u20
  have c2719 : v12 ∨ v13 ∨ v22 ∨ ¬v25 ∨ v27 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n2
    have u12 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u10
    have u13 : v32 := by
      rcases c2717 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v36 := by
      rcases c2673 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u17
    have u21 : ¬v5 := by
      rcases c2718 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u20
    have u22 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a n5
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u14
    have u23 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : v11 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u22 a
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u8
      · exact a
      · exact absurd a n4
      · exact absurd a n1
    have u25 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd u7 a
      · exact a
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c399 with a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a n0
    · exact absurd u11 a
    · exact absurd a u21
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u27
    · exact absurd a n1
  have c2720 : ¬v25 ∨ v13 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a u9
    have u14 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
    have u15 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v12 := by
      rcases c2719 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a n2
    have u17 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd u8 a
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : v5 := by
      rcases c260 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd u13 a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u12
    have u22 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u13 a
      · exact absurd u8 a
    have u23 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u21 a
      · exact a
      · exact absurd u13 a
    rcases c1887 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd u8 a
    · exact absurd a u23
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2721 : v26 ∨ v1 ∨ v3 ∨ v4 ∨ v7 ∨ v25 ∨ v27 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n0
    have u15 : v32 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : v39 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u16
    have u21 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u20 a
    rcases c404 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u21
    · exact absurd a n4
    · exact absurd a u22
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a u7
  have c2722 : ¬v5 ∨ v22 ∨ v25 ∨ v27 ∨ v28 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n1
      · exact a
    have u11 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u9 a
      · exact absurd u8 a
    have u15 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v26 := by
      rcases c2721 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u10
    have u17 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : ¬v17 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a n2
    have u25 : ¬v39 := by
      rcases c2109 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
    have u26 : v32 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c2483 with a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a u25
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  exact ⟨c2690, c2701, c2705, c2714, c2715, c2720, c2721, c2722⟩
