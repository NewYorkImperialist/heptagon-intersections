import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 750-799 of the 2915-step refutation of ccase001: 127 core clauses and 44 earlier-derived ones give 13 more. -/
theorem CCase001_block015
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c92 : ¬v17 ∨ ¬v19)
    (c95 : ¬v18 ∨ ¬v19)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c120 : ¬v26 ∨ ¬v27)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c147 : ¬v36 ∨ ¬v38)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c161 : ¬v39 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c168 : ¬v44 ∨ ¬v43)
    (c174 : ¬v44 ∨ ¬v45)
    (c175 : ¬v46 ∨ ¬v44)
    (c176 : ¬v47 ∨ ¬v44)
    (c178 : ¬v49 ∨ ¬v44)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c206 : v43 ∨ ¬v36 ∨ v49 ∨ v35 ∨ v30 ∨ v29 ∨ v42 ∨ v37)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c238 : v43 ∨ ¬v36 ∨ v44 ∨ v29 ∨ v37 ∨ v49 ∨ v30 ∨ v42)
    (c244 : ¬v28 ∨ v35 ∨ v21 ∨ v20 ∨ v22 ∨ v15 ∨ v27 ∨ v34)
    (c248 : ¬v41 ∨ v35 ∨ v40 ∨ v34 ∨ v42 ∨ v47 ∨ v48 ∨ v33)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c408 : v15 ∨ v21 ∨ v16 ∨ v1 ∨ v7 ∨ v14 ∨ v9 ∨ ¬v8)
    (c409 : v43 ∨ v36 ∨ v10 ∨ v7 ∨ v9 ∨ v30 ∨ v8 ∨ v29 ∨ v3 ∨ v35 ∨ v2 ∨ ¬v1 ∨ v45 ∨ v49)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c437 : ¬v39 ∨ v32 ∨ v45 ∨ v40 ∨ v38 ∨ v31 ∨ v46 ∨ v33)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c447 : v43 ∨ ¬v36 ∨ v42 ∨ v21 ∨ v30 ∨ v29 ∨ v22 ∨ v37 ∨ v41 ∨ v34 ∨ v49 ∨ v15 ∨ v48 ∨ v16)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c462 : ¬v39 ∨ v32 ∨ v47 ∨ v40 ∨ v38 ∨ v31 ∨ v46 ∨ v33)
    (c467 : v29 ∨ ¬v27 ∨ v41 ∨ v28 ∨ v26 ∨ v20 ∨ v34 ∨ v33 ∨ v21 ∨ v22 ∨ v15 ∨ v47 ∨ v48 ∨ v49)
    (c484 : v1 ∨ v10 ∨ v30 ∨ v4 ∨ v9 ∨ v8 ∨ v31 ∨ ¬v3 ∨ v2 ∨ v32 ∨ v38 ∨ v43 ∨ v45 ∨ v46)
    (c488 : ¬v8 ∨ v14 ∨ v2 ∨ v21 ∨ v16 ∨ v1 ∨ v15 ∨ v9)
    (c497 : v43 ∨ v36 ∨ v45 ∨ v2 ∨ v37 ∨ v1 ∨ v38 ∨ ¬v44)
    (c499 : v12 ∨ v6 ∨ v5 ∨ v4 ∨ v32 ∨ v20 ∨ v17 ∨ ¬v11 ∨ v25 ∨ v18 ∨ v10 ∨ v31 ∨ v13 ∨ v33)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c532 : v4 ∨ v9 ∨ v2 ∨ v10 ∨ v12 ∨ v5 ∨ v24 ∨ v23 ∨ v17 ∨ ¬v3 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c535 : ¬v44 ∨ v37 ∨ v38 ∨ v3 ∨ v2 ∨ v43 ∨ v36 ∨ v45)
    (c541 : v43 ∨ ¬v36 ∨ v45 ∨ v42 ∨ v1 ∨ v31 ∨ v29 ∨ v37 ∨ v38 ∨ v49 ∨ v30 ∨ v9 ∨ v14 ∨ v8)
    (c586 : v43 ∨ ¬v1 ∨ v49 ∨ v9 ∨ v2 ∨ v8 ∨ v7 ∨ v14)
    (c603 : ¬v44 ∨ v37 ∨ v2 ∨ v8 ∨ v36 ∨ v10 ∨ v9 ∨ v3 ∨ v6 ∨ v41 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c667 : ¬v11 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c685 : ¬v19 ∨ ¬v28 ∨ v34 ∨ v35)
    (c740 : v25 ∨ ¬v10 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49)
    (c856 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30)
    (c864 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c934 : ¬v10 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c943 : ¬v10 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c953 : ¬v20 ∨ v6 ∨ ¬v10 ∨ v11 ∨ ¬v12 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1004 : v18 ∨ v16 ∨ v17 ∨ v23 ∨ ¬v25 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1132 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1167 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1171 : ¬v10 ∨ ¬v11 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c1175 : v13 ∨ ¬v3 ∨ v12 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1194 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1201 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v43 ∨ v49)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1247 : ¬v3 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v49)
    (c1252 : v36 ∨ ¬v33 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1259 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v45 ∨ v46)
    (c1261 : ¬v38 ∨ ¬v19 ∨ v30 ∨ v31 ∨ v45 ∨ v46 ∨ v47)
    (c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31)
    (c1263 : ¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    (c1269 : v38 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47)
    (c1272 : ¬v21 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1302 : v49 ∨ v10 ∨ v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1306 : v1 ∨ v2 ∨ v3 ∨ v37 ∨ v43 ∨ ¬v44 ∨ v45)
    (c1326 : ¬v41 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1327 : v34 ∨ ¬v3 ∨ v4 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1332 : ¬v19 ∨ v22 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1335 : ¬v10 ∨ ¬v2 ∨ v11 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1339 : ¬v10 ∨ ¬v1 ∨ ¬v3 ∨ v4 ∨ v11 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1347 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1349 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19)
    (c1357 : v26 ∨ ¬v4 ∨ ¬v6 ∨ v11 ∨ v19 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1362 : v11 ∨ v22 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1363 : v4 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1364 : v2 ∨ v3 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v14 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v49)
    : (¬v7 ∨ ¬v6 ∨ v37 ∨ ¬v44 ∨ v45) ∧ (v29 ∨ ¬v18 ∨ ¬v22) ∧ (v29 ∨ ¬v19 ∨ ¬v22) ∧ (v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v1 ∨ ¬v3 ∨ v8 ∨ v9 ∨ v14 ∨ v43 ∨ v49) ∧ (v29 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v22 ∨ v30 ∨ v37 ∨ v43 ∨ v45 ∨ v49) ∧ (¬v8 ∨ v1 ∨ v2 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v21) ∧ (v16 ∨ v1 ∨ v8 ∨ v15 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v48 ∨ v49) ∧ (v7 ∨ v1 ∨ ¬v11 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v19 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v6 ∨ v4 ∨ v5 ∨ v7 ∨ ¬v11 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (v7 ∨ ¬v1 ∨ v2 ∨ ¬v10 ∨ ¬v11 ∨ v43 ∨ v49) ∧ (v35 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v11 ∨ ¬v18 ∨ v20 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1365 : v19 ∨ v3 ∨ v4 ∨ v6 ∨ v11 ∨ v33 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v22 := by
      rcases c1362 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v12 := by
      rcases c1363 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u1 a
    have u12 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u1 a
    have u13 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u1 a
    have u14 : ¬v20 := by
      rcases c953 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd u10 a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v5 := by
      rcases c1349 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n0
    have u16 : v2 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u15 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n11
    have u17 : ¬v7 := by
      rcases c24 with a|a|a
      · exact absurd u15 a
      · exact absurd u16 a
      · exact a
    have u18 : v34 := by
      rcases c1335 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd u16 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n11
    have u25 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u26 : ¬v39 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a n8
      · exact absurd a n5
    have u27 : ¬v21 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a u26
      · exact absurd a n8
    have u28 : ¬v42 := by
      rcases c1263 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u27
    · exact absurd a u23
    · exact absurd a u6
    · exact absurd a u28
  have c1367 : ¬v7 ∨ ¬v6 ∨ v37 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n3 a
      · exact a
    rcases c1306 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd n3 a
    · exact absurd a n4
  have c1368 : v45 ∨ v3 ∨ v4 ∨ v11 ∨ v19 ∨ v33 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v22 := by
      rcases c1362 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v12 := by
      rcases c1363 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u1 a
    have u8 : v6 := by
      rcases c1365 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v7 := by
      rcases c1367 with a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n0
    have u10 : v5 := by
      rcases c943 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u8 a
    have u12 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u8 a
    rcases c1306 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd u3 a
    · exact absurd a n0
  have c1369 : v5 ∨ ¬v3 ∨ v4 ∨ ¬v10 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v6 := by
      rcases c1349 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n3 a
    have u4 : v7 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a u3
    rcases c31 with a|a|a
    · exact absurd n1 a
    · exact absurd u4 a
    · exact absurd u1 a
  have c1370 : v11 ∨ v4 ∨ v19 ∨ v33 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v22 := by
      rcases c1362 with a|a|a|a|a|a|a|a
      · exact absurd a n0
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
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v3 := by
      rcases c1368 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v12 := by
      rcases c1363 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v1 := by
      rcases c1339 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v5 := by
      rcases c1369 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v2 := by
      rcases c17 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u11 a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v20 := by
      rcases c953 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v34 := by
      rcases c1327 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n9
    have u22 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c497 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u21
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u22
    · exact absurd u3 a
  have c1371 : v29 ∨ ¬v18 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v30 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
      · exact a
    have u7 : v35 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
    rcases c134 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c1372 : v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19 ∨ ¬v22 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n7
    have u5 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v20 := by
      rcases c953 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v18 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
    have u8 : v29 := by
      rcases c1371 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n5 a
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u9
  have c1373 : v37 ∨ v11 ∨ v19 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u2 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v22 := by
      rcases c1362 with a|a|a|a|a|a|a|a
      · exact absurd a n1
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
    have u5 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v4 := by
      rcases c1370 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v6 := by
      rcases c1357 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u7 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v5 := by
      rcases c1372 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u9 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u7 a
    have u12 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u7 a
    rcases c1306 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd u4 a
    · exact absurd a n4
  have c1374 : v37 ∨ v11 ∨ v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v22 := by
      rcases c1362 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
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
    have u4 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v33 := by
      rcases c1373 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n7
    have u13 : ¬v20 := by
      rcases c887 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a u7
    have u14 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd u2 a
    have u16 : v40 := by
      rcases c1252 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u17
    have u19 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : v3 := by
      rcases c535 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n3
    have u21 : v1 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd u3 a
    rcases c6 with a|a|a
    · exact absurd u21 a
    · exact absurd u20 a
    · exact absurd u18 a
  have c1375 : v29 ∨ ¬v19 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v35 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : v30 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n0
      · exact a
    rcases c134 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c1376 : v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v19 := by
      rcases c1374 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v22 := by
      rcases c1362 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v29 := by
      rcases c1375 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u11 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v39 := by
      rcases c437 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u14
    have u21 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
    rcases c740 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
  have c1377 : ¬v4 ∨ ¬v3 ∨ ¬v11 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n11
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n7
    have u4 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    rcases c72 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n2 a
  have c1378 : ¬v13 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n5 a
    have u3 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n0 a
    have u4 : v5 := by
      rcases c532 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : v1 := by
      rcases c484 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c7 with a|a|a
    · exact absurd u5 a
    · exact absurd n2 a
    · exact absurd u4 a
  have c1379 : v47 ∨ ¬v19 ∨ ¬v22 ∨ v37 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : v29 := by
      rcases c1375 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u8 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v10 := by
      rcases c1171 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
    have u14 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u18 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u7 a
    have u19 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u20 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u12 a
      · exact a
    have u21 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u22 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u23 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a n4
    have u24 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u25 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v2 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u23 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a n6
      · exact absurd a n7
    have u27 : ¬v4 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a n6
      · exact absurd a n7
    have u28 : ¬v13 := by
      rcases c1378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd u23 a
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u29 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u28
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u15
    have u30 : v12 := by
      rcases c1175 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd u23 a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u31 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u29 a
    have u32 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u30 a
    have u33 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u11 a
    rcases c484 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u27
    · exact absurd a u32
    · exact absurd a u33
    · exact absurd a u19
    · exact absurd u23 a
    · exact absurd a u26
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a n4
    · exact absurd a n5
  have c1380 : v47 ∨ ¬v3 ∨ v4 ∨ v10 ∨ ¬v19 ∨ ¬v29 ∨ v30 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v22 := by
      rcases c1379 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n4 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u15 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u4
    have u16 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u17 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u4
    have u18 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v39 := by
      rcases c437 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u2
    have u21 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v25 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u15
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u23 : ¬v28 := by
      rcases c685 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
    have u24 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n7
    have u25 : ¬v2 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n11
      · exact absurd a n12
    have u26 : ¬v13 := by
      rcases c1378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u12 a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u27 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u1
    have u28 : v12 := by
      rcases c1175 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u29 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u27 a
    have u30 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u28 a
    have u31 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u12 a
    rcases c484 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u25
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a n9
    · exact absurd a n10
  have c1381 : v42 ∨ ¬v1 ∨ ¬v3 ∨ ¬v11 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    have u5 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n3 a
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u3 a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n6
  have c1382 : ¬v3 ∨ ¬v11 ∨ ¬v13 ∨ v15 ∨ v21 ∨ v22 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v36 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n10
    have u4 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n11
    have u5 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u2
    rcases c9 with a|a|a
    · exact absurd u5 a
    · exact absurd n0 a
    · exact absurd u4 a
  have c1383 : ¬v3 ∨ ¬v11 ∨ ¬v19 ∨ v22 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v36 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n14
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n8
    have u4 : ¬v28 := by
      rcases c1332 with a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    have u5 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v1 := by
      rcases c1381 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n14
    have u10 : v2 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n11
      · exact a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd n10 a
    have u11 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n3
      · exact a
    have u12 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u10 a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n1 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd u11 a
  have c1384 : v47 ∨ ¬v3 ∨ v4 ∨ v10 ∨ ¬v19 ∨ v30 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v22 := by
      rcases c1379 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n4 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v29 := by
      rcases c1380 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n11
    have u10 : ¬v28 := by
      rcases c1332 with a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a n6
    have u11 : ¬v42 := by
      rcases c1263 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v13 := by
      rcases c1382 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n11
    have u13 : v31 := by
      rcases c1383 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd u6 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
    have u14 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n6
    have u17 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u18 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u19 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u14
    have u20 : v12 := by
      rcases c1175 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u19 a
    have u22 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u5 a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u22
  have c1385 : v38 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c447 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a n15
      · exact absurd a n2
    rcases c1269 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1386 : ¬v11 ∨ ¬v1 ∨ ¬v3 ∨ v4 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v23 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : ¬v39 := by
      rcases c437 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a n13
    have u8 : ¬v25 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : ¬v13 := by
      rcases c1378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : v12 := by
      rcases c499 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a n13
    have u11 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u10 a
    have u12 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n0 a
    have u13 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n0 a
    have u14 : v44 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n17
      · exact absurd a n4
      · exact absurd n2 a
      · exact a
      · exact absurd a n16
    have u15 : v49 := by
      rcases c586 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd n1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u13
    rcases c178 with a|a
    · exact absurd u15 a
    · exact absurd u14 a
  have c1387 : ¬v3 ∨ v4 ∨ v10 ∨ ¬v19 ∨ v30 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v22 := by
      rcases c1379 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v35 := by
      rcases c1384 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n4
    have u18 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : v42 := by
      rcases c1385 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v1 := by
      rcases c1386 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v2 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd u9 a
    have u23 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u7
      · exact a
    have u24 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u22 a
      · exact absurd n0 a
      · exact a
    have u25 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u8 a
    have u26 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u8 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u21
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd u23 a
  have c1388 : ¬v1 ∨ ¬v3 ∨ v8 ∨ v9 ∨ v14 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c586 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n4
  have c1389 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v22 ∨ v30 ∨ v37 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n2
    have u2 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v35 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a n11
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n8
    have u5 : v31 := by
      rcases c541 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n2
    rcases c138 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c1390 : v30 ∨ ¬v3 ∨ ¬v10 ∨ ¬v19 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
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
    have u3 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v22 := by
      rcases c1379 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
    have u7 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
    have u8 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v1 := by
      rcases c1388 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n9
    have u13 : v29 := by
      rcases c1389 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n9
    have u14 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v27 := by
      rcases c1175 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u4
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u19 a
      · exact a
    rcases c1028 with a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u4
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u15
  have c1391 : ¬v8 ∨ v1 ∨ v2 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    rcases c488 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
  have c1392 : ¬v4 ∨ ¬v3 ∨ ¬v19 ∨ v22 ∨ v30 ∨ v31 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c1247 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd n7 a
    · exact absurd a n8
    · exact absurd a n11
  have c1393 : v30 ∨ ¬v3 ∨ ¬v19 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
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
    have u3 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v22 := by
      rcases c1379 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v10 := by
      rcases c1390 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v4 := by
      rcases c1387 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    have u11 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v8 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u13 : v31 := by
      rcases c1392 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u14 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n8
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u12
  have c1394 : v16 ∨ v1 ∨ v8 ∨ v15 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n2
    have u2 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v35 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u5 : v44 := by
      rcases c238 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a u3
    have u6 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v47 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v46 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v45 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1385 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n10
    · exact absurd a n11
  have c1395 : ¬v2 ∨ v3 ∨ ¬v11 ∨ ¬v19 ∨ ¬v29 ∨ v30 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n6
    have u11 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n2 a
    have u13 : ¬v6 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u12
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u1
    have u15 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u14 a
      · exact a
    rcases c1028 with a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
  have c1396 : v48 ∨ v1 ∨ ¬v19 ∨ v30 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u3 : ¬v3 := by
      rcases c1393 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u4 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v2 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n5
    have u9 : ¬v29 := by
      rcases c1395 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u10 : ¬v22 := by
      rcases c1375 with a|a|a
      · exact absurd a u9
      · exact absurd n2 a
      · exact a
    have u11 : v8 := by
      rcases c1394 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n8
    have u12 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u11 a
      · exact absurd u1 a
      · exact a
    have u13 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u1 a
    have u14 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u1 a
    have u15 : ¬v6 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u16 : v7 := by
      rcases c408 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd u11 a
    rcases c203 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd u16 a
    · exact absurd a n0
    · exact absurd a u13
  have c1397 : v29 ∨ v7 ∨ v14 ∨ ¬v19 ∨ v22 ∨ v30 ∨ v35 ∨ v37 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : ¬v28 := by
      rcases c1332 with a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v42 := by
      rcases c1263 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u4
  have c1398 : v30 ∨ ¬v8 ∨ ¬v19 ∨ v29 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c1375 with a|a|a
      · exact absurd a n3
      · exact absurd n2 a
      · exact a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v3 := by
      rcases c1393 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v1 := by
      rcases c1396 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u6 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v4 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd u6 a
      · exact a
      · exact absurd a u2
    have u15 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u5 a
      · exact absurd u14 a
      · exact a
    have u16 : v35 := by
      rcases c1397 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a n5
  have c1399 : v48 ∨ ¬v19 ∨ v29 ∨ v30 ∨ ¬v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v3 := by
      rcases c1393 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u11 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v1 := by
      rcases c1396 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v22 := by
      rcases c1375 with a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
    have u14 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u15 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u16 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u17 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n6
    have u18 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u20 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u14 a
    have u21 : v42 := by
      rcases c1385 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u22 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v2 := by
      rcases c535 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u10
      · exact a
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a n6
    have u24 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u12 a
      · exact absurd u23 a
      · exact a
    have u25 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u20
      · exact a
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u1
    have u26 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u25 a
      · exact a
    rcases c467 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u25 a
    · exact absurd a u19
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n9
  have c1400 : v42 ∨ ¬v1 ∨ v3 ∨ ¬v11 ∨ ¬v19 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n11 a
      · exact a
    have u6 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v2 := by
      rcases c535 with a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n12
    have u9 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n7
    have u10 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n3 a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n15
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n0
  have c1401 : v36 ∨ ¬v10 ∨ ¬v19 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u7 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n7
    have u8 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n11
    rcases c1367 with a|a|a|a|a
    · exact absurd u8 a
    · exact absurd u7 a
    · exact absurd a n9
    · exact absurd u4 a
    · exact absurd a n12
  have c1402 : ¬v1 ∨ v2 ∨ v3 ∨ v8 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v9 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n13 a
      · exact a
    have u3 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n16
    have u4 : v6 := by
      rcases c603 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n13 a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : v7 := by
      rcases c409 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n14
      · exact absurd a n16
    rcases c1367 with a|a|a|a|a
    · exact absurd u5 a
    · exact absurd u4 a
    · exact absurd a n11
    · exact absurd n13 a
    · exact absurd a n14
  have c1403 : v48 ∨ ¬v19 ∨ v29 ∨ v30 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v22 := by
      rcases c1375 with a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
    have u2 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v3 := by
      rcases c1393 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u9 : v1 := by
      rcases c1396 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u11 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u12 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v35 := by
      rcases c1399 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v28 := by
      rcases c1332 with a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a u14
    have u16 : ¬v8 := by
      rcases c1398 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u17 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n8
    have u18 : ¬v42 := by
      rcases c1263 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n8
    have u19 : v31 := by
      rcases c1400 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd u10 a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a n3
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd u11 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u14
    have u23 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u24 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u25 : ¬v10 := by
      rcases c1401 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u26 : v2 := by
      rcases c1402 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd u11 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
    have u27 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u9 a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u9 a
      · exact absurd u26 a
      · exact a
    have u30 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u27
      · exact a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u18
    have u31 : v12 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u29
      · exact absurd u10 a
      · exact absurd a u28
      · exact absurd a u3
    rcases c71 with a|a|a
    · exact absurd u31 a
    · exact absurd u30 a
    · exact absurd u10 a
  have c1404 : v48 ∨ ¬v19 ∨ v30 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v3 := by
      rcases c1393 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u7 : v29 := by
      rcases c1403 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u14 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n4
    have u16 : ¬v41 := by
      rcases c1326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u17 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u3 a
    have u18 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u3 a
    have u19 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u3 a
    have u20 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u3 a
    have u21 : v1 := by
      rcases c1396 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v2 := by
      rcases c1395 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u23 : v7 := by
      rcases c586 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u21 a
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u19
      · exact a
      · exact absurd a u20
    have u24 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u23 a
    have u25 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u18
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u8
    have u26 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u25 a
      · exact a
    rcases c1028 with a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u1
    · exact absurd a u26
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u9
  have c1405 : ¬v10 ∨ ¬v11 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n6
    have u4 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n10
    rcases c1367 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd a n8
    · exact absurd n11 a
    · exact absurd a n12
  have c1406 : ¬v7 ∨ ¬v1 ∨ v3 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : v12 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a n6
    have u5 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n11
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n9
    rcases c70 with a|a|a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd n4 a
  have c1407 : v47 ∨ ¬v1 ∨ v3 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v7 := by
      rcases c1406 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
    have u2 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n14
    have u3 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n4 a
    have u4 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n16
    have u6 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n11
    rcases c609 with a|a|a|a|a|a|a|a
    · exact absurd a n17
    · exact absurd a u3
    · exact absurd u6 a
    · exact absurd a n16
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u1
  have c1408 : v7 ∨ v1 ∨ ¬v11 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n8
    have u2 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u3 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    rcases c530 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n1
  have c1409 : v41 ∨ v3 ∨ v15 ∨ v17 ∨ v18 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
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
    have u4 : ¬v10 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd u2 a
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v1 := by
      rcases c1407 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u6 : v7 := by
      rcases c1408 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n18
    have u7 : v2 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n14
    have u8 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v4 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u10 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u11 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n17
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n10
    have u12 : v12 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a n4
    rcases c70 with a|a|a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd u1 a
  have c1410 : v1 ∨ v2 ∨ ¬v3 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35 ∨ v37 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v28 := by
      rcases c1132 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v7 := by
      rcases c1408 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n16
    have u5 : ¬v8 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v6 := by
      rcases c1367 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n10
      · exact absurd u3 a
      · exact absurd a n12
    have u8 : v30 := by
      rcases c1394 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
    have u9 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u5
    have u10 : v14 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd u4 a
      · exact a
    have u11 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u2 a
    have u15 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n9
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n15
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n5
    · exact absurd a u13
    · exact absurd a u12
  have c1411 : ¬v19 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v30 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u9 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v42 := by
      rcases c1167 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v22 := by
      rcases c1375 with a|a|a
      · exact absurd a u9
      · exact absurd n0 a
      · exact a
    have u15 : ¬v28 := by
      rcases c1332 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u14
      · exact a
      · exact absurd a u9
      · exact absurd a u11
    have u16 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v41 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
    have u19 : v3 := by
      rcases c1409 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v2 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u19 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u21 : v1 := by
      rcases c1410 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u19 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd u21 a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd u21 a
      · exact absurd u19 a
      · exact a
    have u24 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u22
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
    have u25 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n5
      · exact a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u12
    rcases c72 with a|a|a
    · exact absurd u24 a
    · exact absurd u25 a
    · exact absurd u7 a
  have c1412 : v6 ∨ v4 ∨ v5 ∨ v7 ∨ ¬v11 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n9
    have u2 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n4 a
    have u3 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n4 a
    have u4 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n4 a
    have u5 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n4 a
    have u6 : v15 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
    have u7 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u6 a
      · exact a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd n4 a
    · exact absurd a u4
    · exact absurd a n1
  have c1413 : v7 ∨ ¬v1 ∨ v2 ∨ ¬v10 ∨ ¬v11 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u2 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u3 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    rcases c586 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n1 a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u3
  have c1414 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49 := by
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
    have u4 : v29 := by
      rcases c1263 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c128 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c1417 : v35 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v11 ∨ ¬v18 ∨ v20 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n8 a
      · exact a
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
    have u5 : ¬v42 := by
      rcases c1414 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v28 := by
      rcases c1412 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n14
    have u7 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v29 := by
      rcases c1132 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u7
      · exact a
      · exact absurd a n0
    have u10 : v34 := by
      rcases c244 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u8
      · exact a
    rcases c128 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  exact ⟨c1367, c1371, c1375, c1376, c1388, c1389, c1391, c1394, c1408, c1411, c1412, c1413, c1417⟩
