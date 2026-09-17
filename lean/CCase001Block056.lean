import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2800-2849 of the 2915-step refutation of ccase001: 130 core clauses and 93 earlier-derived ones give 7 more. -/
theorem CCase001_block056
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
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
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c91 : ¬v17 ∨ ¬v18)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
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
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c156 : ¬v42 ∨ ¬v37)
    (c160 : ¬v42 ∨ ¬v38)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c173 : ¬v49 ∨ ¬v43)
    (c178 : ¬v49 ∨ ¬v44)
    (c182 : ¬v49 ∨ ¬v45)
    (c185 : ¬v49 ∨ ¬v46)
    (c187 : ¬v49 ∨ ¬v47)
    (c188 : ¬v49 ∨ ¬v48)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c262 : v22 ∨ ¬v21 ∨ v15 ∨ v27 ∨ v28 ∨ v14 ∨ v8 ∨ v20)
    (c301 : ¬v26 ∨ v33 ∨ v18 ∨ v25 ∨ v19 ∨ v20 ∨ v34 ∨ v27)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c404 : ¬v18 ∨ v25 ∨ v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19)
    (c408 : v15 ∨ v21 ∨ v16 ∨ v1 ∨ v7 ∨ v14 ∨ v9 ∨ ¬v8)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c420 : ¬v49 ∨ v43 ∨ v41 ∨ v48 ∨ v7 ∨ v6 ∨ v1 ∨ v42)
    (c424 : ¬v49 ∨ v36 ∨ v6 ∨ v48 ∨ v42 ∨ v7 ∨ v43 ∨ v1)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c505 : v12 ∨ v9 ∨ v31 ∨ v16 ∨ v18 ∨ v32 ∨ v3 ∨ v25 ∨ v4 ∨ v2 ∨ v10 ∨ ¬v11 ∨ v33 ∨ v19)
    (c511 : v36 ∨ v35 ∨ v37 ∨ v1 ∨ v41 ∨ v34 ∨ v28 ∨ v27 ∨ v30 ∨ ¬v29 ∨ v7 ∨ v22 ∨ v2 ∨ v43)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c538 : v10 ∨ v13 ∨ v5 ∨ v9 ∨ v2 ∨ v46 ∨ v18 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v47 ∨ v48)
    (c548 : ¬v21 ∨ v28 ∨ v19 ∨ v8 ∨ v25 ∨ v11 ∨ v18 ∨ v15 ∨ v6 ∨ v20 ∨ v1 ∨ v27 ∨ v7 ∨ v14)
    (c568 : v4 ∨ v9 ∨ v2 ∨ ¬v3 ∨ v44 ∨ v11 ∨ v45 ∨ v10)
    (c608 : ¬v26 ∨ v33 ∨ v18 ∨ v46 ∨ v25 ∨ v19 ∨ v34 ∨ v27 ∨ v40 ∨ v31 ∨ v17 ∨ v24 ∨ v47 ∨ v48)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c697 : ¬v28 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c778 : v12 ∨ ¬v2 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1575 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c1647 : v18 ∨ ¬v1 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17)
    (c1675 : v11 ∨ ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1685 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ v22 ∨ v38 ∨ v45)
    (c1688 : ¬v2 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1692 : ¬v5 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1837 : ¬v34 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v27 ∨ v28)
    (c1945 : v12 ∨ ¬v2 ∨ v6 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2132 : v20 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ ¬v34 ∨ v45 ∨ v47 ∨ v48)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2311 : ¬v5 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v13 ∨ v47 ∨ v48)
    (c2326 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v29 ∨ v32 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2349 : ¬v24 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2353 : v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2412 : ¬v22 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ ¬v21)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2479 : v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2488 : ¬v27 ∨ v1 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v21)
    (c2517 : ¬v19 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14)
    (c2543 : v34 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ v21 ∨ v35 ∨ v41 ∨ v48)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2598 : ¬v25 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2601 : ¬v30 ∨ ¬v39 ∨ v45 ∨ v46)
    (c2644 : ¬v8 ∨ ¬v2 ∨ v4 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19)
    (c2700 : v30 ∨ v2 ∨ v9 ∨ ¬v18 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2707 : ¬v34 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2731 : v31 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2862 : ¬v30 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v36 ∨ v37 ∨ v38 ∨ v45)
    (c2863 : ¬v31 ∨ v24 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c2874 : ¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45)
    (c2909 : ¬v41 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v45)
    (c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2951 : ¬v17 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14)
    (c2977 : ¬v32 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2978 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45)
    (c3063 : v18 ∨ v4 ∨ v11 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46)
    (c3068 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3139 : ¬v2 ∨ ¬v4 ∨ v11 ∨ v12 ∨ v45 ∨ v46 ∨ v47)
    (c3140 : v49)
    (c3143 : ¬v5 ∨ ¬v4 ∨ v7 ∨ v13 ∨ v20 ∨ v27 ∨ v34)
    (c3159 : ¬v41 ∨ v33 ∨ v34 ∨ v35)
    (c3163 : ¬v6 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v14)
    (c3180 : v7 ∨ v1 ∨ ¬v39)
    (c3186 : v42 ∨ v1 ∨ v4 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v22)
    (c3197 : v11 ∨ v2 ∨ v4 ∨ v9 ∨ v16 ∨ v18)
    (c3201 : ¬v30 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v22)
    (c3221 : v29 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v22)
    (c3234 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37)
    (c3341 : v2 ∨ v9 ∨ v10 ∨ ¬v27 ∨ v30)
    (c3349 : ¬v34 ∨ ¬v36)
    (c3360 : v32 ∨ v5 ∨ v12 ∨ v19 ∨ v33 ∨ v34)
    (c3367 : v9 ∨ ¬v1 ∨ v8 ∨ v11 ∨ v13 ∨ v14 ∨ v16 ∨ v17 ∨ v18)
    (c3372 : v18 ∨ v4 ∨ v11 ∨ ¬v41)
    (c3379 : v35 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v34 ∨ ¬v41)
    (c3397 : ¬v3 ∨ ¬v1 ∨ v4 ∨ v9 ∨ v10)
    (c3398 : v14 ∨ v8 ∨ v21)
    (c3407 : ¬v34 ∨ v3 ∨ v10 ∨ v17)
    (c3412 : ¬v33 ∨ v4 ∨ v6 ∨ v7 ∨ v11 ∨ v13)
    (c3420 : ¬v1 ∨ v8 ∨ v21)
    (c3434 : ¬v27 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v9 ∨ v10)
    (c3441 : v5 ∨ v8 ∨ v21)
    (c3443 : ¬v9 ∨ v1 ∨ v2 ∨ ¬v5 ∨ v8 ∨ v11 ∨ ¬v14)
    (c3446 : v13 ∨ v3 ∨ v8 ∨ v11 ∨ v21)
    : (¬v3 ∨ v2 ∨ ¬v5 ∨ v9 ∨ v10) ∧ (v39 ∨ v4 ∨ v11 ∨ v18 ∨ v25) ∧ (¬v2 ∨ ¬v3 ∨ v11 ∨ v18 ∨ v25) ∧ (v8) ∧ (v12 ∨ ¬v3 ∨ v9 ∨ ¬v10 ∨ v19) ∧ (v10 ∨ v2 ∨ v9 ∨ v11 ∨ ¬v26 ∨ v30) ∧ (v30 ∨ ¬v3 ∨ v9 ∨ v12 ∨ v19) := by
  have c3447 : ¬v29 ∨ v1 ∨ v2 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v36 ∨ v37 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    rcases c511 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u2
  have c3448 : ¬v29 ∨ v1 ∨ v2 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v30 ∨ v36 ∨ v37 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    rcases c3447 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c3449 : v6 ∨ v1 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c3434 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
    have u8 : ¬v41 := by
      rcases c2909 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u4
    have u9 : v42 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    have u10 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u4
    have u14 : ¬v30 := by
      rcases c2862 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u4
    have u15 : ¬v15 := by
      rcases c1685 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u4
    have u16 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u15
      · exact a
      · exact absurd a u13
      · exact absurd a n5
    have u17 : v16 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u15
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u19
      · exact a
    rcases c3448 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u8
  have c3450 : v4 ∨ v3 ∨ v8 ∨ v11 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u9 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u10 : v5 := by
      rcases c3441 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u11 : v13 := by
      rcases c3446 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u9 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u11 a
    have u14 : ¬v2 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : ¬v9 := by
      rcases c3443 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u9 a
    have u16 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : v18 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u18
      · exact a
    have u20 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v25 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : v24 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u23
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u21
    have u26 : v31 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u24
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u26 a
      · exact a
    rcases c2297 with a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u27
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3451 : v3 ∨ v8 ∨ v11 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u6 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u7 : v5 := by
      rcases c3441 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u8 : v4 := by
      rcases c3450 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u10 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u11 : v13 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
    have u12 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u11 a
    have u13 : ¬v2 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v9 := by
      rcases c3443 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u6 a
    have u15 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u6 a
      · exact absurd u11 a
      · exact a
    rcases c3449 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a u12
  have c3452 : v11 ∨ v8 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v5 := by
      rcases c3441 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v3 := by
      rcases c3451 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u10 : v12 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd u7 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u9 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v2 := by
      rcases c17 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u10 a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u10 a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd u9 a
    · exact absurd a u2
    · exact absurd a u3
  have c3453 : ¬v3 ∨ v2 ∨ ¬v5 ∨ v9 ∨ v10 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u3
  have c3454 : ¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a n2
    · exact absurd a u2
  have c3455 : v4 ∨ v8 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v11 := by
      rcases c3452 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : v5 := by
      rcases c3441 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u9 a
    have u13 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u9 a
    have u14 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u9 a
    have u15 : v6 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd u10 a
    have u16 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v2 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u10 a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v3 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u12
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a u13
    have u20 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u10 a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v20 := by
      rcases c3454 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a u13
    have u23 : v15 := by
      rcases c530 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u8
    have u24 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u28 : ¬v25 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u29 : v31 := by
      rcases c505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u28
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a u27
      · exact absurd a u26
    have u30 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u32 : ¬v24 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u30
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u33 : v29 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u32
      · exact absurd a u28
      · exact a
      · exact absurd a u20
      · exact absurd a u31
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c2978 with a|a|a|a|a|a|a
    · exact absurd u33 a
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u25
    · exact absurd a u32
    · exact absurd a u3
    · exact absurd a u4
  have c3456 : v21 ∨ v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u2 : v11 := by
      rcases c3452 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u3 : v4 := by
      rcases c3455 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u4 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u5 : v5 := by
      rcases c3441 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u6 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u7 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u5 a
      · exact absurd u3 a
      · exact a
    have u8 : v13 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
    rcases c72 with a|a|a
    · exact absurd u4 a
    · exact absurd u8 a
    · exact absurd u2 a
  have c3457 : v2 ∨ v3 ∨ v8 ∨ v10 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n2
    have u7 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u11
    have u14 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a u15
    have u18 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
    have u19 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u14
    have u20 : ¬v9 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u7
    have u21 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : v31 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u21
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : v24 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c108 with a|a
    · exact absurd u26 a
    · exact absurd u25 a
  have c3458 : v9 ∨ v3 ∨ v8 ∨ v10 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n2
    have u8 : v2 := by
      rcases c3457 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
    have u15 : ¬v6 := by
      rcases c2874 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u12
    have u17 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u8 a
    have u21 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u14 a
      · exact absurd u8 a
      · exact a
    have u22 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u11
      · exact a
      · exact absurd a u16
      · exact absurd a u18
    have u23 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
    have u24 : v11 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n3
      · exact a
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : v12 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u21
      · exact a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u16
    have u26 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u6
      · exact a
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u16
    rcases c70 with a|a|a
    · exact absurd u25 a
    · exact absurd u26 a
    · exact absurd u24 a
  have c3459 : ¬v11 ∨ ¬v2 ∨ v3 ∨ ¬v9 ∨ v10 ∨ ¬v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u9 : v4 := by
      rcases c1020 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u8
    have u10 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n5 a
    have u12 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n5 a
      · exact a
    have u13 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n5 a
    have u14 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n5 a
    have u15 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n5 a
    have u16 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
    have u17 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd a u18
    have u21 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u16
    have u22 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : v6 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    rcases c32 with a|a|a
    · exact absurd u23 a
    · exact absurd u22 a
    · exact absurd u9 a
  have c3460 : v10 ∨ v3 ∨ v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n2
    have u9 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u13
    have u18 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u12
      · exact a
      · exact absurd a u17
      · exact absurd a u16
    have u20 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
    have u21 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u17
    have u22 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : v2 := by
      rcases c3457 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    have u24 : v9 := by
      rcases c3458 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    have u25 : ¬v11 := by
      rcases c3459 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n1
      · exact absurd u24 a
      · exact absurd a n0
      · exact absurd u8 a
    have u26 : v4 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u28 : v12 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd u26 a
      · exact absurd a u25
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u29 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u25
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd u26 a
    have u30 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u23 a
    have u31 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u29 a
      · exact absurd u26 a
      · exact a
    have u32 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u28 a
    have u33 : v42 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u31
      · exact absurd a u27
      · exact absurd a u30
      · exact a
    have u34 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u33 a
      · exact a
    have u35 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u33 a
      · exact a
    have u36 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u15
    have u37 : v28 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u36
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u27
      · exact absurd a u12
      · exact absurd a u30
      · exact absurd a u19
      · exact absurd a u31
      · exact absurd a u32
    have u38 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u37 a
      · exact a
    have u39 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u34
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u38
      · exact a
    rcases c2863 with a|a|a|a|a|a
    · exact absurd u39 a
    · exact absurd a u38
    · exact absurd a u18
    · exact absurd a u35
    · exact absurd a u34
    · exact absurd a u22
  have c3461 : ¬v9 ∨ ¬v2 ∨ v8 ∨ ¬v10 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u10 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n2
    have u11 : ¬v4 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v5 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : ¬v6 := by
      rcases c3163 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u14 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u10 a
    have u18 : ¬v41 := by
      rcases c3372 with a|a|a|a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u6
      · exact a
    have u19 : ¬v34 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u15
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd u10 a
    have u21 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u8
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
    have u22 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u20
      · exact a
    rcases c122 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c3462 : ¬v2 ∨ v3 ∨ v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v10 := by
      rcases c3460 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v9 := by
      rcases c3461 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd u8 a
    have u16 : v1 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u15
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    have u17 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u16 a
      · exact absurd n0 a
      · exact a
    have u18 : v11 := by
      rcases c1647 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd u8 a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
    have u19 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd u9 a
    have u23 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact a
    have u24 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v33 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u24
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u27 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u12
      · exact a
      · exact absurd a u27
    rcases c3379 with a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u27
    · exact absurd u29 a
  have c3463 : v9 ∨ v3 ∨ v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v10 := by
      rcases c3460 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v2 := by
      rcases c3462 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u17 : v11 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u8 a
    have u18 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd u9 a
    have u22 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u21
      · exact a
    have u23 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : v1 := by
      rcases c3201 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u21
    have u28 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    rcases c1122 with a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd u27 a
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3464 : v33 ∨ v8 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u9 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u10 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u11 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u10 a
    have u18 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u19 : ¬v7 := by
      rcases c2311 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
    have u20 : ¬v1 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact a
    have u22 : v4 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : v34 := by
      rcases c3143 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd u22 a
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u17
      · exact a
    have u24 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v36 := by
      rcases c3349 with a|a
      · exact absurd u23 a
      · exact a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u24
    · exact absurd a n6
    · exact absurd a n1
  have c3465 : v3 ∨ v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u7 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v9 := by
      rcases c3463 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u10 : v10 := by
      rcases c3460 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u11 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd u6 a
    have u16 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact a
    have u17 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v33 := by
      rcases c3464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
    have u20 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u23
    have u25 : v5 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd u24 a
    have u26 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u24 a
    have u27 : ¬v41 := by
      rcases c3379 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u20
      · exact a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u7
    · exact absurd a u27
    · exact absurd a u20
  have c3466 : ¬v9 ∨ v8 ∨ ¬v10 ∨ v11 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n1
    have u7 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u8 : ¬v5 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u6 a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u14 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u15 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd u7 a
    have u16 : ¬v34 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
    have u17 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact a
    have u18 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u24
    have u26 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u25 a
      · exact absurd u6 a
      · exact a
    have u27 : ¬v41 := by
      rcases c3379 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u27
    · exact absurd a u16
  have c3467 : v26 ∨ v5 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
    have u15 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u5
    have u17 : ¬v2 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : v25 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u14
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n5
      · exact a
    rcases c109 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c3468 : v12 ∨ v8 ∨ ¬v10 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n1
    have u9 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v5 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u8 a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v9 := by
      rcases c3466 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
    have u18 : v26 := by
      rcases c3467 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u13
    have u19 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v34 := by
      rcases c1837 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
    have u25 : v33 := by
      rcases c301 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u24
      · exact absurd a u22
    have u26 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u29 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u20
    have u30 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u31 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u30
    rcases c16 with a|a|a
    · exact absurd u31 a
    · exact absurd u8 a
    · exact absurd u29 a
  have c3469 : ¬v10 ∨ v8 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u6 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n1
    have u7 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : v12 := by
      rcases c3468 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    have u14 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n0 a
    have u15 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n0 a
    have u16 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd u5 a
    have u17 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact a
    have u18 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n0 a
    have u20 : ¬v1 := by
      rcases c3367 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
    have u21 : ¬v30 := by
      rcases c3201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u16
    have u22 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u18
    have u24 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u23 a
    have u25 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u23 a
    have u26 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u6 a
    rcases c1226 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a n2
    · exact absurd u13 a
    · exact absurd a u9
  have c3470 : ¬v25 ∨ v8 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u3 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u2 a
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u4
  have c3471 : v39 ∨ v4 ∨ v11 ∨ v18 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v40 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v33 := by
      rcases c1245 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u9 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u8 a
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
  have c3472 : ¬v2 ∨ ¬v3 ∨ v11 ∨ v18 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : v39 := by
      rcases c3471 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c3180 with a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd u4 a
  have c3473 : v25 ∨ v8 ∨ v9 ∨ v11 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c3469 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u9 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u10 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n1
    have u11 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v5 := by
      rcases c1692 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v2 := by
      rcases c3472 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n0
    have u20 : v4 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u19
    have u21 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u13
      · exact a
    have u23 : ¬v27 := by
      rcases c3341 with a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd a n4
    have u24 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u20 a
    have u25 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u20 a
      · exact absurd u10 a
      · exact a
    have u26 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u10 a
      · exact absurd u20 a
      · exact a
    have u27 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u22 a
    have u28 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u22 a
      · exact a
    have u29 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u22 a
    have u30 : v14 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u29
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u26
      · exact a
    have u31 : v29 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u28
      · exact absurd a n0
      · exact a
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u32 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : v12 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u32
      · exact absurd a u18
      · exact a
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u34 : v13 := by
      rcases c538 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd u33 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u7
    rcases c73 with a|a|a
    · exact absurd u33 a
    · exact absurd u30 a
    · exact absurd u34 a
  have c3474 : v30 ∨ v5 ∨ v8 ∨ v9 ∨ v11 ∨ ¬v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n2
    have u7 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n2
    have u8 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v25 := by
      rcases c3473 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u11 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : v14 := by
      rcases c3470 with a|a|a
      · exact absurd u10 a
      · exact absurd a n2
      · exact a
    have u13 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u11
    have u14 : ¬v13 := by
      rcases c73 with a|a|a
      · exact absurd n5 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u13 a
    have u16 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u13 a
    rcases c1226 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a u15
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a u9
  have c3475 : v9 ∨ v8 ∨ v11 ∨ ¬v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v10 := by
      rcases c3469 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u9 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v5 := by
      rcases c1692 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
    have u15 : v30 := by
      rcases c3474 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
    have u16 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : v4 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u5
    have u23 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u12
      · exact a
      · exact absurd a u20
      · exact absurd a u19
    have u25 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
    have u26 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u22 a
    have u27 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u22 a
      · exact absurd u9 a
      · exact a
    have u28 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u9 a
      · exact absurd u22 a
      · exact a
    have u29 : v42 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u26
      · exact a
    have u30 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u6
      · exact a
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u20
    have u31 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u31
      · exact absurd a u23
    have u33 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u20
    have u34 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u33
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u18
    have u35 : v14 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u32
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u34
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd a u12
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u28
      · exact a
    rcases c73 with a|a|a
    · exact absurd n3 a
    · exact absurd u35 a
    · exact absurd u30 a
  have c3476 : ¬v12 ∨ v8 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u6 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n1
    have u7 : ¬v10 := by
      rcases c3469 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : v9 := by
      rcases c3475 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
    have u13 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n0 a
    have u14 : ¬v25 := by
      rcases c3470 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
    have u15 : ¬v2 := by
      rcases c3472 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u14
    have u16 : v1 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u12 a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u15
      · exact a
    have u17 : v4 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u7
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u15
    rcases c6 with a|a|a
    · exact absurd u16 a
    · exact absurd u6 a
    · exact absurd u17 a
  have c3477 : v25 ∨ v8 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v12 := by
      rcases c3476 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u10 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n1
    have u11 : ¬v10 := by
      rcases c3469 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v5 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u10 a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v2 := by
      rcases c3472 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n0
    have u19 : v4 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u18
    have u20 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u19 a
    have u21 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u19 a
      · exact absurd u10 a
      · exact a
    have u22 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u10 a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a u22
      · exact absurd a u20
      · exact a
    have u24 : ¬v9 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u20
    have u25 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
    have u27 : v33 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u15
      · exact a
      · exact absurd a u26
    have u28 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u32 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a u3
      · exact absurd a u14
      · exact a
    have u33 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u31
    have u34 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u32 a
    have u35 : v42 := by
      rcases c424 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u33
      · exact absurd a u21
      · exact absurd a u7
      · exact a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u20
    have u36 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u35 a
    have u37 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u35 a
      · exact a
    rcases c1575 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u34
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd a u23
    · exact absurd a u37
    · exact absurd a u36
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3478 : v11 ∨ v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u9 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v25 := by
      rcases c3477 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u16 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v10 := by
      rcases c3469 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u20 : ¬v12 := by
      rcases c3476 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u21 : ¬v5 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u9 a
      · exact a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u22 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u27 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u28 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u5
    have u29 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u28 a
    have u30 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd u28 a
      · exact absurd u9 a
      · exact a
    have u31 : ¬v9 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u30
      · exact absurd a u29
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u23
    · exact absurd a u26
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u17
  have c3480 : v9 ∨ v2 ∨ ¬v3 ∨ v10 ∨ v12 ∨ v16 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
    have u10 : ¬v5 := by
      rcases c3453 with a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
    have u11 : v4 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : v33 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u9
    have u14 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u11 a
    have u15 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u11 a
      · exact absurd n2 a
      · exact a
    have u16 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n2 a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a n5
      · exact a
    have u22 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u20
    have u23 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v42 := by
      rcases c424 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u7
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u14
    have u25 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u24 a
      · exact a
    rcases c1575 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3481 : v2 ∨ v8 ∨ v10 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u6 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n1
    have u7 : v11 := by
      rcases c3478 with a|a
      · exact a
      · exact absurd a n1
    have u8 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : v9 := by
      rcases c3480 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
    have u14 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u13 a
      · exact absurd u7 a
      · exact a
    have u15 : v1 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n0
      · exact a
    have u16 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u15 a
      · exact absurd u6 a
      · exact a
    have u17 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd u7 a
    · exact absurd a n2
    · exact absurd a u16
  have c3482 : v12 ∨ v8 ∨ v10 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n1
    have u3 : v11 := by
      rcases c3478 with a|a
      · exact a
      · exact absurd a n1
    have u4 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v2 := by
      rcases c3481 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    have u8 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u7 a
    have u9 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u2 a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd u3 a
    · exact absurd a n2
    · exact absurd a u8
  have c3483 : ¬v2 ∨ v8 ∨ v10 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v12 := by
      rcases c3482 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u5 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n1
    have u6 : v11 := by
      rcases c3478 with a|a
      · exact a
      · exact absurd a n1
    have u7 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u11 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u12 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u13 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd u4 a
    have u16 : ¬v27 := by
      rcases c2488 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd u4 a
    have u17 : v42 := by
      rcases c3186 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u15
    have u18 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v34 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u18
      · exact a
    have u20 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u19 a
      · exact a
    rcases c3221 with a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd n0 a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u15
  have c3484 : v10 ∨ v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u8 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a n1
    have u9 : v11 := by
      rcases c3478 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v2 := by
      rcases c3483 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u13 : v12 := by
      rcases c3482 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u14 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u13 a
    have u15 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
    have u16 : v4 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u16 a
    have u18 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u16 a
      · exact absurd u8 a
      · exact a
    have u19 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u8 a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v27 := by
      rcases c3434 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n0
    have u21 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u9 a
    have u22 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u11
      · exact a
      · exact absurd a u15
    have u23 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u22 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u23
    · exact absurd a u18
    · exact absurd a u6
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u17
  have c3485 : ¬v30 ∨ v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : v10 := by
      rcases c3484 with a|a
      · exact a
      · exact absurd a n1
    have u9 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a n1
    have u10 : v11 := by
      rcases c3478 with a|a
      · exact a
      · exact absurd a n1
    have u11 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u10 a
    have u12 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u10 a
    have u18 : v5 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd u9 a
    have u20 : ¬v1 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3201 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u19
  have c3486 : v8 := by
    by_contra hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c3485 with a|a
      · exact a
      · exact absurd a hc
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v21 := by
      rcases c3456 with a|a
      · exact a
      · exact absurd a hc
    have u11 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v3 := by
      rcases c3465 with a|a
      · exact a
      · exact absurd a hc
    have u15 : v11 := by
      rcases c3478 with a|a
      · exact a
      · exact absurd a hc
    have u16 : v10 := by
      rcases c3484 with a|a
      · exact a
      · exact absurd a hc
    have u17 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u15 a
    have u21 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a hc
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd u10 a
    have u22 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a hc
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u21
      · exact a
    have u23 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u24
    have u26 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u25 a
    have u27 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u22 a
    have u28 : v33 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u25 a
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u23
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u29 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u27
      · exact absurd a u12
      · exact a
      · exact absurd a u29
    rcases c3379 with a|a|a|a|a|a|a
    · exact absurd a u30
    · exact absurd a u26
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u29
    · exact absurd u31 a
  have c3487 : ¬v2 ∨ ¬v3 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v8 := c3486
    have u6 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u7 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u8 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u10 : ¬v5 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v33 := by
      rcases c3412 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
    have u12 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n6
    have u13 : v26 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v18 := by
      rcases c3472 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a u14
    have u16 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u15 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd u5 a
  have c3488 : v33 ∨ v2 ∨ v4 ∨ v5 ∨ v9 ∨ v11 ∨ v12 ∨ v19 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u9 : v26 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
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
    have u14 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u3
      · exact a
      · exact absurd a u11
    have u16 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v39 := by
      rcases c3471 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u13
    have u19 : v32 := by
      rcases c2941 with a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u19 a
    rcases c608 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a n7
    · exact absurd a u20
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u7
  have c3489 : v30 ∨ v2 ∨ v4 ∨ v5 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v33 := by
      rcases c3488 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v18 := by
      rcases c2700 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : v16 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u12
    have u14 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u13 a
      · exact a
    rcases c1071 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n9
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u5
  have c3490 : v11 ∨ ¬v3 ∨ v12 ∨ v19 ∨ ¬v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v5 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3360 with a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u6
  have c3491 : v12 ∨ ¬v3 ∨ v9 ∨ ¬v10 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v8 := c3486
    have u9 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u8 a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v30 := by
      rcases c3490 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact a
    have u13 : ¬v5 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v2 := by
      rcases c3487 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v4 := by
      rcases c3489 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u14
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u16 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u15 a
    have u17 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact a
    have u18 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u19 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd u8 a
      · exact absurd a n2
      · exact a
    have u20 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v34 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
    have u24 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : v33 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a u23
    have u26 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v41 := by
      rcases c3379 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u23
      · exact a
    rcases c2543 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u7
  have c3492 : v10 ∨ v2 ∨ v9 ∨ v11 ∨ ¬v26 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u3
      · exact a
      · exact absurd a u6
    have u11 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
    rcases c817 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3493 : v2 ∨ ¬v3 ∨ v9 ∨ v11 ∨ v12 ∨ v19 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c3491 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
    have u9 : v4 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v5 := by
      rcases c1692 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v26 := by
      rcases c3492 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
    have u13 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    have u14 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    have u15 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
    have u16 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact a
    have u18 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u10
    have u21 : v42 := by
      rcases c424 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u7
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u13
    have u22 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u21 a
      · exact a
    rcases c1575 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3494 : ¬v33 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v11 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v8 := c3486
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : v13 := by
      rcases c3412 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u12 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u14 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd u8 a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v10 := by
      rcases c46 with a|a|a
      · exact absurd u8 a
      · exact absurd u11 a
      · exact a
    have u19 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : v3 := by
      rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v2 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u16
      · exact a
      · exact absurd u20 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u18
    have u22 : ¬v1 := by
      rcases c3397 with a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u18
    have u23 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd u8 a
      · exact absurd a u16
      · exact absurd a u17
    have u24 : ¬v17 := by
      rcases c2951 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd u8 a
      · exact absurd a u16
      · exact absurd a u17
    have u25 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u26 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
    have u27 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u14
    have u28 : v42 := by
      rcases c424 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u27
      · exact absurd a n3
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u22
    have u29 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u32 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u31 a
    have u33 : v18 := by
      rcases c3472 with a|a|a|a|a
      · exact absurd u21 a
      · exact absurd u20 a
      · exact absurd a n5
      · exact a
      · exact absurd a u32
    rcases c404 with a|a|a|a|a|a|a|a
    · exact absurd u33 a
    · exact absurd a u32
    · exact absurd a u26
    · exact absurd a u18
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u24
    · exact absurd a u23
  have c3495 : v11 ∨ ¬v3 ∨ v9 ∨ v12 ∨ v19 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c3491 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
    have u7 : ¬v5 := by
      rcases c1692 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
    have u8 : v2 := by
      rcases c3493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u10 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u11 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v33 := by
      rcases c3494 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n3
    have u13 : v26 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
    have u18 : v18 := by
      rcases c3472 with a|a|a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a u16
    rcases c404 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a n4
  have c3496 : v4 ∨ ¬v3 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v8 := c3486
    have u6 : ¬v1 := by
      rcases c3397 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n4 a
    have u8 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u3
    have u9 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v17 := by
      rcases c2951 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u7
    have u11 : v18 := by
      rcases c2644 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a u10
      · exact a
      · exact absurd a n5
    have u12 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u11 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd u5 a
  have c3497 : v30 ∨ ¬v3 ∨ v9 ∨ v12 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v8 := c3486
    have u7 : ¬v10 := by
      rcases c3491 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
    have u8 : v11 := by
      rcases c3495 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u9 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u6 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u8 a
    have u11 : v4 := by
      rcases c3496 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a n4
    have u12 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
    have u14 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u15 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u17 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u6 a
      · exact absurd a n2
      · exact a
    have u18 : ¬v27 := by
      rcases c3434 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u7
    have u19 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
    have u23 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u20
      · exact a
      · exact absurd a u22
    have u24 : v33 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u22
    have u25 : v35 := by
      rcases c3379 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd u23 a
    rcases c143 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  exact ⟨c3453, c3471, c3472, c3486, c3491, c3492, c3497⟩
