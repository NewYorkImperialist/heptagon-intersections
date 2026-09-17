import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 900-949 of the 2915-step refutation of ccase001: 138 core clauses and 44 earlier-derived ones give 19 more. -/
theorem CCase001_block018
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
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
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
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
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c290 : v20 ∨ v21 ∨ ¬v14 ∨ v13 ∨ v6 ∨ v8 ∨ v7 ∨ v1)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c299 : ¬v34 ∨ v41 ∨ v33 ∨ v38 ∨ v47 ∨ v42 ∨ v27 ∨ v31 ∨ v32 ∨ v35 ∨ v24 ∨ v26 ∨ v48 ∨ v49)
    (c300 : v24 ∨ ¬v17 ∨ v23 ∨ v9 ∨ v11 ∨ v10 ∨ v16 ∨ v18)
    (c315 : v24 ∨ ¬v17 ∨ v25 ∨ v9 ∨ v11 ∨ v10 ∨ v16 ∨ v18)
    (c331 : ¬v21 ∨ v28 ∨ v41 ∨ v13 ∨ v15 ∨ v35 ∨ v20 ∨ v19 ∨ v14 ∨ v26 ∨ v12 ∨ v36 ∨ v22 ∨ v42)
    (c340 : ¬v32 ∨ v39 ∨ v33 ∨ v26 ∨ v31 ∨ v40 ∨ v25 ∨ v24)
    (c343 : v36 ∨ ¬v35 ∨ v28 ∨ v22 ∨ v29 ∨ v42 ∨ v34 ∨ v41)
    (c347 : v15 ∨ v6 ∨ v13 ∨ v7 ∨ v8 ∨ v21 ∨ v1 ∨ ¬v14)
    (c355 : ¬v31 ∨ v38 ∨ v2 ∨ v4 ∨ v30 ∨ v23 ∨ v24 ∨ v3 ∨ v22 ∨ v32 ∨ v36 ∨ v29 ∨ v39 ∨ v45)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c383 : v11 ∨ v4 ∨ ¬v3 ∨ v2 ∨ v9 ∨ v45 ∨ v10 ∨ v46)
    (c388 : v11 ∨ v10 ∨ v20 ∨ v13 ∨ v5 ∨ v9 ∨ v27 ∨ v4 ∨ v2 ∨ v16 ∨ ¬v12 ∨ v25 ∨ v26 ∨ v19)
    (c409 : v43 ∨ v36 ∨ v10 ∨ v7 ∨ v9 ∨ v30 ∨ v8 ∨ v29 ∨ v3 ∨ v35 ∨ v2 ∨ ¬v1 ∨ v45 ∨ v49)
    (c425 : v36 ∨ v22 ∨ v40 ∨ v23 ∨ v35 ∨ ¬v29 ∨ v33 ∨ v21 ∨ v16 ∨ v34 ∨ v15 ∨ v30 ∨ v26 ∨ v42)
    (c430 : v43 ∨ ¬v21 ∨ v22 ∨ v14 ∨ v49 ∨ v28 ∨ v20 ∨ v15 ∨ v16 ∨ v13 ∨ v23 ∨ v9 ∨ v48 ∨ v7)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c461 : ¬v19 ∨ v26 ∨ v13 ∨ v33 ∨ v39 ∨ v21 ∨ v20 ∨ v41 ∨ v18 ∨ v25 ∨ v28 ∨ v12 ∨ v40 ∨ v14)
    (c488 : ¬v8 ∨ v14 ∨ v2 ∨ v21 ∨ v16 ∨ v1 ∨ v15 ∨ v9)
    (c518 : v11 ∨ v10 ∨ v13 ∨ v4 ∨ v20 ∨ v5 ∨ v17 ∨ ¬v12 ∨ v26 ∨ v19 ∨ v3 ∨ v32 ∨ v33 ∨ v34)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c538 : v10 ∨ v13 ∨ v5 ∨ v9 ∨ v2 ∨ v46 ∨ v18 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v47 ∨ v48)
    (c564 : v12 ∨ ¬v19 ∨ v26 ∨ v46 ∨ v25 ∨ v24 ∨ v13 ∨ v18 ∨ v20 ∨ v10 ∨ v17 ∨ v5 ∨ v47 ∨ v48)
    (c586 : v43 ∨ ¬v1 ∨ v49 ∨ v9 ∨ v2 ∨ v8 ∨ v7 ∨ v14)
    (c591 : v22 ∨ ¬v21 ∨ v28 ∨ v13 ∨ v14 ∨ v27 ∨ v20 ∨ v15)
    (c597 : v22 ∨ ¬v15 ∨ v23 ∨ v21 ∨ v16 ∨ v14 ∨ v28 ∨ v8)
    (c601 : v2 ∨ ¬v17 ∨ v4 ∨ v11 ∨ v24 ∨ v14 ∨ v10 ∨ v3 ∨ v15 ∨ v16 ∨ v21 ∨ v18 ∨ v23 ∨ v28)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c665 : ¬v20 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c694 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c753 : v11 ∨ v10 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c815 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42)
    (c866 : ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c943 : ¬v10 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c988 : ¬v32 ∨ v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40)
    (c989 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1140 : v19 ∨ v18 ∨ v20 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1194 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1195 : v11 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1196 : v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1228 : v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1271 : ¬v22 ∨ v4 ∨ v10 ∨ v11 ∨ v32 ∨ v39 ∨ v46)
    (c1272 : ¬v21 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1274 : ¬v3 ∨ v4 ∨ v10 ∨ v11 ∨ v20 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1388 : ¬v1 ∨ ¬v3 ∨ v8 ∨ v9 ∨ v14 ∨ v43 ∨ v49)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1452 : ¬v3 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1457 : v12 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1481 : ¬v29 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1502 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1505 : v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1506 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v21 ∨ v34 ∨ v36 ∨ v40 ∨ v42 ∨ v43)
    (c1507 : v31 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46)
    (c1511 : v28 ∨ ¬v8 ∨ v13 ∨ ¬v20 ∨ v26 ∨ v27)
    (c1515 : v13 ∨ v1 ∨ v6 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1517 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    : (¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48) ∧ (v30 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v42) ∧ (v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21) ∧ (¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42) ∧ (¬v31 ∨ v7 ∨ v14 ∨ v21 ∨ v24 ∨ v38 ∨ v39 ∨ v42 ∨ v49) ∧ (¬v2 ∨ ¬v1 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v19) ∧ (¬v24 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49) ∧ (v20 ∨ v6 ∨ v13 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v7 ∨ v6 ∨ v13 ∨ v14 ∨ ¬v19 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25) ∧ (¬v27 ∨ ¬v1 ∨ v10 ∨ v11 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46) ∧ (v6 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v11 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v15 ∨ v8 ∨ v14 ∨ v22 ∨ v23 ∨ v28) ∧ (¬v20 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46) ∧ (v11 ∨ v10 ∨ v13 ∨ v19 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v18 ∨ v1 ∨ v2 ∨ ¬v10 ∨ v22 ∨ v34 ∨ v36 ∨ v40 ∨ v42 ∨ v43) ∧ (v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v4 ∨ ¬v6 ∨ ¬v10 ∨ v13 ∨ v47 ∨ v48 ∨ v49) := by
  have c1518 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n12
  have c1519 : v26 ∨ ¬v8 ∨ v13 ∨ ¬v14 ∨ v23 ∨ v24 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u5
    have u7 : v4 := by
      rcases c1228 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u8 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u9 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u10 : v19 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c1518 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1520 : v30 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n7 a
    rcases c425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd n7 a
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n12
  have c1522 : ¬v19 ∨ v1 ∨ v8 ∨ v22 ∨ v23 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n2
    have u5 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u4 a
    rcases c1520 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u4 a
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v20 := by
      rcases c290 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
    have u2 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u1 a
    rcases c347 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd n5 a
  have c1524 : v11 ∨ v6 ∨ ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v4 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n3
    rcases c33 with a|a|a
    · exact absurd u1 a
    · exact absurd u2 a
    · exact absurd n2 a
  have c1525 : ¬v7 ∨ v6 ∨ v11 ∨ ¬v14 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v12 := by
      rcases c1524 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u2 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v17 := by
      rcases c1507 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u6 a
    rcases c315 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u6 a
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u5
  have c1526 : v6 ∨ ¬v7 ∨ v13 ∨ ¬v14 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v11 := by
      rcases c1525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u2 a
    have u4 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n7
      · exact a
      · exact absurd a n16
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n11
    have u5 : ¬v4 := by
      rcases c33 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    rcases c376 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n17
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n15
    · exact absurd a u5
    · exact absurd a n16
    · exact absurd u4 a
  have c1527 : v13 ∨ v1 ∨ v6 ∨ ¬v14 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v27 := by
      rcases c1515 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    have u14 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u2 a
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u9
    have u17 : ¬v8 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u14
    have u19 : ¬v19 := by
      rcases c1522 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u15
    have u20 : ¬v7 := by
      rcases c1526 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v21 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd n3 a
      · exact a
    have u22 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u22
      · exact a
      · exact absurd a u8
      · exact absurd a u17
    rcases c1481 with a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1528 : v29 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n3 a
    rcases c343 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n5
  have c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1528 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1530 : v13 ∨ v1 ∨ v6 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
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
    have u3 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v14 := by
      rcases c1527 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v7 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a u7
    have u9 : v27 := by
      rcases c1515 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
    have u15 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u4
    have u16 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v8 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u11
    have u21 : v9 := by
      rcases c430 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u15 a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u12
      · exact a
      · exact absurd a n6
      · exact absurd a u8
    have u22 : v12 := by
      rcases c331 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u10
      · exact a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u4
    rcases c41 with a|a|a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd u22 a
  have c1531 : v11 ∨ ¬v1 ∨ v6 ∨ v10 ∨ ¬v12 ∨ v13 ∨ v19 ∨ ¬v21 ∨ v24 ∨ v26 ∨ v33 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : v5 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd n4 a
      · exact a
    have u5 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    have u7 : v32 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
    have u8 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n8
      · exact a
    rcases c135 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c1532 : ¬v31 ∨ v7 ∨ v14 ∨ v21 ∨ v24 ∨ v38 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n7
    have u3 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u2 a
      · exact a
    rcases c1517 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
  have c1533 : v13 ∨ v6 ∨ ¬v8 ∨ ¬v25 ∨ v26 ∨ v40 ∨ v41 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v20 := by
      rcases c1511 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u2
    have u4 : v34 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact a
    rcases c897 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1534 : v7 ∨ v6 ∨ ¬v8 ∨ v13 ∨ v14 ∨ v19 ∨ v24 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v1 := by
      rcases c1530 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u3
    have u9 : v12 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd n2 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd n2 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v25 := by
      rcases c1533 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n11
    have u13 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n7
    have u14 : ¬v21 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v31 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n12
    have u16 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n9
    have u17 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u16 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u18
    · exact absurd a n9
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd u16 a
  have c1535 : ¬v2 ∨ ¬v1 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c1226 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n6
  have c1536 : v24 ∨ v6 ∨ v7 ∨ v11 ∨ v13 ∨ v14 ∨ v19 ∨ v25 ∨ v26 ∨ v31 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v1 := by
      rcases c1530 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v32 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n0
    have u10 : v12 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v2 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd a n4
      · exact absurd a n6
    have u12 : ¬v8 := by
      rcases c1534 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u13 : v9 := by
      rcases c586 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n14
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n5
    have u14 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u13 a
      · exact absurd u10 a
      · exact a
    have u15 : v4 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n11
    have u16 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u15 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a n11
    · exact absurd a n3
    · exact absurd a u16
    · exact absurd a n12
    · exact absurd a n10
    · exact absurd u15 a
  have c1537 : v7 ∨ v6 ∨ v13 ∨ v14 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v1 := by
      rcases c1530 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u5
    have u11 : ¬v32 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n5
    have u12 : v12 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v11 := by
      rcases c1536 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
    have u15 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u12 a
    have u16 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
    have u17 : ¬v3 := by
      rcases c1388 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n13
    have u18 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a n9
      · exact a
      · exact absurd a n5
      · exact absurd a n8
    have u19 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v23 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u19
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v35 := by
      rcases c866 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
    have u24 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c299 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n11
    · exact absurd a u6
    · exact absurd a u22
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a u23
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n12
    · exact absurd a n13
  have c1538 : v14 ∨ v6 ∨ v7 ∨ v13 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v31 := by
      rcases c1537 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v21 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n12
    have u9 : v23 := by
      rcases c1517 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u9 a
    rcases c906 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u6
  have c1539 : v14 ∨ v6 ∨ v7 ∨ v13 ∨ v19 ∨ v24 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v25 := by
      rcases c1538 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v21 := by
      rcases c1502 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u10 : v35 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact a
      · exact absurd a u7
      · exact absurd a u3
    rcases c1529 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
  have c1540 : ¬v24 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c1502 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    have u5 : v35 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a n6
    rcases c1529 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1541 : v20 ∨ v6 ∨ v13 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v34 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact a
    rcases c897 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1542 : v7 ∨ v6 ∨ v13 ∨ v14 ∨ ¬v19 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v27 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v35 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a n8
    rcases c1529 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
  have c1543 : v14 ∨ v6 ∨ v7 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c1540 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n8
    have u7 : ¬v19 := by
      rcases c1542 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v26 := by
      rcases c1539 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c863 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u12 : v20 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u3
    rcases c100 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c1544 : v28 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v13 ∨ v14 ∨ ¬v20 ∨ v24 ∨ v27 ∨ v38 ∨ v39 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : v12 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u2
    have u5 : v26 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u1
    have u6 : v11 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd u4 a
      · exact absurd a u2
    have u7 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u6 a
    have u10 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a u10
  have c1545 : v27 ∨ v6 ∨ v13 ∨ v14 ∨ v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v7 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v1 := by
      rcases c1530 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v42 := by
      rcases c156 with a|a
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
    have u12 : v20 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
    have u14 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v28 := by
      rcases c1544 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u12 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
    have u16 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v8 := by
      rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
    have u19 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u7
    have u20 : v12 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u4
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : v11 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd u20 a
      · exact absurd a u14
    rcases c48 with a|a|a
    · exact absurd u18 a
    · exact absurd u20 a
    · exact absurd u21 a
  have c1546 : v14 ∨ v6 ∨ v13 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v24 := by
      rcases c1545 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v20 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u8 a
    rcases c520 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u9
  have c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    rcases c815 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1548 : v25 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v13 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v12 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v11 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
    have u3 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u4 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
    have u5 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n13
      · exact a
      · exact absurd a n8
      · exact absurd a n10
    rcases c1547 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n0
  have c1549 : v46 ∨ v6 ∨ v13 ∨ v14 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v1 := by
      rcases c1530 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v7 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u7 a
    have u11 : v27 := by
      rcases c1546 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
    have u18 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
    have u19 : v19 := by
      rcases c1548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : v12 := by
      rcases c461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a n3
    have u25 : v11 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u9
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n0
    have u26 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u18
    rcases c64 with a|a|a
    · exact absurd u26 a
    · exact absurd u24 a
    · exact absurd u25 a
  have c1550 : v13 ∨ v6 ∨ ¬v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v1 := by
      rcases c1530 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v14 := by
      rcases c1549 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v27 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u9
    have u23 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
    have u24 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u14
    have u25 : v34 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u22
      · exact a
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a n6
    have u26 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
    have u27 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v8 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u29 : v7 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u28
      · exact a
      · exact absurd a u3
    have u30 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u29 a
    have u32 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u30
      · exact a
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a n3
    have u33 : v11 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a n4
    rcases c66 with a|a|a
    · exact absurd u32 a
    · exact absurd u7 a
    · exact absurd u33 a
  have c1551 : ¬v27 ∨ ¬v1 ∨ v10 ∨ v11 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
    have u6 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
    have u7 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u9 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    rcases c6 with a|a|a
    · exact absurd n1 a
    · exact absurd u8 a
    · exact absurd u9 a
  have c1552 : v13 ∨ v6 ∨ v24 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v1 := by
      rcases c1530 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v19 := by
      rcases c1550 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
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
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
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
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
    have u13 : v12 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v14 := by
      rcases c1549 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v11 := by
      rcases c71 with a|a|a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v8 := by
      rcases c52 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u14 a
    have u17 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v2 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a u2
    have u20 : ¬v27 := by
      rcases c1551 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u21 : v20 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : v5 := by
      rcases c538 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd u13 a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd u1 a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u25 a
    have u28 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u27
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a n2
      · exact a
    have u29 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u28 a
      · exact a
    rcases c409 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd a u26
    · exact absurd a u18
    · exact absurd a u29
    · exact absurd a u16
    · exact absurd a u31
    · exact absurd a u27
    · exact absurd a u30
    · exact absurd a u19
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n8
  have c1553 : v11 ∨ ¬v1 ∨ ¬v14 ∨ ¬v20 ∨ v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n7
    have u4 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u6 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd u3 a
    have u7 : v10 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd u3 a
    rcases c68 with a|a|a
    · exact absurd u6 a
    · exact absurd n2 a
    · exact absurd u7 a
  have c1554 : v13 ∨ v6 ∨ v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v1 := by
      rcases c1530 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v19 := by
      rcases c1550 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v26 := by
      rcases c1552 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
    have u16 : v20 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
    have u19 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : v33 := by
      rcases c665 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a u18
      · exact a
      · exact absurd a u17
    have u22 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v14 := by
      rcases c1545 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u24 : v11 := by
      rcases c1553 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u23 a
      · exact absurd u16 a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v3 := by
      rcases c1452 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u24 a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n7
    have u26 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u8
    · exact absurd a n3
  have c1555 : v6 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v1 := by
      rcases c1530 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v19 := by
      rcases c1550 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v24 := by
      rcases c1554 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
    have u15 : v20 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v12 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v14 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a u8
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u17
    have u21 : ¬v11 := by
      rcases c71 with a|a|a
      · exact absurd u16 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v2 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a u8
    have u23 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u16 a
    have u24 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u16 a
      · exact absurd u20 a
      · exact a
    have u25 : v5 := by
      rcases c538 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a n1
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd u16 a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u7 a
      · exact absurd u25 a
      · exact a
    have u27 : v31 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a u19
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
    have u28 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u26
      · exact a
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u6
    rcases c135 with a|a
    · exact absurd u27 a
    · exact absurd u28 a
  have c1556 : v4 ∨ v2 ∨ v5 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v13 ∨ ¬v14 ∨ v19 ∨ ¬v24 ∨ v27 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v8 := by
      rcases c52 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n7 a
    have u7 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
    have u8 : v20 := by
      rcases c388 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n8
    have u9 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v31 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n14
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n12
    rcases c135 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c1557 : ¬v31 ∨ ¬v1 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v36 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    rcases c409 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n10
    · exact absurd a n11
  have c1558 : v11 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v10 := by
      rcases c943 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u3 a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u13
    have u16 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u3 a
      · exact absurd a u10
      · exact a
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a n2
    have u17 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v8 := by
      rcases c52 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u16 a
    have u19 : ¬v31 := by
      rcases c1557 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n9
    have u20 : ¬v24 := by
      rcases c1556 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd u15 a
      · exact absurd a n2
      · exact absurd u16 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n6
    have u21 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n5
      · exact a
      · exact absurd a u20
      · exact absurd a u19
    have u22 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u21 a
      · exact a
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd u15 a
  have c1560 : ¬v15 ∨ v8 ∨ v14 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    rcases c597 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
  have c1563 : ¬v3 ∨ v10 ∨ v11 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v4 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u5 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u6 : v9 := by
      rcases c383 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n5
    have u7 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a u4
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n3
    have u8 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u5
    rcases c62 with a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd u8 a
  have c1564 : v20 ∨ v10 ∨ v11 ∨ v13 ∨ ¬v24 ∨ v27 ∨ v31 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1565 : v10 ∨ v4 ∨ v11 ∨ v13 ∨ v19 ∨ v20 ∨ v27 ∨ v31 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v1 := by
      rcases c1558 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
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
    have u11 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v24 := by
      rcases c1564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v3 := by
      rcases c1563 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n8
      · exact a
      · exact absurd a u12
      · exact absurd a n7
    have u15 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v25 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n9
    have u20 : v32 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd u19 a
      · exact absurd a n7
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u20 a
      · exact a
    have u27 : v9 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u14 a
      · exact absurd a u22
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u15
    have u28 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u25
      · exact absurd a u23
      · exact a
    have u29 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u28 a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v2 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u29
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd u14 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a u30
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u22
    · exact absurd a u24
  have c1566 : v27 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v19 ∨ v31 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v1 := by
      rcases c1558 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
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
    have u11 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
    have u12 : v20 := by
      rcases c1565 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : v25 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n8
    have u19 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v8 := by
      rcases c1506 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u1
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u10
    rcases c1511 with a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd u22 a
    · exact absurd a n4
    · exact absurd u12 a
    · exact absurd a u19
    · exact absurd a n0
  have c1567 : ¬v20 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a n6
    rcases c996 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1568 : v11 ∨ v10 ∨ v13 ∨ v19 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v4 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
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
    have u10 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
    have u11 : v31 := by
      rcases c1566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v22 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n6
    have u18 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u19 : ¬v20 := by
      rcases c1567 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n6
    have u20 : v25 := by
      rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u19
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v3 := by
      rcases c1274 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u24 : v2 := by
      rcases c355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n5
    have u25 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u1 a
    have u26 : v12 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u24 a
      · exact a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u27 : v18 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u25
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd u26 a
    have u28 : v17 := by
      rcases c518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u25
      · exact a
      · exact absurd u26 a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
    rcases c91 with a|a
    · exact absurd u28 a
    · exact absurd u27 a
  have c1569 : ¬v18 ∨ v1 ∨ v2 ∨ ¬v10 ∨ v22 ∨ v34 ∨ v36 ∨ v40 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v8 := by
      rcases c1506 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v9 := by
      rcases c39 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n3 a
    rcases c488 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u7
  have c1570 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u1 a
    rcases c591 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u2
  have c1571 : ¬v4 ∨ ¬v6 ∨ ¬v10 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c943 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  exact ⟨c1518, c1520, c1523, c1529, c1532, c1535, c1540, c1541, c1542, c1547, c1551, c1555, c1558, c1560, c1567, c1568, c1569, c1570, c1571⟩
