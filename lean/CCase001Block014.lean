import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 700-749 of the 2915-step refutation of ccase001: 127 core clauses and 57 earlier-derived ones give 13 more. -/
theorem CCase001_block014
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
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
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c80 : ¬v15 ∨ ¬v16)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c110 : ¬v26 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c114 : ¬v26 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
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
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c157 : ¬v38 ∨ ¬v39)
    (c161 : ¬v39 ∨ ¬v40)
    (c164 : ¬v40 ∨ ¬v41)
    (c166 : ¬v41 ∨ ¬v42)
    (c168 : ¬v44 ∨ ¬v43)
    (c174 : ¬v44 ∨ ¬v45)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c206 : v43 ∨ ¬v36 ∨ v49 ∨ v35 ∨ v30 ∨ v29 ∨ v42 ∨ v37)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c229 : ¬v42 ∨ v36 ∨ v35 ∨ v34 ∨ v7 ∨ v43 ∨ v49 ∨ v8 ∨ v40 ∨ v33 ∨ v13 ∨ v14 ∨ v47 ∨ v41)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c238 : v43 ∨ ¬v36 ∨ v44 ∨ v29 ∨ v37 ∨ v49 ∨ v30 ∨ v42)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c266 : v29 ∨ ¬v28 ∨ v35 ∨ v34 ∨ v21 ∨ v27 ∨ v22 ∨ v20)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c281 : v43 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v27 ∨ v22 ∨ v42 ∨ v20 ∨ v33 ∨ v19 ∨ v26 ∨ v29 ∨ v48 ∨ v49)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c329 : ¬v26 ∨ v33 ∨ v5 ∨ v19 ∨ v34 ∨ v12 ∨ v25 ∨ v21 ∨ v18 ∨ v27 ∨ v28 ∨ v4 ∨ v6 ∨ v35)
    (c379 : v43 ∨ ¬v42 ∨ v48 ∨ v49 ∨ v35 ∨ v34 ∨ v41 ∨ v36)
    (c382 : v22 ∨ ¬v15 ∨ v21 ∨ v9 ∨ v23 ∨ v14 ∨ v16 ∨ v8)
    (c394 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v8)
    (c397 : v22 ∨ v15 ∨ v31 ∨ v30 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v17)
    (c407 : v11 ∨ ¬v12 ∨ v48 ∨ v1 ∨ v4 ∨ v20 ∨ v5 ∨ v46 ∨ v13 ∨ v19 ∨ v15 ∨ v8 ∨ v47 ∨ v14)
    (c416 : ¬v44 ∨ v36 ∨ v5 ∨ v40 ∨ v29 ∨ v30 ∨ v31 ∨ v2 ∨ v37 ∨ v3 ∨ v43 ∨ v45 ∨ v46 ∨ v47)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c437 : ¬v39 ∨ v32 ∨ v45 ∨ v40 ∨ v38 ∨ v31 ∨ v46 ∨ v33)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c462 : ¬v39 ∨ v32 ∨ v47 ∨ v40 ∨ v38 ∨ v31 ∨ v46 ∨ v33)
    (c466 : ¬v10 ∨ v9 ∨ v17 ∨ v16 ∨ v2 ∨ v4 ∨ v11 ∨ v3)
    (c467 : v29 ∨ ¬v27 ∨ v41 ∨ v28 ∨ v26 ∨ v20 ∨ v34 ∨ v33 ∨ v21 ∨ v22 ∨ v15 ∨ v47 ∨ v48 ∨ v49)
    (c485 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v30 ∨ v42 ∨ v35 ∨ v28)
    (c497 : v43 ∨ v36 ∨ v45 ∨ v2 ∨ v37 ∨ v1 ∨ v38 ∨ ¬v44)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c535 : ¬v44 ∨ v37 ∨ v38 ∨ v3 ∨ v2 ∨ v43 ∨ v36 ∨ v45)
    (c541 : v43 ∨ ¬v36 ∨ v45 ∨ v42 ∨ v1 ∨ v31 ∨ v29 ∨ v37 ∨ v38 ∨ v49 ∨ v30 ∨ v9 ∨ v14 ∨ v8)
    (c586 : v43 ∨ ¬v1 ∨ v49 ∨ v9 ∨ v2 ∨ v8 ∨ v7 ∨ v14)
    (c608 : ¬v26 ∨ v33 ∨ v18 ∨ v46 ∨ v25 ∨ v19 ∨ v34 ∨ v27 ∨ v40 ∨ v31 ∨ v17 ∨ v24 ∨ v47 ∨ v48)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c665 : ¬v20 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c685 : ¬v19 ∨ ¬v28 ∨ v34 ∨ v35)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c694 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c723 : ¬v21 ∨ v8 ∨ v14 ∨ v20 ∨ v22 ∨ v27 ∨ v28)
    (c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c864 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c934 : ¬v10 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c943 : ¬v10 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c950 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c953 : ¬v20 ∨ v6 ∨ ¬v10 ∨ v11 ∨ ¬v12 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1004 : v18 ∨ v16 ∨ v17 ∨ v23 ∨ ¬v25 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1053 : ¬v10 ∨ ¬v2 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1105 : v34 ∨ v40 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1132 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1141 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1168 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1172 : v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1173 : ¬v27 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1194 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1195 : v11 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1196 : v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1201 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v43 ∨ v49)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1235 : ¬v4 ∨ v2 ∨ ¬v5 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45)
    (c1237 : v4 ∨ ¬v3 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1247 : ¬v3 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v49)
    (c1248 : ¬v5 ∨ ¬v4 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45)
    (c1250 : ¬v26 ∨ v4 ∨ v11 ∨ v19 ∨ v31 ∨ v33 ∨ v38 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1252 : v36 ∨ ¬v33 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1259 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v45 ∨ v46)
    (c1261 : ¬v38 ∨ ¬v19 ∨ v30 ∨ v31 ∨ v45 ∨ v46 ∨ v47)
    (c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31)
    (c1263 : ¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    (c1269 : v38 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47)
    (c1272 : ¬v21 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1276 : ¬v19 ∨ v4 ∨ v11 ∨ v22 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1302 : v49 ∨ v10 ∨ v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1304 : v28 ∨ ¬v3 ∨ ¬v10 ∨ v11 ∨ v19 ∨ v20 ∨ v22 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1306 : v1 ∨ v2 ∨ v3 ∨ v37 ∨ v43 ∨ ¬v44 ∨ v45)
    (c1307 : v11 ∨ v19 ∨ v20 ∨ v22 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1310 : v11 ∨ v20 ∨ v22 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1311 : ¬v6 ∨ ¬v4 ∨ v37 ∨ ¬v44 ∨ v45)
    (c1313 : v36 ∨ ¬v4 ∨ ¬v10 ∨ v11 ∨ v22 ∨ v28 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c1314 : v21 ∨ ¬v3 ∨ v4 ∨ ¬v10 ∨ v11 ∨ v15 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v35 ∨ v36 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v43 ∨ ¬v2 ∨ ¬v10 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v41 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49) ∧ (v34 ∨ ¬v3 ∨ v4 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v19 ∨ v22 ∨ ¬v28 ∨ v29 ∨ v35) ∧ (¬v10 ∨ ¬v2 ∨ v11 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v10 ∨ ¬v1 ∨ ¬v3 ∨ v4 ∨ v11 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19) ∧ (¬v26 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v33 ∨ v34 ∨ v35) ∧ (v26 ∨ ¬v4 ∨ ¬v6 ∨ v11 ∨ v19 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v11 ∨ v22 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v4 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v2 ∨ v3 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v14 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v49) := by
  have c1315 : v28 ∨ v11 ∨ v20 ∨ v22 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v30 := by
      rcases c1310 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n14
    have u8 : ¬v39 := by
      rcases c437 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n7
    have u9 : ¬v42 := by
      rcases c1263 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v4 := by
      rcases c1313 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u11 : ¬v19 := by
      rcases c1276 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v26 := by
      rcases c1250 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v21 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n11
    have u14 : v18 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n11
    have u15 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v3 := by
      rcases c1314 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : v2 := by
      rcases c535 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u16
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n10
    have u18 : v12 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u17 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u2 a
    have u20 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u2 a
    have u21 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u9
    have u22 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u20
    rcases c5 with a|a|a
    · exact absurd u22 a
    · exact absurd u17 a
    · exact absurd u21 a
  have c1316 : v43 ∨ ¬v2 ∨ ¬v10 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v13 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    have u6 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u7 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a u2
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd u5 a
    · exact absurd a u3
  have c1317 : v49 ∨ v11 ∨ v20 ∨ v22 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v33 := by
      rcases c1315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n13
      · exact absurd a n0
    have u8 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n0
    have u10 : v40 := by
      rcases c1252 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd a n9
      · exact absurd a u8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u11 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v4 := by
      rcases c1313 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u14 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n11
    have u15 : ¬v2 := by
      rcases c1316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u16 : v1 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a n9
      · exact a
      · exact absurd a u8
      · exact absurd u2 a
    have u17 : v3 := by
      rcases c535 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a u8
      · exact a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n10
    have u18 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd u16 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd u16 a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd u16 a
      · exact absurd u17 a
      · exact a
    have u21 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n13
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u6
    have u22 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u1 a
    have u23 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u1 a
    rcases c950 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd u21 a
    · exact absurd a u23
    · exact absurd a n2
  have c1318 : v11 ∨ v20 ∨ v22 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v29 := by
      rcases c1317 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v36 := by
      rcases c485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n3
    have u10 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v39 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u7
    have u13 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v2 := by
      rcases c1316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : v19 := by
      rcases c1307 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n4
    have u21 : ¬v23 := by
      rcases c397 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u16
      · exact a
      · exact absurd a u20
      · exact absurd a u19
    have u22 : ¬v25 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u21
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u12
    have u24 : ¬v3 := by
      rcases c1247 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n13
    have u25 : ¬v6 := by
      rcases c1311 with a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n7
      · exact absurd u2 a
      · exact absurd a n9
    have u26 : v9 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd u1 a
    have u27 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a n12
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u6
    rcases c56 with a|a|a
    · exact absurd u26 a
    · exact absurd u27 a
    · exact absurd u1 a
  have c1319 : v35 ∨ v11 ∨ v20 ∨ v22 ∨ v28 ∨ v31 ∨ v32 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v42 := by
      rcases c1318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v34 := by
      rcases c379 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u7 : v29 := by
      rcases c1263 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
    rcases c128 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c1320 : v48 ∨ ¬v4 ∨ ¬v10 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n13 a
      · exact a
    have u2 : ¬v6 := by
      rcases c1311 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd n13 a
      · exact absurd a n14
    have u3 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n7
    have u4 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n2 a
    have u5 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n2 a
    have u6 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n12
    have u8 : v1 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd u7 a
      · exact absurd a u5
    rcases c12 with a|a|a
    · exact absurd u8 a
    · exact absurd n1 a
    · exact absurd u7 a
  have c1321 : v6 ∨ v4 ∨ ¬v10 ∨ v11 ∨ v19 ∨ v20 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n13
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n9
    have u2 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v5 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u3
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n12
  have c1322 : v35 ∨ v11 ∨ v20 ∨ v22 ∨ v28 ∨ v32 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v31 := by
      rcases c1319 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v42 := by
      rcases c1168 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n0
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n11
    have u13 : ¬v41 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v4 := by
      rcases c1320 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n11
    have u15 : ¬v2 := by
      rcases c1316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v38 := by
      rcases c1269 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n8
    have u19 : ¬v21 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a n8
    have u20 : ¬v19 := by
      rcases c1276 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : v6 := by
      rcases c1321 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v3 := by
      rcases c1304 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : v1 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n7
    have u24 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd u23 a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u21 a
    have u26 : v13 := by
      rcases c943 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u25
      · exact absurd u21 a
      · exact absurd a u24
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u27 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u24
      · exact a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u9
    rcases c69 with a|a|a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd u1 a
  have c1323 : ¬v6 ∨ v1 ∨ v2 ∨ v4 ∨ v11 ∨ v22 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v3 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n12
    have u6 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n16
    have u7 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u8 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
    have u9 : v38 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n1
      · exact a
      · exact absurd u3 a
    have u10 : v13 := by
      rcases c943 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u8
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v19 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u2 a
    have u13 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u2 a
    have u14 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u2 a
    have u15 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u2 a
    have u16 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u1
    have u17 : v15 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u12
    have u18 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u17 a
      · exact a
    rcases c382 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u17 a
    · exact absurd a u20
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd a u12
  have c1324 : v31 ∨ v2 ∨ v4 ∨ ¬v6 ∨ v11 ∨ v20 ∨ v22 ∨ v27 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a n18
    have u5 : v1 := by
      rcases c1323 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n3 a
    rcases c416 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n13
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c1325 : v48 ∨ v11 ∨ v20 ∨ v22 ∨ v28 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v32 := by
      rcases c1322 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u4 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u11 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n5
    have u12 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n10
    have u13 : ¬v42 := by
      rcases c1263 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n10
    have u14 : ¬v41 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u15 : ¬v2 := by
      rcases c1316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u16 : ¬v4 := by
      rcases c1320 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n10
    have u17 : ¬v6 := by
      rcases c1324 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u18 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u4
    have u19 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u2 a
    have u20 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u2 a
    have u21 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u2 a
    have u22 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
    have u23 : ¬v5 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u21
    have u24 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u13
    have u25 : v3 := by
      rcases c416 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n6
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u26 : v1 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a u19
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd u24 a
      · exact absurd a u20
    rcases c9 with a|a|a
    · exact absurd u26 a
    · exact absurd u25 a
    · exact absurd u24 a
  have c1326 : ¬v41 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1105 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1327 : v34 ∨ ¬v3 ∨ v4 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v12 := by
      rcases c1237 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n13
      · exact a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n0
    rcases c67 with a|a|a
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd n4 a
  have c1328 : v20 ∨ v1 ∨ v11 ∨ v22 ∨ ¬v33 ∨ v34 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v28 := by
      rcases c1325 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u7 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v19 := by
      rcases c685 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v21 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n0
    have u15 : ¬v36 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n7
    have u16 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v40 := by
      rcases c1252 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a u9
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : v2 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd u8 a
    have u19 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u17 a
    rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd u18 a
    · exact absurd a n2
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1329 : v20 ∨ v1 ∨ v6 ∨ v11 ∨ v22 ∨ v34 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v28 := by
      rcases c1325 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v19 := by
      rcases c685 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v33 := by
      rcases c1328 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n11
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n5
    have u12 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u2 a
    have u13 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u2 a
    have u14 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u2 a
    have u15 : ¬v7 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u13
    have u16 : v5 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a n0
    have u17 : ¬v2 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : v4 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u16 a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u14
    have u19 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u18 a
    rcases c1306 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd u3 a
    · exact absurd a n8
  have c1330 : ¬v1 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n16
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n13
    have u4 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n2 a
    have u5 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n10
      · exact a
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a u1
    have u6 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u5 a
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n15
    · exact absurd a n14
    · exact absurd a n16
    · exact absurd a u4
  have c1331 : v37 ∨ v6 ∨ v11 ∨ v20 ∨ v22 ∨ v34 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v28 := by
      rcases c1325 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v19 := by
      rcases c685 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v16 := by
      rcases c678 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : v1 := by
      rcases c1329 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v33 := by
      rcases c1330 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v21 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n3
    have u21 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n11
    have u22 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v40 := by
      rcases c1252 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd a u19
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u24 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u26 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a n8
    have u27 : v3 := by
      rcases c535 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a u19
      · exact a
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a n7
    rcases c1247 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd u3 a
    · exact absurd a n7
    · exact absurd a n11
  have c1332 : ¬v19 ∨ v22 ∨ ¬v28 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1132 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
  have c1333 : v20 ∨ v11 ∨ v22 ∨ ¬v34 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v28 := by
      rcases c1325 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u7 : v44 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v19 := by
      rcases c1332 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a n4
    have u10 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u6 a
    have u17 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u18 : ¬v39 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u5
    have u19 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a n10
    have u20 : ¬v42 := by
      rcases c1263 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v21 := by
      rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u6 a
      · exact absurd a n4
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v4 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a n7
    have u24 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v3 := by
      rcases c1247 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a n10
    rcases c535 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n5
    · exact absurd a u10
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a n6
  have c1334 : ¬v6 ∨ v1 ∨ v2 ∨ v11 ∨ v19 ∨ v26 ∨ v33 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v3 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n8
    have u6 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u7 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
    have u8 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u1
    have u9 : v13 := by
      rcases c943 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a u7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c67 with a|a|a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd u2 a
  have c1335 : ¬v10 ∨ ¬v2 ∨ v11 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v12 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n0 a
    have u6 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n8
    have u7 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u8 : ¬v7 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    rcases c440 with a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd u6 a
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a u8
    · exact absurd a u5
  have c1336 : v19 ∨ ¬v6 ∨ v11 ∨ v16 ∨ v17 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v2 := by
      rcases c1335 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v1 := by
      rcases c1334 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd u4 a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    have u7 : v13 := by
      rcases c943 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a u5
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u1
    rcases c67 with a|a|a
    · exact absurd u8 a
    · exact absurd u7 a
    · exact absurd u2 a
  have c1337 : v37 ∨ v11 ∨ v20 ∨ v22 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v44 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c1333 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v6 := by
      rcases c1331 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v28 := by
      rcases c1325 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u7 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v16 := by
      rcases c678 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a n4
    have u13 : ¬v19 := by
      rcases c685 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a n4
    have u14 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a n4
    have u15 : v33 := by
      rcases c1336 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n9
    have u22 : v21 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a u4
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n2
    have u23 : v40 := by
      rcases c1252 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u15 a
      · exact absurd a n0
      · exact absurd a u20
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u24 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u25
    have u27 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u28 : ¬v3 := by
      rcases c1247 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n9
    have u29 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u5 a
    rcases c1306 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a n5
  have c1338 : v11 ∨ v22 ∨ ¬v33 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v20 := by
      rcases c1337 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v44 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
    have u17 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u2
    have u18 : ¬v36 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
    have u19 : v40 := by
      rcases c1252 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u9
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a n6
    have u22 : ¬v3 := by
      rcases c1247 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n9
    have u23 : ¬v5 := by
      rcases c1248 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a n5
    have u24 : v2 := by
      rcases c535 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u22
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n5
    have u25 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd u21 a
    have u26 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u24 a
    have u27 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u8 a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u26
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u27
  have c1339 : ¬v10 ∨ ¬v1 ∨ ¬v3 ∨ v4 ∨ v11 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u3
    have u5 : v13 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd u4 a
      · exact absurd a n5
    rcases c67 with a|a|a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd n0 a
  have c1340 : v48 ∨ ¬v1 ∨ v2 ∨ v4 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v3 := by
      rcases c1339 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u2 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u3 : v9 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
    have u4 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a u2
  have c1341 : v22 ∨ v2 ∨ v4 ∨ v11 ∨ v26 ∨ v27 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v20 := by
      rcases c1337 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v33 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v44 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v1 := by
      rcases c1340 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v6 := by
      rcases c1334 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v3 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd u3 a
      · exact absurd a n8
    have u14 : v12 := by
      rcases c1237 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u4 a
    have u17 : v25 := by
      rcases c953 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd u14 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : v28 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n4
      · exact a
      · exact absurd a u16
      · exact absurd a u5
    rcases c119 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c1342 : v22 ∨ v1 ∨ v2 ∨ v11 ∨ v26 ∨ v27 ∨ v34 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v4 := by
      rcases c1341 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v20 := by
      rcases c1337 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v33 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v44 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v3 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd a n9
    have u11 : ¬v6 := by
      rcases c1334 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u1 a
    have u13 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
    have u14 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u5 a
    have u16 : v25 := by
      rcases c953 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd u13 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u17 : v28 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n4
      · exact a
      · exact absurd a u15
      · exact absurd a u6
    rcases c119 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c1343 : v11 ∨ v2 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v20 := by
      rcases c1337 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v4 := by
      rcases c1341 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v1 := by
      rcases c1342 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u10 : v9 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u2 a
    have u11 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd u6 a
    rcases c55 with a|a|a
    · exact absurd u10 a
    · exact absurd u11 a
    · exact absurd u2 a
  have c1344 : v34 ∨ v2 ∨ v11 ∨ v22 ∨ v27 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v20 := by
      rcases c1337 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v33 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v26 := by
      rcases c1343 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v32 := by
      rcases c665 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd u7 a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n0
    have u11 : v31 := by
      rcases c608 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    rcases c135 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c1345 : ¬v10 ∨ ¬v1 ∨ v2 ∨ ¬v4 ∨ v11 ∨ v16 ∨ v17 ∨ v18 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u3 : v9 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd n0 a
    have u4 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd n3 a
    rcases c55 with a|a|a
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd n0 a
  have c1346 : v26 ∨ v2 ∨ ¬v4 ∨ v11 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v1 := by
      rcases c1345 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v3 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a n13
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n14
    have u8 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u7 a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n2 a
    have u10 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a u3
    have u11 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u2 a
    have u14 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n18
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n9
      · exact a
    have u15 : v36 := by
      rcases c229 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n18
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n16
      · exact absurd a u4
    rcases c151 with a|a
    · exact absurd u15 a
    · exact absurd u14 a
  have c1347 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n0 a
    rcases c379 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
  have c1348 : v35 ∨ v2 ∨ v11 ∨ v22 ∨ v34 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v27 := by
      rcases c1344 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v33 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v20 := by
      rcases c1337 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v44 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v4 := by
      rcases c1346 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v1 := by
      rcases c1340 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v6 := by
      rcases c1334 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v3 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd u4 a
      · exact absurd a n6
    have u21 : v12 := by
      rcases c1237 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u20 a
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u6 a
    have u23 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u6 a
    have u24 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u6 a
    have u25 : ¬v7 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u18
      · exact a
      · exact absurd a u22
      · exact absurd a u24
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u25
    · exact absurd a u22
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u16
  have c1349 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    rcases c1226 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
  have c1350 : ¬v26 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n0 a
    rcases c329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n10
  have c1351 : ¬v3 ∨ ¬v2 ∨ ¬v10 ∨ v11 ∨ v18 ∨ v19 ∨ v21 ∨ v33 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v12 := by
      rcases c1349 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
    have u6 : v26 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c1350 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1352 : ¬v9 ∨ ¬v2 ∨ ¬v10 ∨ v11 ∨ ¬v20 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v26 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u7 a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n4 a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u5
  have c1353 : v22 ∨ v11 ∨ v34 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v20 := by
      rcases c1337 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v33 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
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
    have u4 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v19 := by
      rcases c98 with a|a
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
    have u10 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v2 := by
      rcases c1348 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v9 := by
      rcases c1352 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v3 := by
      rcases c1351 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v4 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd u4 a
      · exact absurd a n1
    have u18 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u14 a
    have u19 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u17 a
      · exact absurd u14 a
      · exact a
    have u20 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd u17 a
    have u21 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u4 a
    have u22 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u4 a
    have u23 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u4 a
    have u24 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a n3
      · exact a
      · exact absurd a u13
    have u25 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u24 a
    rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u13
  have c1354 : v11 ∨ v22 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v20 := by
      rcases c1337 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v33 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v34 := by
      rcases c1353 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n8
    have u18 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
    have u19 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u14
    have u20 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v39 := by
      rcases c437 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u10
    have u22 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a n5
    have u23 : ¬v5 := by
      rcases c1248 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd u1 a
      · exact absurd a n4
    have u24 : ¬v3 := by
      rcases c1247 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n8
    have u25 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd u22 a
    have u26 : v2 := by
      rcases c535 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u24
      · exact a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n4
    have u27 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u2 a
    have u28 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u26 a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u17
    · exact absurd a u28
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a u27
  have c1355 : ¬v4 ∨ v3 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ ¬v12 ∨ v18 ∨ v19 ∨ v22 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n4 a
    have u4 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n4 a
    have u5 : v20 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n6 a
      · exact absurd a n2
    have u6 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v2 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u8
      · exact a
      · exact absurd a n7
      · exact absurd n4 a
    have u10 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u9 a
    have u11 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u4
    have u12 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v44 := by
      rcases c238 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd u11 a
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a u13
    have u15 : v45 := by
      rcases c541 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd u11 a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a u12
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
    rcases c174 with a|a
    · exact absurd u14 a
    · exact absurd u15 a
  have c1356 : v34 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v40 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
    have u3 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : v18 := by
      rcases c1355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd n7 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n20
    have u5 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v27 := by
      rcases c1173 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n19
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n0
  have c1357 : v26 ∨ ¬v4 ∨ ¬v6 ∨ v11 ∨ v19 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v10 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u5 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n1 a
    have u6 : v13 := by
      rcases c943 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c67 with a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd u1 a
  have c1358 : v37 ∨ ¬v4 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v22 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v35 := by
      rcases c1354 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u3 a
    have u13 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u3 a
    have u14 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u16 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v6 := by
      rcases c1357 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v5 := by
      rcases c1248 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd u2 a
      · exact absurd a n6
    have u19 : v3 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n1 a
    have u21 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd u19 a
      · exact a
    have u22 : v36 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd u2 a
    have u23 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u22 a
      · exact a
    rcases c541 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u22 a
    · exact absurd a n6
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u12
  have c1359 : v48 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v22 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v35 := by
      rcases c1354 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u2 a
    have u12 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u2 a
    have u13 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u14 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u17 : ¬v39 := by
      rcases c437 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u5
    have u18 : ¬v4 := by
      rcases c1358 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u19 : ¬v21 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n7
    have u20 : v18 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n7
    have u21 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v27 := by
      rcases c1173 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u26 : ¬v2 := by
      rcases c1335 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u27 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u4
    have u28 : v3 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a n1
      · exact a
    have u29 : ¬v1 := by
      rcases c1339 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u28 a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u30 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u27 a
    rcases c407 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a u29
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u30
    · exact absurd a n7
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a u9
  have c1360 : v22 ∨ v11 ∨ ¬v12 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v35 := by
      rcases c1354 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
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
    have u3 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u3 a
    have u12 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v39 := by
      rcases c437 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u6
    have u16 : v19 := by
      rcases c1359 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u17 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u9
    have u24 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u9
    have u25 : ¬v25 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u24
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a u15
    have u27 : ¬v3 := by
      rcases c1247 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n8
    have u28 : v2 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u27
      · exact absurd a u22
      · exact a
      · exact absurd a u18
      · exact absurd u3 a
    have u29 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u26 a
      · exact absurd u28 a
      · exact a
    have u30 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a n7
      · exact absurd a u10
      · exact a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u5
    have u31 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u30 a
      · exact a
    rcases c467 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u30 a
    · exact absurd a u14
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1361 : v12 ∨ v11 ∨ ¬v19 ∨ v22 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v39 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v25 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n9
    have u10 : ¬v2 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v3 := by
      rcases c1247 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n14
    have u12 : ¬v5 := by
      rcases c1235 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u10
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd n10 a
      · exact absurd a n11
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a u11
    · exact absurd a n12
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd u9 a
  have c1362 : v11 ∨ v22 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v35 := by
      rcases c1354 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v39 := by
      rcases c437 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u6
    have u12 : ¬v12 := by
      rcases c1360 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v19 := by
      rcases c1361 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u14 : v5 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n5
    have u15 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u16 : ¬v2 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v4 := by
      rcases c1235 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd u1 a
      · exact absurd a n3
    have u18 : v6 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u12
    have u19 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u18 a
    rcases c1306 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n3
  have c1363 : v4 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v2 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u2
    have u5 : v6 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n2
    have u6 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    rcases c1306 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd n7 a
    · exact absurd a n8
  have c1364 : v2 ∨ v3 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v14 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : v1 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd n7 a
      · exact absurd a n8
    have u3 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd u2 a
      · exact absurd n2 a
      · exact a
    rcases c586 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd u2 a
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n5
  exact ⟨c1316, c1326, c1327, c1332, c1335, c1339, c1347, c1349, c1350, c1357, c1362, c1363, c1364⟩
