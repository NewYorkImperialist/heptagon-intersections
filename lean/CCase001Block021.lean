import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1050-1099 of the 2915-step refutation of ccase001: 134 core clauses and 70 earlier-derived ones give 23 more. -/
theorem CCase001_block021
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
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
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
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
    (c121 : ¬v28 ∨ ¬v26)
    (c123 : v22 ∨ v27 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c146 : ¬v36 ∨ ¬v37)
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c168 : ¬v44 ∨ ¬v43)
    (c169 : ¬v45 ∨ ¬v43)
    (c174 : ¬v44 ∨ ¬v45)
    (c175 : ¬v46 ∨ ¬v44)
    (c176 : ¬v47 ∨ ¬v44)
    (c177 : ¬v48 ∨ ¬v44)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c214 : ¬v31 ∨ v38 ∨ v37 ∨ v25 ∨ v39 ∨ v32 ∨ v24 ∨ v30)
    (c227 : v12 ∨ ¬v19 ∨ v33 ∨ v39 ∨ v26 ∨ v24 ∨ v11 ∨ v27 ∨ v10 ∨ v18 ∨ v20 ∨ v41 ∨ v17 ∨ v40)
    (c238 : v43 ∨ ¬v36 ∨ v44 ∨ v29 ∨ v37 ∨ v49 ∨ v30 ∨ v42)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c262 : v22 ∨ ¬v21 ∨ v15 ∨ v27 ∨ v28 ∨ v14 ∨ v8 ∨ v20)
    (c266 : v29 ∨ ¬v28 ∨ v35 ∨ v34 ∨ v21 ∨ v27 ∨ v22 ∨ v20)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c307 : v29 ∨ ¬v23 ∨ v3 ∨ v17 ∨ v1 ∨ v9 ∨ v21 ∨ v28 ∨ v16 ∨ v24 ∨ v22 ∨ v2 ∨ v30 ∨ v35)
    (c315 : v24 ∨ ¬v17 ∨ v25 ∨ v9 ∨ v11 ∨ v10 ∨ v16 ∨ v18)
    (c327 : v22 ∨ ¬v15 ∨ v21 ∨ v28 ∨ v9 ∨ v16 ∨ v23 ∨ v8)
    (c345 : ¬v15 ∨ v21 ∨ v19 ∨ v9 ∨ v1 ∨ v7 ∨ v28 ∨ v2 ∨ v20 ∨ v16 ∨ v26 ∨ v22 ∨ v8 ∨ v12)
    (c367 : ¬v45 ∨ v3 ∨ v39 ∨ v37 ∨ v2 ∨ v38 ∨ v44 ∨ v46)
    (c372 : v36 ∨ ¬v35 ∨ v28 ∨ v41 ∨ v29 ∨ v27 ∨ v34 ∨ v42)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c377 : v43 ∨ ¬v37 ∨ v44 ∨ v45 ∨ v29 ∨ v36 ∨ v30 ∨ v38)
    (c383 : v11 ∨ v4 ∨ ¬v3 ∨ v2 ∨ v9 ∨ v45 ∨ v10 ∨ v46)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c400 : ¬v9 ∨ v10 ∨ v17 ∨ v3 ∨ v16 ∨ v2 ∨ v1 ∨ v8)
    (c423 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v23 ∨ v35 ∨ v42 ∨ v30)
    (c451 : ¬v45 ∨ v4 ∨ v37 ∨ v46 ∨ v3 ∨ v39 ∨ v44 ∨ v38)
    (c482 : v8 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v15 ∨ v10)
    (c488 : ¬v8 ∨ v14 ∨ v2 ∨ v21 ∨ v16 ∨ v1 ∨ v15 ∨ v9)
    (c494 : v36 ∨ ¬v35 ∨ v1 ∨ v42 ∨ v28 ∨ v6 ∨ v7 ∨ v29 ∨ v33 ∨ v34 ∨ v26 ∨ v27 ∨ v40 ∨ v49)
    (c526 : v43 ∨ ¬v36 ∨ v49 ∨ v35 ∨ v44 ∨ v37 ∨ v42 ∨ v29)
    (c532 : v4 ∨ v9 ∨ v2 ∨ v10 ∨ v12 ∨ v5 ∨ v24 ∨ v23 ∨ v17 ∨ ¬v3 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c548 : ¬v21 ∨ v28 ∨ v19 ∨ v8 ∨ v25 ∨ v11 ∨ v18 ∨ v15 ∨ v6 ∨ v20 ∨ v1 ∨ v27 ∨ v7 ∨ v14)
    (c551 : v43 ∨ ¬v37 ∨ v34 ∨ v22 ∨ v44 ∨ v38 ∨ v30 ∨ v36 ∨ v48 ∨ v31 ∨ v42 ∨ v24 ∨ v23 ∨ v41)
    (c581 : v43 ∨ v9 ∨ v44 ∨ v1 ∨ v8 ∨ v3 ∨ ¬v2 ∨ v10)
    (c620 : v20 ∨ ¬v10 ∨ ¬v11 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v47 ∨ v48)
    (c626 : v20 ∨ ¬v3 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v46 ∨ v48)
    (c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c751 : v19 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v21 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v49)
    (c753 : v11 ∨ v10 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c821 : ¬v9 ∨ v7 ∨ ¬v13 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c861 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24)
    (c864 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31)
    (c866 : ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c898 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v36 ∨ v42)
    (c950 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c968 : ¬v26 ∨ v3 ∨ v10 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45)
    (c971 : ¬v2 ∨ ¬v4 ∨ ¬v11 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c988 : ¬v32 ∨ v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1054 : v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1058 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v33 ∨ v34)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1194 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1195 : v11 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1211 : v14 ∨ v8 ∨ v9 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v27 ∨ v28 ∨ v35 ∨ v36 ∨ v41 ∨ v42)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1241 : ¬v3 ∨ v2 ∨ ¬v4 ∨ ¬v12 ∨ v15 ∨ v22 ∨ v29 ∨ v36 ∨ v43)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1463 : ¬v20 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1465 : ¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1468 : ¬v3 ∨ ¬v2 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1505 : v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1517 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c1541 : v20 ∨ v6 ∨ v13 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1560 : ¬v15 ∨ v8 ∨ v14 ∨ v22 ∨ v23 ∨ v28)
    (c1567 : ¬v20 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1575 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1577 : ¬v26 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1578 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1587 : ¬v3 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c1589 : ¬v29 ∨ v1 ∨ v2 ∨ v7 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v38 ∨ v42 ∨ v43)
    (c1590 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v22)
    (c1595 : v23 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45)
    (c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c1616 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1628 : v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1634 : ¬v22 ∨ v5 ∨ v11 ∨ v12 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1638 : ¬v18 ∨ v1 ∨ v8 ∨ v22 ∨ v36 ∨ v40 ∨ v42 ∨ v43)
    (c1642 : ¬v16 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1650 : ¬v10 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1664 : ¬v1 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1668 : ¬v4 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1669 : v3 ∨ v1 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v14 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v45)
    (c1671 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22)
    (c1672 : v22 ∨ v1 ∨ ¬v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v13 ∨ v36 ∨ v38 ∨ v40 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47)
    : (v11 ∨ ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v8 ∨ v1 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13) ∧ (¬v24 ∨ v8 ∨ v9 ∨ ¬v15) ∧ (¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ v22 ∨ v38 ∨ v45) ∧ (v15 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v36 ∨ v38 ∨ v40 ∨ v42 ∨ v43 ∨ v45) ∧ (¬v2 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10) ∧ (¬v7 ∨ v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v5 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46) ∧ (¬v24 ∨ v10 ∨ ¬v12 ∨ ¬v13 ∨ ¬v16) ∧ (¬v23 ∨ v7 ∨ v8 ∨ v14 ∨ v41 ∨ v42 ∨ v49) ∧ (¬v22 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v11 ∨ v14 ∨ ¬v21) ∧ (¬v35 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42) ∧ (v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v15 ∨ v1 ∨ v8 ∨ v22 ∨ v29 ∨ v42 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v21 ∨ v8 ∨ v14 ∨ v22 ∨ ¬v24) ∧ (¬v36 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49) ∧ (v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49) ∧ (v22 ∨ v1 ∨ v8 ∨ ¬v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48) ∧ (¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48) ∧ (v24 ∨ v1 ∨ v8 ∨ v15 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1673 : ¬v2 ∨ ¬v3 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : v20 := by
      rcases c1468 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
    have u3 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
    rcases c100 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c1674 : ¬v11 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v10 := by
      rcases c1650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v1 := by
      rcases c1664 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v13 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u7 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u8 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    have u9 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u5 a
    have u17 : ¬v4 := by
      rcases c1668 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v3 := by
      rcases c1669 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n1
    have u19 : v22 := by
      rcases c1672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd u3 a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u20 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u19 a
      · exact a
    have u26 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u11
    have u27 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
    have u28 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u16
    have u29 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u24
    have u30 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u28
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
    have u31 : ¬v35 := by
      rcases c1616 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u30
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u32 : ¬v2 := by
      rcases c1673 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u31
      · exact absurd a u12
      · exact absurd a n5
    have u33 : v5 := by
      rcases c532 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u32
      · exact absurd a u1
      · exact absurd a u9
      · exact a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u29
      · exact absurd u18 a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u34 : ¬v7 := by
      rcases c30 with a|a|a
      · exact absurd u33 a
      · exact absurd u18 a
      · exact a
    have u35 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u34
      · exact absurd a u8
      · exact a
      · exact absurd a u31
      · exact absurd a u21
      · exact absurd a u12
    have u36 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u35 a
    rcases c1211 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u36
    · exact absurd u35 a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u31
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u12
  have c1675 : v11 ∨ ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n3
  have c1676 : v11 ∨ v4 ∨ v5 ∨ v10 ∨ v12 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c1577 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u3 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v19 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u4 a
    rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a n8
  have c1677 : v4 ∨ v1 ∨ ¬v3 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v13 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v5 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v22 := by
      rcases c1634 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v18 := by
      rcases c1676 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v8 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd u8 a
      · exact absurd n6 a
      · exact a
    have u10 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n6 a
    have u11 : ¬v2 := by
      rcases c1468 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u9
      · exact absurd a u5
    rcases c488 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u10
  have c1678 : ¬v8 ∨ v1 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd n0 a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n7 a
    have u3 : v20 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a u1
      · exact a
    have u4 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a u2
      · exact a
    rcases c84 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1679 : v15 ∨ v1 ∨ ¬v3 ∨ v8 ∨ v11 ∨ v12 ∨ v22 ∨ v36 ∨ v40 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n3
    have u2 : ¬v5 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n12
    have u10 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u8
    have u15 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u11
      · exact a
    rcases c898 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n6
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n9
  have c1680 : ¬v3 ∨ v1 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v13 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v5 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v22 := by
      rcases c1634 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v4 := by
      rcases c1677 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
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
    have u4 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v8 := by
      rcases c1678 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd n5 a
    have u8 : v15 := by
      rcases c1679 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v14 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
      · exact absurd a u10
    have u14 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u13 a
    have u16 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u14 a
    rcases c327 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u8 a
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a u7
  have c1681 : v5 ∨ v1 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v13 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v3 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
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
    have u2 : ¬v4 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n13
      · exact a
    have u3 : ¬v22 := by
      rcases c1634 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v18 := by
      rcases c1676 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v8 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n5 a
    have u11 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u9 a
    rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1682 : v49 ∨ v4 ∨ ¬v8 ∨ v12 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v10 := by
      rcases c1650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v1 := by
      rcases c1664 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v11 := by
      rcases c1674 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u6 : v13 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
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
      · exact absurd u5 a
      · exact a
    have u14 : ¬v3 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v5 := by
      rcases c1681 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u6 a
    have u17 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd n2 a
      · exact absurd u6 a
      · exact a
    have u18 : v6 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n3
    have u19 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n4
    have u20 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u15 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u18 a
    have u22 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd n2 a
      · exact absurd a u16
      · exact a
    have u23 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n5
    have u26 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u24
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u8
  have c1683 : ¬v8 ∨ v12 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v10 := by
      rcases c1650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v1 := by
      rcases c1664 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v11 := by
      rcases c1674 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v13 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
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
      · exact absurd u5 a
      · exact a
    have u14 : v5 := by
      rcases c1681 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u17 : v4 := by
      rcases c1682 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u17 a
    have u19 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u14 a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u14 a
      · exact absurd u17 a
      · exact a
    have u21 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd n0 a
      · exact absurd a u15
      · exact a
    have u22 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u21 a
      · exact a
    rcases c296 with a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd u6 a
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u18
  have c1684 : ¬v24 ∨ v8 ∨ v9 ∨ ¬v15 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n3 a
      · exact a
    rcases c327 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n3 a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n1
  have c1685 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ v22 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n0 a
    have u7 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u6
      · exact a
    have u8 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u11
    have u15 : ¬v28 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a u2
    rcases c345 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n8
  have c1686 : v15 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v36 ∨ v38 ∨ v40 ∨ v42 ∨ v43 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n3
    have u2 : ¬v18 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v26 := by
      rcases c968 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n13
    have u10 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n13
    have u12 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v28 := by
      rcases c687 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u14 : v24 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u2
    have u15 : v23 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n11
    rcases c108 with a|a
    · exact absurd u15 a
    · exact absurd u14 a
  have c1687 : v9 ∨ v1 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u2 : v15 := by
      rcases c1686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v18 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u2 a
    have u10 : v14 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a u1
    have u11 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a u9
      · exact a
    have u12 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
    have u19 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
    have u20 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u16
    have u21 : ¬v28 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u5
    have u22 : v23 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u23 : v37 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n7
      · exact a
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u13
    have u24 : v2 := by
      rcases c307 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u22 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u1
      · exact a
      · exact absurd a u13
      · exact absurd a u16
    have u25 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v44 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd u23 a
      · exact a
      · exact absurd a n12
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a n7
    have u27 : ¬v48 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v47 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v46 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : v12 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u29
      · exact absurd a u28
    have u31 : v13 := by
      rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u25
      · exact absurd a n12
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u27
    rcases c73 with a|a|a
    · exact absurd u30 a
    · exact absurd u10 a
    · exact absurd u31 a
  have c1688 : ¬v2 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n3
  have c1689 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n0 a
      · exact a
    rcases c400 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
  have c1690 : ¬v7 ∨ v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n4
  have c1691 : v12 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v1 := by
      rcases c1664 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v13 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v8 := by
      rcases c1683 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v11 := by
      rcases c1674 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v10 := by
      rcases c1650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v3 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v9 := by
      rcases c1687 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n1
    have u17 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd u16 a
      · exact absurd u4 a
      · exact a
    have u18 : v5 := by
      rcases c1681 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v2 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v7 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u18 a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v15 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd u16 a
      · exact absurd a u14
    have u22 : v16 := by
      rcases c482 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u16 a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u14
    have u23 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v6 := by
      rcases c1642 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a u17
    have u26 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u25 a
      · exact absurd u18 a
      · exact a
    have u27 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n2
    have u28 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : v35 := by
      rcases c821 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u20
      · exact absurd u4 a
      · exact absurd a u24
      · exact absurd a u28
      · exact absurd a u30
      · exact absurd a u29
      · exact a
      · exact absurd a u6
      · exact absurd a n5
    rcases c1529 with a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u6
  have c1692 : ¬v5 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c17 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c383 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
  have c1693 : ¬v24 ∨ v10 ∨ ¬v12 ∨ ¬v13 ∨ ¬v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    rcases c745 with a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
  have c1694 : ¬v16 ∨ v7 ∨ v10 ∨ ¬v12 ∨ ¬v13 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c1693 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd n0 a
    have u4 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u7 : v23 := by
      rcases c861 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a u3
    have u8 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v35 := by
      rcases c866 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n6
  have c1695 : ¬v23 ∨ v7 ∨ v8 ∨ v14 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v35 := by
      rcases c866 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n5
    have u6 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u5 a
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u5 a
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u7
  have c1696 : v22 ∨ v1 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ ¬v12 ∨ v15 ∨ v23 ∨ v24 ∨ v36 ∨ v38 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v29 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n12
    have u2 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    rcases c1589 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1697 : ¬v22 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v11 ∨ v14 ∨ ¬v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n7 a
    have u7 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n7 a
    rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n6
  have c1698 : ¬v21 ∨ v1 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ v8 ∨ v11 ∨ ¬v12 ∨ v14 ∨ v23 ∨ v36 ∨ v38 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v22 := by
      rcases c1697 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n0 a
    have u5 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a n5
    have u6 : v24 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd n7 a
      · exact absurd a u1
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v28 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a n9
      · exact a
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n12
    rcases c116 with a|a
    · exact absurd u8 a
    · exact absurd u6 a
  have c1699 : v22 ∨ v1 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ v8 ∨ v9 ∨ ¬v12 ∨ v14 ∨ v16 ∨ v21 ∨ v23 ∨ v36 ∨ v38 ∨ v40 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v15 := by
      rcases c1671 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v24 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd n7 a
      · exact absurd a u1
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v29 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd n7 a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a n16
    have u4 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u3 a
      · exact a
    rcases c898 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a n15
  have c1700 : ¬v35 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    rcases c372 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
  have c1701 : v2 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v1 := by
      rcases c1664 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v12 := by
      rcases c1691 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v13 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u1 a
    have u12 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u3 a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u16 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u3 a
      · exact absurd u5 a
      · exact a
    have u17 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u18 : v3 := by
      rcases c1687 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u2
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a n1
    have u19 : v4 := by
      rcases c383 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u18 a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
    have u20 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v23 := by
      rcases c1695 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
    have u23 : ¬v21 := by
      rcases c1698 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u18 a
      · exact absurd u19 a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd u3 a
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u17
    have u24 : ¬v16 := by
      rcases c1694 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd u3 a
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
    have u25 : v22 := by
      rcases c1699 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u18 a
      · exact absurd u19 a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd u3 a
      · exact absurd a u14
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u17
    have u26 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u6
    have u30 : v35 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u23
      · exact a
      · exact absurd a u27
      · exact absurd a u7
    have u31 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
    have u32 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u30 a
      · exact a
    rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u30 a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u27
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u32
    · exact absurd a u29
    · exact absurd a u31
    · exact absurd a u26
    · exact absurd a u28
    · exact absurd a u9
    · exact absurd a n5
  have c1702 : ¬v22 ∨ v4 ∨ v10 ∨ v11 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
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
    have u4 : v18 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c883 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
  have c1703 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v13 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v1 := by
      rcases c1664 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v12 := by
      rcases c1691 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u10 a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u1 a
    have u14 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u10 a
    have u15 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u10 a
      · exact absurd u1 a
      · exact a
    have u16 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : v2 := by
      rcases c1701 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v3 := by
      rcases c1687 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u9
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a n0
    have u20 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u17 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u17 a
    have u22 : ¬v23 := by
      rcases c1695 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
    have u23 : ¬v22 := by
      rcases c1702 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n1
    have u24 : ¬v18 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u18
    have u25 : ¬v15 := by
      rcases c1671 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u23
    have u26 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n1
    have u27 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u25
      · exact a
      · exact absurd a u23
      · exact absurd a u14
    have u28 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u27 a
      · exact a
    rcases c898 with a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u5
    · exact absurd a u4
  have c1704 : v15 ∨ v1 ∨ v8 ∨ v22 ∨ v29 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n2
    have u2 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v30 := by
      rcases c238 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a n5
    have u4 : v35 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n4
    rcases c134 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1705 : ¬v21 ∨ v8 ∨ v14 ∨ v22 ∨ ¬v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v15 := by
      rcases c1560 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
    have u5 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u5
  have c1706 : ¬v36 ∨ v29 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v30 := by
      rcases c238 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a n3
    have u2 : v35 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n1
    rcases c134 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c1707 : ¬v36 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1706 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1707 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n2
  have c1710 : v16 ∨ v1 ∨ v4 ∨ v8 ∨ v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v37 ∨ v38 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v3 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n13
      · exact a
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n11
    have u5 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n16
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u11
    have u13 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
    have u15 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u16 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
    have u17 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
    have u18 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a n12
    have u19 : ¬v12 := by
      rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n15
    have u20 : ¬v10 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd u18 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
    have u21 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u16
      · exact a
      · exact absurd a n14
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u15
    have u22 : ¬v2 := by
      rcases c17 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u4 a
    have u23 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u12
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u23 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a n1
  have c1711 : v16 ∨ v1 ∨ ¬v4 ∨ v8 ∨ ¬v11 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v10 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n7
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
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v2 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n9
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n1
  have c1712 : ¬v3 ∨ v11 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v12 := by
      rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
    have u2 : ¬v26 := by
      rcases c1058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n18
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a u3
    rcases c1675 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
  have c1713 : v17 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ ¬v36 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n9 a
    have u6 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd n9 a
      · exact a
    have u7 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n13
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
    have u17 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u16
    have u18 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
    have u19 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
    have u20 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u14
    have u21 : v4 := by
      rcases c1710 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u22 : ¬v11 := by
      rcases c1711 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd u21 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
    have u23 : ¬v3 := by
      rcases c1712 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u24 : v2 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u6
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n10
    have u25 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u21 a
      · exact absurd u24 a
      · exact a
    have u26 : v12 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd u24 a
      · exact a
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u27 : v13 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u25
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u28 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u26 a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u26 a
    rcases c581 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u29
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u23
    · exact absurd u24 a
    · exact absurd a u28
  have c1714 : v22 ∨ v1 ∨ v8 ∨ ¬v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v36 := by
      rcases c1713 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u12 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u15
    have u17 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u15
    have u18 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v37 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd u11 a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u12
    have u21 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u20 a
    rcases c551 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u20 a
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u18
  have c1715 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    rcases c551 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n12
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n8
  have c1716 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1717 : v3 ∨ ¬v4 ∨ v8 ∨ ¬v12 ∨ v21 ∨ v28 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ ¬v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : v2 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n11
    have u4 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u6 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u8 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u4
    have u9 : v13 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd u8 a
      · exact absurd a n4
    rcases c73 with a|a|a
    · exact absurd n3 a
    · exact absurd u8 a
    · exact absurd u9 a
  have c1718 : v21 ∨ v1 ∨ ¬v4 ∨ v8 ∨ ¬v12 ∨ v15 ∨ v17 ∨ v28 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ ¬v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v3 := by
      rcases c1717 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd n12 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n2 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact a
    have u6 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u2
    have u7 : v13 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd u6 a
      · exact absurd a n0
    rcases c73 with a|a|a
    · exact absurd n4 a
    · exact absurd u6 a
    · exact absurd u7 a
  have c1720 : v37 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v12 := by
      rcases c1718 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd u2 a
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
    have u5 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n10
      · exact a
      · exact absurd a n19
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n16
    have u6 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u5 a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n2 a
    rcases c367 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u7
    · exact absurd a n15
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n14
    · exact absurd a u3
    · exact absurd a n18
  have c1721 : v4 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v5 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    rcases c376 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd u1 a
  have c1722 : v49 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u13 : ¬v28 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n0
    have u14 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n0
    have u15 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
    have u17 : v36 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u6
      · exact a
      · exact absurd a u14
    have u18 : ¬v37 := by
      rcases c1716 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n12
    have u19 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v27 := by
      rcases c123 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u16
    have u23 : v20 := by
      rcases c1028 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
    have u24 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v4 := by
      rcases c1720 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u26 : v11 := by
      rcases c1567 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u25
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a n10
    have u27 : v3 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a n10
      · exact a
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u20
    have u28 : ¬v13 := by
      rcases c751 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u26 a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n0
    have u29 : v12 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd u27 a
      · exact a
      · exact absurd a u28
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u30 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u26 a
    have u31 : v7 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u30
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n0
    have u32 : ¬v6 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u28
      · exact absurd a u30
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    rcases c203 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u28
    · exact absurd a u32
    · exact absurd a n1
    · exact absurd u31 a
    · exact absurd a n12
    · exact absurd a u30
  have c1723 : v24 ∨ v1 ∨ v8 ∨ v15 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v16 := by
      rcases c1722 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c123 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u1
  exact ⟨c1675, c1678, c1684, c1685, c1686, c1688, c1689, c1690, c1692, c1693, c1695, c1697, c1700, c1703, c1704, c1705, c1707, c1708, c1709, c1714, c1715, c1716, c1723⟩
