import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 950-999 of the 2915-step refutation of ccase001: 105 core clauses and 40 earlier-derived ones give 19 more. -/
theorem CCase001_block019
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c80 : ¬v15 ∨ ¬v16)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c90 : ¬v16 ∨ ¬v21)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c95 : ¬v18 ∨ ¬v19)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c121 : ¬v28 ∨ ¬v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c138 : ¬v35 ∨ ¬v31)
    (c146 : ¬v36 ∨ ¬v37)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c168 : ¬v44 ∨ ¬v43)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c210 : v4 ∨ v9 ∨ v17 ∨ v3 ∨ ¬v10 ∨ v18 ∨ v2 ∨ v11)
    (c218 : v36 ∨ ¬v35 ∨ v28 ∨ v42 ∨ v32 ∨ v33 ∨ v27 ∨ v29 ∨ v39 ∨ v25 ∨ v34 ∨ v43 ∨ v48 ∨ v49)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c247 : v29 ∨ ¬v22 ∨ v30 ∨ v23 ∨ v35 ∨ v15 ∨ v21 ∨ v28)
    (c312 : ¬v19 ∨ v26 ∨ v13 ∨ v11 ∨ v12 ∨ v27 ∨ v18 ∨ v20)
    (c317 : v22 ∨ ¬v15 ∨ v21 ∨ v16 ∨ v9 ∨ v28 ∨ v8 ∨ v14)
    (c327 : v22 ∨ ¬v15 ∨ v21 ∨ v28 ∨ v9 ∨ v16 ∨ v23 ∨ v8)
    (c335 : v11 ∨ v12 ∨ v24 ∨ v17 ∨ v25 ∨ v26 ∨ ¬v18 ∨ v19)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c352 : v36 ∨ ¬v29 ∨ v42 ∨ v35 ∨ v1 ∨ v30 ∨ v7 ∨ v2 ∨ v23 ∨ v24 ∨ v22 ∨ v38 ∨ v31 ∨ v43)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c368 : v21 ∨ v10 ∨ v46 ∨ v14 ∨ v47 ∨ v7 ∨ v12 ∨ v13 ∨ v45 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v3 ∨ v18)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c383 : v11 ∨ v4 ∨ ¬v3 ∨ v2 ∨ v9 ∨ v45 ∨ v10 ∨ v46)
    (c397 : v22 ∨ v15 ∨ v31 ∨ v30 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v17)
    (c427 : v13 ∨ v9 ∨ v24 ∨ v18 ∨ v4 ∨ v25 ∨ v10 ∨ v20 ∨ v2 ∨ ¬v17 ∨ v3 ∨ v19 ∨ v16 ∨ v27)
    (c435 : ¬v19 ∨ v13 ∨ v18 ∨ v20 ∨ v26 ∨ v25 ∨ v12 ∨ v27)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c466 : ¬v10 ∨ v9 ∨ v17 ∨ v16 ∨ v2 ∨ v4 ∨ v11 ∨ v3)
    (c482 : v8 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v15 ∨ v10)
    (c486 : v48 ∨ v21 ∨ v12 ∨ v8 ∨ v13 ∨ v11 ∨ v1 ∨ v7 ∨ ¬v14 ∨ v4 ∨ v20 ∨ v43 ∨ v18 ∨ v49)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c558 : ¬v20 ∨ v27 ∨ v12 ∨ v26 ∨ v28 ∨ v21 ∨ v13 ∨ v19)
    (c586 : v43 ∨ ¬v1 ∨ v49 ∨ v9 ∨ v2 ∨ v8 ∨ v7 ∨ v14)
    (c597 : v22 ∨ ¬v15 ∨ v23 ∨ v21 ∨ v16 ∨ v14 ∨ v28 ∨ v8)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c683 : ¬v19 ∨ v12 ∨ v13 ∨ v25 ∨ v26 ∨ v27)
    (c694 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42)
    (c866 : ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c898 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v36 ∨ v42)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c943 : ¬v10 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c983 : v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v38 ∨ v45)
    (c988 : ¬v32 ∨ v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40)
    (c989 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1039 : ¬v15 ∨ v8 ∨ v14 ∨ v16 ∨ v22 ∨ v23 ∨ v28)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1194 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1196 : v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1391 : ¬v8 ∨ v1 ∨ v2 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v21)
    (c1413 : v7 ∨ ¬v1 ∨ v2 ∨ ¬v10 ∨ ¬v11 ∨ v43 ∨ v49)
    (c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1457 : v12 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1505 : v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1509 : ¬v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v27 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41)
    (c1517 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c1520 : v30 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v42)
    (c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c1532 : ¬v31 ∨ v7 ∨ v14 ∨ v21 ∨ v24 ∨ v38 ∨ v39 ∨ v42 ∨ v49)
    (c1540 : ¬v24 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1555 : v6 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1558 : v11 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1568 : v11 ∨ v10 ∨ v13 ∨ v19 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1569 : ¬v18 ∨ v1 ∨ v2 ∨ ¬v10 ∨ v22 ∨ v34 ∨ v36 ∨ v40 ∨ v42 ∨ v43)
    (c1570 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1571 : ¬v4 ∨ ¬v6 ∨ ¬v10 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    : (v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v26 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46) ∧ (v25 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46) ∧ (¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28) ∧ (¬v25 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49) ∧ (v49 ∨ ¬v4 ∨ v11 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v27 ∨ v11 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v3 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v29 ∨ v1 ∨ v2 ∨ v7 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v38 ∨ v42 ∨ v43) ∧ (v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v22) ∧ (¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22) ∧ (v23 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45) ∧ (¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12) ∧ (¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45) ∧ (v27 ∨ v4 ∨ v10 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v1 ∨ v2 ∨ ¬v6 ∨ ¬v10 ∨ ¬v11 ∨ v43 ∨ v49) ∧ (¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v10 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v16 ∨ v21 ∨ v27 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v26 ∨ v8 ∨ v9 ∨ ¬v16) := by
  have c1572 : v18 ∨ v2 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v10 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v20 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd n7 a
    have u2 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n5 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    rcases c210 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n6
  have c1573 : v5 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v10 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v19 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n5 a
    have u2 : v18 := by
      rcases c1572 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u2 a
    rcases c466 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n3
  have c1574 : ¬v18 ∨ v1 ∨ v2 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v34 ∨ v36 ∨ v40 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v22 := by
      rcases c1569 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u3 a
      · exact a
    rcases c335 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a u2
  have c1575 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c1435 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1576 : v11 ∨ v1 ∨ v5 ∨ ¬v6 ∨ ¬v10 ∨ v13 ∨ v19 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v7 := by
      rcases c943 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n3 a
    have u4 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u2 a
    have u5 : ¬v12 := by
      rcases c1573 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v18 := by
      rcases c1574 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    rcases c989 with a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n15
  have c1577 : ¬v26 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v31 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c1517 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
  have c1578 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
    have u2 : v31 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c135 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c1579 : ¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    rcases c558 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
  have c1580 : v27 ∨ v1 ∨ ¬v6 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v5 := by
      rcases c1576 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v18 := by
      rcases c1574 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
    have u9 : ¬v26 := by
      rcases c1577 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
    have u10 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v20 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u11
    have u13 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u14 : v14 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n13
      · exact absurd a n18
    have u15 : ¬v8 := by
      rcases c47 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n3 a
    have u16 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n3 a
    have u17 : v21 := by
      rcases c486 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u14 a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n14
      · exact absurd a u7
      · exact absurd a n18
    have u18 : v17 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n4
    rcases c94 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c1581 : ¬v25 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v35 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    rcases c1529 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1582 : v11 ∨ v13 ∨ v19 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
    have u12 : v10 := by
      rcases c1568 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v1 := by
      rcases c1558 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v12 := by
      rcases c1580 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd u12 a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u12 a
    have u18 : v5 := by
      rcases c1576 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd u1 a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u18 a
      · exact absurd u1 a
      · exact a
    have u20 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u1 a
    have u21 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u1 a
    have u22 : ¬v25 := by
      rcases c1581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n8
    have u23 : v18 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n5
    have u24 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u23 a
    rcases c466 with a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u17
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u21
  have c1583 : v49 ∨ ¬v4 ∨ v11 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v10 := by
      rcases c1571 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1584 : v17 ∨ v4 ∨ ¬v6 ∨ ¬v10 ∨ v11 ∨ ¬v12 ∨ v15 ∨ v16 ∨ v18 ∨ v22 ∨ v29 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n3 a
    have u2 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n3 a
    have u3 : v3 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
    have u4 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n11
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u2
    rcases c8 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n2 a
  have c1585 : v27 ∨ v11 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v4 := by
      rcases c1583 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
    have u13 : v19 := by
      rcases c1582 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n4
    have u20 : ¬v26 := by
      rcases c1577 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n4
    have u21 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : v12 := by
      rcases c312 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u17
    have u25 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u6
    have u26 : ¬v31 := by
      rcases c1509 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
    have u27 : v32 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u26
      · exact a
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a n4
    have u28 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd u24 a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u28
      · exact absurd a u8
      · exact absurd a u5
    have u30 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u26
    have u31 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd u2 a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u2 a
    have u33 : v9 := by
      rcases c383 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd u30 a
      · exact absurd a u31
      · exact a
      · exact absurd a n3
      · exact absurd a u29
      · exact absurd a n4
    have u34 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u32
      · exact absurd a u16
      · exact absurd a u28
      · exact absurd a u22
      · exact a
    rcases c41 with a|a|a
    · exact absurd u34 a
    · exact absurd u33 a
    · exact absurd u24 a
  have c1586 : ¬v25 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    have u8 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v7 := by
      rcases c1581 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u11 : ¬v15 := by
      rcases c1039 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u12 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u5
    have u13 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
    have u14 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a n2
    have u15 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u14 a
      · exact a
    rcases c1520 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd u14 a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n10
  have c1587 : ¬v3 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c440 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n2
  have c1588 : v30 ∨ v1 ∨ v2 ∨ v7 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v29 ∨ v36 ∨ v38 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n7 a
    rcases c352 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n7 a
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n11
  have c1589 : ¬v29 ∨ v1 ∨ v2 ∨ v7 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v38 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1588 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1590 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
    rcases c317 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
  have c1591 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
    rcases c317 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n3
  have c1592 : v2 ∨ v7 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v22 ∨ v27 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v15 := by
      rcases c1591 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v24 := by
      rcases c1540 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u3 : ¬v1 := by
      rcases c586 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
    have u4 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a n2
    have u5 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v23 := by
      rcases c1589 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v28 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n14
    rcases c112 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c1593 : v7 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v14 ∨ ¬v16 ∨ v24 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : v31 := by
      rcases c983 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd n6 a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
    rcases c1532 with a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
  have c1594 : v3 ∨ v2 ∨ v4 ∨ ¬v6 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v13 ∨ v14 ∨ v18 ∨ v25 ∨ v27 ∨ v36 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v24 := by
      rcases c1540 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
    have u2 : ¬v16 := by
      rcases c1593 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n10
      · exact a
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
    have u3 : v22 := by
      rcases c1592 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
    have u4 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n12
    have u6 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n15
    · exact absurd a n20
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u6
  have c1595 : v23 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u2
  have c1596 : v25 ∨ v3 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v13 ∨ v14 ∨ v16 ∨ v18 ∨ v24 ∨ v36 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v23 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
    have u2 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v35 := by
      rcases c866 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v15 := by
      rcases c1591 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
    have u7 : v7 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n18
    have u8 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u9 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u10 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u11 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a n3
    have u12 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v17 := by
      rcases c397 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n10
      · exact a
    have u15 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u14 a
      · exact a
    rcases c427 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd u14 a
    · exact absurd a n1
    · exact absurd a u15
    · exact absurd a n8
    · exact absurd a u2
  have c1597 : v36 ∨ v1 ∨ v3 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v13 ∨ v14 ∨ v16 ∨ v18 ∨ v27 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v25 := by
      rcases c1586 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
    have u2 : v24 := by
      rcases c1596 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v15 := by
      rcases c1039 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a u5
      · exact absurd a n4
    have u8 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    rcases c898 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n16
  have c1598 : v18 ∨ v4 ∨ ¬v6 ∨ v10 ∨ ¬v11 ∨ ¬v12 ∨ v13 ∨ v27 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u2 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u3 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v3 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v25 := by
      rcases c1586 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
    have u8 : v7 := by
      rcases c1594 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    have u9 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u8 a
    have u10 : v16 := by
      rcases c1597 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    have u11 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v31 := by
      rcases c983 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd u10 a
      · exact a
      · exact absurd a n9
      · exact absurd a n15
    have u14 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u6
      · exact absurd a u15
    have u18 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u16
      · exact a
      · exact absurd a u2
    have u19 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u18 a
      · exact a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u18 a
    · exact absurd a u14
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u17
  have c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd n4 a
    · exact absurd a n2
    · exact absurd a u1
  have c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1595 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1601 : v3 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v38 ∨ v39 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v23 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u3 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n11
    have u6 : v17 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a n8
    have u7 : ¬v20 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a u4
    rcases c427 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd u6 a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n11
  have c1602 : v48 ∨ v4 ∨ v9 ∨ v10 ∨ v13 ∨ v14 ∨ v18 ∨ v25 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v11 := by
      rcases c1585 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u2 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u5 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u6 : ¬v3 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u7 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v12 := by
      rcases c1598 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u15 : v24 := by
      rcases c1601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n9
    have u16 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v7 := by
      rcases c1540 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n12
    have u18 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a n8
    have u19 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u17 a
    rcases c1575 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n0
  have c1603 : v22 ∨ v8 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v21 ∨ ¬v24 ∨ v25 ∨ v27 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n9
    have u5 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v15 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n1
    have u7 : ¬v1 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u9 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u8 a
      · exact a
    rcases c898 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a n10
    · exact absurd a n14
  have c1604 : v25 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v18 ∨ v27 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
    have u2 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
    have u3 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n19
    have u4 : ¬v24 := by
      rcases c1603 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u5 : v23 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n19
    have u6 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n11
    have u9 : v17 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd n7 a
      · exact absurd a n3
      · exact absurd a n10
    have u10 : ¬v20 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a u7
    rcases c427 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd u9 a
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a n11
  have c1605 : ¬v3 ∨ ¬v6 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c609 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
  have c1606 : v25 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v12 ∨ v13 ∨ v18 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v11 := by
      rcases c1585 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v14 := by
      rcases c1602 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u12 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u1 a
    rcases c1604 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u1 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1607 : ¬v9 ∨ ¬v11 ∨ v12 ∨ v13 ∨ ¬v23 ∨ v25 ∨ v27 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v35 := by
      rcases c866 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u6 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u7 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
    have u9 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v20 := by
      rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : v7 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n13
    have u12 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u7
    have u13 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
    rcases c35 with a|a|a
    · exact absurd u13 a
    · exact absurd u12 a
    · exact absurd u11 a
  have c1608 : ¬v6 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v14 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    have u3 : v5 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n8
    have u4 : v7 := by
      rcases c368 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n7
      · exact absurd a n17
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n8
    rcases c35 with a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd u4 a
  have c1609 : v10 ∨ v4 ∨ v13 ∨ v18 ∨ v25 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v11 := by
      rcases c1585 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v12 := by
      rcases c1598 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v3 := by
      rcases c1605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u13
    have u16 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u13
    have u17 : v9 := by
      rcases c1606 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u1 a
    have u19 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u1 a
    have u20 : ¬v23 := by
      rcases c1607 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v26 := by
      rcases c1608 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v35 := by
      rcases c863 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
    have u25 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u7
    have u26 : ¬v15 := by
      rcases c597 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u18
    have u27 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u25 a
    rcases c482 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd u17 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u27
    · exact absurd a u5
    · exact absurd a u26
    · exact absurd a n0
  have c1610 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ v10 ∨ ¬v11 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v17 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a n6
    have u2 : v19 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n6
    rcases c92 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c1611 : v49 ∨ v4 ∨ v10 ∨ v13 ∨ v18 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v11 := by
      rcases c1585 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u5 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u6 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : v25 := by
      rcases c1609 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u14 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
    have u19 : ¬v12 := by
      rcases c1598 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u20 : ¬v3 := by
      rcases c1605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u21 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u19
    have u22 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u19
    have u23 : v5 := by
      rcases c1610 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n4
    have u24 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u23 a
      · exact absurd u2 a
      · exact a
    have u25 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u2 a
    have u26 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u24
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u7
    have u27 : ¬v29 := by
      rcases c1589 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u12
    have u28 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u1 a
    have u29 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u1 a
    have u30 : v15 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u25
      · exact a
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u29
    rcases c327 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u30 a
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u28
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd a u29
  have c1612 : v1 ∨ v2 ∨ v3 ∨ v10 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v36 ∨ v38 ∨ v39 ∨ v43 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u2 : ¬v9 := by
      rcases c482 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n3
    have u3 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u4 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u1
    have u5 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u4 a
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a n13
  have c1613 : ¬v6 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v21 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v3 := by
      rcases c1605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v1 := by
      rcases c1612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n0 a
    rcases c609 with a|a|a|a|a|a|a|a
    · exact absurd a n20
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n19
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n18
    · exact absurd a u4
  have c1614 : v27 ∨ v4 ∨ v10 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v18 := by
      rcases c1611 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v11 := by
      rcases c1585 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u5 a
    have u17 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u5 a
    have u18 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u5 a
    have u19 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u14
    have u20 : v12 := by
      rcases c1613 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u20 a
    have u22 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u2 a
    have u23 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u2 a
    have u24 : ¬v3 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : v1 := by
      rcases c1612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n4
    have u26 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd u25 a
      · exact absurd u3 a
      · exact a
    rcases c586 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u25 a
    · exact absurd a n8
    · exact absurd a u21
    · exact absurd a u11
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u23
  have c1615 : ¬v1 ∨ v2 ∨ ¬v6 ∨ ¬v10 ∨ ¬v11 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    rcases c1413 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
  have c1616 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    rcases c218 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1617 : v32 ∨ ¬v6 ∨ ¬v10 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v35 := by
      rcases c1616 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u4 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n7
      · exact a
      · exact absurd a n17
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n14
    have u5 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n19
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n15
    rcases c35 with a|a|a
    · exact absurd u4 a
    · exact absurd n1 a
    · exact absurd u5 a
  have c1618 : v21 ∨ ¬v6 ∨ ¬v10 ∨ ¬v11 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u5 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u6 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n6
      · exact a
      · exact absurd a n15
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n11
    have u9 : ¬v25 := by
      rcases c1586 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
    have u10 : ¬v1 := by
      rcases c1615 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n14
      · exact absurd a n17
    have u11 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v24 := by
      rcases c1540 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
    have u13 : ¬v31 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n17
    have u14 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v28 := by
      rcases c1617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u16 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v15 := by
      rcases c1430 with a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact a
    have u19 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u18
      · exact a
      · exact absurd a u16
      · exact absurd a u4
    rcases c1589 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n13
    · exact absurd a n14
  have c1619 : v27 ∨ ¬v6 ∨ ¬v10 ∨ ¬v11 ∨ v13 ∨ v16 ∨ v19 ∨ v21 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u4 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u5 : ¬v1 := by
      rcases c1615 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n14
      · exact absurd a n18
    have u6 : v26 := by
      rcases c1618 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v15 := by
      rcases c317 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
    have u11 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u10
      · exact a
      · exact absurd a u7
      · exact absurd a u3
    have u12 : v30 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n8
      · exact absurd a n13
    rcases c124 with a|a
    · exact absurd u11 a
    · exact absurd u12 a
  have c1620 : ¬v10 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v16 ∨ v21 ∨ v27 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v1 := by
      rcases c1615 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n13
      · exact absurd a n17
    have u7 : ¬v25 := by
      rcases c1586 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
    have u8 : v19 := by
      rcases c1619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v26 := by
      rcases c435 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n6
    have u13 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a u2
    have u17 : v30 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact a
      · exact absurd a n7
      · exact absurd a n12
    rcases c124 with a|a
    · exact absurd u16 a
    · exact absurd u17 a
  have c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    rcases c838 with a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
  exact ⟨c1575, c1577, c1578, c1579, c1581, c1583, c1585, c1587, c1589, c1590, c1591, c1595, c1599, c1600, c1614, c1615, c1616, c1620, c1621⟩
