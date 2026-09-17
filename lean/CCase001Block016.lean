import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 800-849 of the 2915-step refutation of ccase001: 120 core clauses and 37 earlier-derived ones give 21 more. -/
theorem CCase001_block016
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c89 : ¬v16 ∨ ¬v20)
    (c91 : ¬v17 ∨ ¬v18)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c151 : ¬v36 ∨ ¬v42)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c164 : ¬v40 ∨ ¬v41)
    (c166 : ¬v41 ∨ ¬v42)
    (c168 : ¬v44 ∨ ¬v43)
    (c175 : ¬v46 ∨ ¬v44)
    (c176 : ¬v47 ∨ ¬v44)
    (c177 : ¬v48 ∨ ¬v44)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c206 : v43 ∨ ¬v36 ∨ v49 ∨ v35 ∨ v30 ∨ v29 ∨ v42 ∨ v37)
    (c214 : ¬v31 ∨ v38 ∨ v37 ∨ v25 ∨ v39 ∨ v32 ∨ v24 ∨ v30)
    (c244 : ¬v28 ∨ v35 ∨ v21 ∨ v20 ∨ v22 ∨ v15 ∨ v27 ∨ v34)
    (c248 : ¬v41 ∨ v35 ∨ v40 ∨ v34 ∨ v42 ∨ v47 ∨ v48 ∨ v33)
    (c250 : v43 ∨ v15 ∨ v17 ∨ v49 ∨ v7 ∨ v3 ∨ v13 ∨ v9 ∨ v10 ∨ v6 ∨ v21 ∨ ¬v14 ∨ v48 ∨ v8)
    (c266 : v29 ∨ ¬v28 ∨ v35 ∨ v34 ∨ v21 ∨ v27 ∨ v22 ∨ v20)
    (c291 : v35 ∨ v20 ∨ v12 ∨ v19 ∨ ¬v13 ∨ v34 ∨ v33 ∨ v7 ∨ v27 ∨ v8 ∨ v1 ∨ v14 ∨ v15 ∨ v6)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c339 : ¬v27 ∨ v41 ∨ v19 ∨ v35 ∨ v28 ∨ v26 ∨ v20 ∨ v34 ∨ v18 ∨ v32 ∨ v25 ∨ v47 ∨ v48 ∨ v49)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c382 : v22 ∨ ¬v15 ∨ v21 ∨ v9 ∨ v23 ∨ v14 ∨ v16 ∨ v8)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c484 : v1 ∨ v10 ∨ v30 ∨ v4 ∨ v9 ∨ v8 ∨ v31 ∨ ¬v3 ∨ v2 ∨ v32 ∨ v38 ∨ v43 ∨ v45 ∨ v46)
    (c501 : ¬v26 ∨ v33 ∨ v20 ∨ v32 ∨ v27 ∨ v19 ∨ v25 ∨ v18)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c535 : ¬v44 ∨ v37 ∨ v38 ∨ v3 ∨ v2 ∨ v43 ∨ v36 ∨ v45)
    (c556 : v43 ∨ v22 ∨ v34 ∨ v27 ∨ v35 ∨ v23 ∨ v21 ∨ ¬v28 ∨ v15 ∨ v16 ∨ v42 ∨ v30 ∨ v48 ∨ v49)
    (c586 : v43 ∨ ¬v1 ∨ v49 ∨ v9 ∨ v2 ∨ v8 ∨ v7 ∨ v14)
    (c603 : ¬v44 ∨ v37 ∨ v2 ∨ v8 ∨ v36 ∨ v10 ∨ v9 ∨ v3 ∨ v6 ∨ v41 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c746 : ¬v25 ∨ ¬v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c815 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c856 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30)
    (c950 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c955 : ¬v11 ∨ ¬v10 ∨ ¬v20 ∨ v26 ∨ v27)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1021 : v15 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1030 : ¬v33 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1031 : v34 ∨ v20 ∨ ¬v27 ∨ v30 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1132 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1143 : ¬v34 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49)
    (c1145 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v34 ∨ v35)
    (c1167 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1194 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1259 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v45 ∨ v46)
    (c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31)
    (c1263 : ¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    (c1306 : v1 ∨ v2 ∨ v3 ∨ v37 ∨ v43 ∨ ¬v44 ∨ v45)
    (c1326 : ¬v41 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1347 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1367 : ¬v7 ∨ ¬v6 ∨ v37 ∨ ¬v44 ∨ v45)
    (c1376 : v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1388 : ¬v1 ∨ ¬v3 ∨ v8 ∨ v9 ∨ v14 ∨ v43 ∨ v49)
    (c1394 : v16 ∨ v1 ∨ v8 ∨ v15 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1411 : ¬v19 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1412 : v6 ∨ v4 ∨ v5 ∨ v7 ∨ ¬v11 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1413 : v7 ∨ ¬v1 ∨ v2 ∨ ¬v10 ∨ ¬v11 ∨ v43 ∨ v49)
    (c1417 : v35 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v11 ∨ ¬v18 ∨ v20 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28) ∧ (v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v5 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49) ∧ (¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15) ∧ (¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35) ∧ (v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48) ∧ (v13 ∨ ¬v1 ∨ v5 ∨ v14 ∨ v20 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33) ∧ (¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v45 ∨ v46) ∧ (¬v31 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v39) ∧ (¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v3 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49) ∧ (v38 ∨ ¬v1 ∨ ¬v11 ∨ v19 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v43 ∨ v45 ∨ v46 ∨ v48 ∨ v49) ∧ (v12 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v1 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v30 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v37 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v37 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v20 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v37 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35) ∧ (v37 ∨ ¬v13 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1418 : ¬v11 ∨ ¬v1 ∨ ¬v3 ∨ v7 ∨ v10 ∨ v17 ∨ v19 ∨ v20 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v18 := by
      rcases c1417 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v12 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u1
    have u9 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
    have u10 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
    have u11 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n0 a
    rcases c586 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd n1 a
    · exact absurd a n13
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u11
  have c1419 : ¬v28 ∨ ¬v17 ∨ v20 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v34 := by
      rcases c687 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
    have u3 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : v29 := by
      rcases c1132 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd a n3
    rcases c128 with a|a
    · exact absurd u2 a
    · exact absurd u5 a
  have c1420 : v35 ∨ ¬v1 ∨ ¬v3 ∨ v7 ∨ ¬v11 ∨ v19 ∨ v20 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v10 := by
      rcases c1413 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a u2
      · exact a
      · exact absurd n4 a
      · exact absurd a u6
      · exact absurd a n11
    have u8 : v17 := by
      rcases c1418 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v28 := by
      rcases c1419 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a n0
    have u13 : v42 := by
      rcases c1412 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a n11
    have u14 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v34 := by
      rcases c1143 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd u13 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c1347 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a n11
  have c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : v34 := by
      rcases c244 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u2
      · exact a
    have u4 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    rcases c1132 with a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n0
  have c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v34 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    rcases c1263 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1423 : ¬v11 ∨ ¬v1 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v3 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
    have u5 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a u4
    have u6 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u7 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u8 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u9 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
    have u10 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v6 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a u6
      · exact a
      · exact absurd a n15
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n2
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd u5 a
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n5
  have c1424 : v37 ∨ ¬v1 ∨ v20 ∨ v21 ∨ v28 ∨ ¬v34 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v36 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n0
    have u12 : v7 := by
      rcases c1423 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    rcases c535 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a n7
  have c1425 : v5 ∨ v2 ∨ v3 ∨ v4 ∨ v6 ∨ v20 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v36 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n10
    have u6 : v38 := by
      rcases c535 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n11
    have u7 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n14
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n8
    have u11 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u10 a
    have u12 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u1 a
    have u13 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u10 a
    rcases c603 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a n11
    · exact absurd a n14
    · exact absurd a n15
  have c1426 : ¬v11 ∨ v5 ∨ v6 ∨ v19 ∨ v20 ∨ v28 ∨ ¬v30 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v42 := by
      rcases c1167 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
    have u5 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v41 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
    have u8 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u6
    have u9 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n11
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n7
    rcases c70 with a|a|a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd n0 a
  have c1427 : v47 ∨ ¬v1 ∨ ¬v7 ∨ v20 ∨ v28 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v30 := by
      rcases c1426 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v29 := by
      rcases c1425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u13 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u15 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u12
    have u16 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u17 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n11
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n5
    rcases c70 with a|a|a
    · exact absurd u15 a
    · exact absurd u17 a
    · exact absurd u7 a
  have c1428 : ¬v1 ∨ v15 ∨ v20 ∨ v21 ∨ v35 ∨ v37 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u2 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v34 := by
      rcases c1424 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v7 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
    have u6 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u2 a
    have u7 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u2 a
    have u8 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u2 a
    have u9 : v6 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u5 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n3
    have u10 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c609 with a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a u6
    · exact absurd u9 a
    · exact absurd a n10
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n9
    · exact absurd a u4
  have c1429 : ¬v5 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c1413 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u2
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v12 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a n4
    have u7 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u6 a
    have u8 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
    have u9 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n2 a
    rcases c586 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n1 a
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u9
  have c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n4 a
      · exact a
    rcases c382 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n1
  have c1431 : v42 ∨ ¬v1 ∨ ¬v12 ∨ v20 ∨ v21 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v15 := by
      rcases c1428 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n2 a
    have u4 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u2 a
    have u6 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u1 a
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n0
    have u8 : ¬v34 := by
      rcases c1424 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n1 a
    · exact absurd u7 a
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
  have c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1326 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1145 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c1434 : v20 ∨ ¬v1 ∨ v5 ∨ v21 ∨ v28 ∨ v35 ∨ v37 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c1431 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v34 := by
      rcases c1424 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v7 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n5
    have u8 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n7
    have u9 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v6 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u1
      · exact a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a u6
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n11
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u2
  have c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v40 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n3
      · exact a
    rcases c1245 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1436 : v35 ∨ ¬v1 ∨ v20 ∨ v21 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v12 := by
      rcases c1431 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v15 := by
      rcases c1428 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v5 := by
      rcases c1429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n9
    have u11 : v28 := by
      rcases c1434 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u15 a
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u11 a
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n2
  have c1437 : v27 ∨ ¬v11 ∨ v12 ∨ ¬v14 ∨ v17 ∨ v20 ∨ v24 ∨ v31 ∨ v34 ∨ v38 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u2 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n8
    have u6 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    rcases c609 with a|a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd a n2
    · exact absurd u5 a
    · exact absurd a n12
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a u6
  have c1438 : v13 ∨ ¬v1 ∨ v5 ∨ v14 ∨ v20 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
    have u3 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    rcases c440 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd u2 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n0
  have c1439 : v17 ∨ ¬v1 ∨ v5 ∨ v12 ∨ v20 ∨ ¬v28 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v14 := by
      rcases c1437 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u6 a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v13 := by
      rcases c1438 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u15 a
    have u17 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u6 a
    have u18 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u15 a
    have u19 : ¬v3 := by
      rcases c1388 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n11
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u10
  have c1440 : v27 ∨ ¬v1 ∨ v5 ∨ v7 ∨ ¬v11 ∨ v14 ∨ v20 ∨ v34 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v13 := by
      rcases c1438 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    have u3 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n4 a
    have u4 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    have u5 : v2 := by
      rcases c586 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n11
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
    have u6 : v6 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    rcases c4 with a|a|a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c1441 : v7 ∨ ¬v1 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v20 ∨ v27 ∨ v34 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v14 := by
      rcases c1440 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n4 a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n4 a
    have u4 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n10
    rcases c609 with a|a|a|a|a|a|a|a
    · exact absurd a n14
    · exact absurd a n5
    · exact absurd u4 a
    · exact absurd a n13
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a n0
  have c1442 : v20 ∨ ¬v1 ∨ v12 ∨ v34 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v21 := by
      rcases c1436 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v5 := by
      rcases c1429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n10
    have u11 : ¬v28 := by
      rcases c1439 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v7 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v3 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v27 := by
      rcases c1441 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v33 := by
      rcases c1028 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u18 : v32 := by
      rcases c339 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u7
      · exact a
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c139 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    rcases c501 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
  have c1444 : v20 ∨ ¬v1 ∨ v5 ∨ v12 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v21 := by
      rcases c1436 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v34 := by
      rcases c1442 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
    rcases c1435 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1445 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v38 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n5
    rcases c1259 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1446 : v49 ∨ ¬v1 ∨ v20 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v21 := by
      rcases c1436 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u6 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v5 := by
      rcases c1429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n0
    have u9 : v12 := by
      rcases c1444 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u10 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
    have u11 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
    have u14 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u9 a
    have u15 : ¬v3 := by
      rcases c1388 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n0
    have u16 : ¬v34 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : v27 := by
      rcases c1438 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u18 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u17 a
    rcases c1095 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a u18
  have c1447 : ¬v31 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c746 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c214 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
  have c1448 : v37 ∨ ¬v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v17 ∨ v21 ∨ ¬v27 ∨ v35 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v46 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n12 a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n12 a
      · exact a
    have u6 : ¬v34 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a u4
    have u7 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u7
    have u9 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v6 := by
      rcases c1367 with a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n0
      · exact absurd n12 a
      · exact absurd a n13
    have u11 : v36 := by
      rcases c603 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n12 a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v31 := by
      rcases c1447 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u13
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n13
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u14
  have c1449 : v37 ∨ ¬v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v13 ∨ v14 ∨ v19 ∨ ¬v20 ∨ v28 ∨ v35 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v46 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n13 a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n13 a
      · exact a
    have u5 : ¬v34 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a u3
    have u6 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a u6
    have u8 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v6 := by
      rcases c1367 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd n13 a
      · exact absurd a n14
    have u10 : ¬v27 := by
      rcases c1448 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : v26 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a u1
    have u12 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v36 := by
      rcases c603 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n13 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v31 := by
      rcases c1447 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u16
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a n14
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u17
  have c1450 : v34 ∨ ¬v1 ∨ v3 ∨ ¬v11 ∨ ¬v12 ∨ v19 ∨ ¬v20 ∨ v35 ∨ v37 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u6 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u7 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n6 a
    have u8 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n6 a
      · exact a
    have u9 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n6 a
    have u10 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
    have u11 : v28 := by
      rcases c1449 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v29 := by
      rcases c1021 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd u11 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u16 : v30 := by
      rcases c556 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    rcases c124 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v30 := by
      rcases c556 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u5 a
    rcases c1021 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n5
  have c1452 : ¬v3 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c1413 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u3
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v12 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u2
    have u7 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
    have u8 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u6 a
    rcases c1388 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a n7
  have c1453 : v48 ∨ ¬v1 ∨ v10 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v20 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u3 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u5 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v3 := by
      rcases c1452 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n8
    have u12 : ¬v34 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n8
    have u14 : ¬v28 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n8
    have u15 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u16 : ¬v12 := by
      rcases c1450 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd u3 a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
    have u17 : v4 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd u3 a
      · exact a
      · exact absurd a u8
    have u18 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    have u20 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u18
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
    have u21 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u3 a
    have u22 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u3 a
    have u23 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u3 a
    rcases c250 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a n8
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u6
    · exact absurd u20 a
    · exact absurd a n0
    · exact absurd a u21
  have c1454 : v37 ∨ ¬v1 ∨ v28 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v20 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
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
    have u5 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v3 := by
      rcases c1452 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n8
    have u10 : ¬v5 := by
      rcases c1429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n8
    have u11 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v10 := by
      rcases c1453 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u13 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u3 a
    have u16 : v27 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u1 a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u2
    have u17 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u11
    have u18 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u17 a
    have u22 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u28 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u29 : v40 := by
      rcases c1030 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a n0
      · exact a
      · exact absurd a u27
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u30 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u29 a
      · exact a
    rcases c535 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a u28
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a u30
    · exact absurd a n4
  have c1455 : v46 ∨ ¬v1 ∨ v35 ∨ v37 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v20 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v3 := by
      rcases c1452 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n7
    have u12 : v28 := by
      rcases c1454 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v34 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v10 := by
      rcases c955 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u14
    rcases c1445 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
  have c1456 : v38 ∨ ¬v1 ∨ ¬v11 ∨ v19 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v43 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v10 := by
      rcases c955 with a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v3 := by
      rcases c1452 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n13
    have u6 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n8
  have c1457 : v12 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1122 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1458 : ¬v1 ∨ v13 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v35 := by
      rcases c1455 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v12 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u4 a
    have u17 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u4 a
    have u18 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u4 a
    have u19 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u14 a
    have u20 : ¬v3 := by
      rcases c1388 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a n7
    have u21 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n3
    have u22 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u10
    have u25 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
    have u26 : v24 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u24
      · exact a
      · exact absurd a u25
    have u27 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : v5 := by
      rcases c1438 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u29 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u27
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u6
    rcases c13 with a|a|a
    · exact absurd n0 a
    · exact absurd u28 a
    · exact absurd u29 a
  have c1459 : ¬v1 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v13 := by
      rcases c1458 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u7 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u5 a
    have u8 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u9 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u5 a
    have u10 : v35 := by
      rcases c1455 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u15 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact absurd u15 a
      · exact a
    rcases c586 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u17
    · exact absurd a u6
  have c1460 : v3 ∨ ¬v5 ∨ ¬v11 ∨ ¬v13 ∨ v19 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v48 := by
      rcases c177 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v47 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v46 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u6 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u7 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u8 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n8
    have u9 : v2 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd n6 a
      · exact absurd a n7
    have u10 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v7 := by
      rcases c24 with a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd n2 a
      · exact absurd a u6
    have u14 : v20 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u11
    have u15 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u14 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd n2 a
    · exact absurd a u10
    · exact absurd a u15
  have c1461 : v30 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v37 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v22 := by
      rcases c1394 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    rcases c856 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n0
  have c1462 : ¬v35 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v37 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1463 : ¬v20 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v37 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a u5
    have u7 : v34 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u7 a
      · exact a
    rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1464 : ¬v34 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v37 ∨ v43 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v38 := by
      rcases c484 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c1259 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
  have c1465 : ¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1028 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1466 : v35 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u2 : v21 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n8
      · exact absurd n6 a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n2
    have u3 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u2 a
    rcases c291 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd n6 a
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n2
  have c1467 : v37 ∨ ¬v13 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
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
    have u5 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u7 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u8 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u9 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u10 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u1
    have u13 : v3 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n8
    have u14 : ¬v7 := by
      rcases c30 with a|a|a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v2 := by
      rcases c17 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v20 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v34 := by
      rcases c1464 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd u13 a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u20 : v35 := by
      rcases c1466 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u19
    have u21 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    rcases c484 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u23
    · exact absurd u13 a
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a n5
  exact ⟨c1421, c1422, c1429, c1430, c1432, c1433, c1435, c1438, c1443, c1445, c1447, c1451, c1452, c1456, c1457, c1459, c1461, c1462, c1463, c1465, c1467⟩
