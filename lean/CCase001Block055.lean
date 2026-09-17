import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2750-2799 of the 2915-step refutation of ccase001: 119 core clauses and 91 earlier-derived ones give 11 more. -/
theorem CCase001_block055
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
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
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c74 : v11 ∨ v10 ∨ v12 ∨ v13 ∨ v8 ∨ v9)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
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
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c151 : ¬v36 ∨ ¬v42)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c173 : ¬v49 ∨ ¬v43)
    (c178 : ¬v49 ∨ ¬v44)
    (c182 : ¬v49 ∨ ¬v45)
    (c185 : ¬v49 ∨ ¬v46)
    (c187 : ¬v49 ∨ ¬v47)
    (c188 : ¬v49 ∨ ¬v48)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c227 : v12 ∨ ¬v19 ∨ v33 ∨ v39 ∨ v26 ∨ v24 ∨ v11 ∨ v27 ∨ v10 ∨ v18 ∨ v20 ∨ v41 ∨ v17 ∨ v40)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c255 : ¬v49 ∨ v42 ∨ v35 ∨ v48 ∨ v6 ∨ v7 ∨ v39 ∨ v4 ∨ v34 ∨ v29 ∨ v43 ∨ v46 ∨ v47 ∨ v36)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c301 : ¬v26 ∨ v33 ∨ v18 ∨ v25 ∨ v19 ∨ v20 ∨ v34 ∨ v27)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c348 : ¬v18 ∨ v13 ∨ v45 ∨ v26 ∨ v25 ∨ v46 ∨ v27 ∨ v11 ∨ v4 ∨ v10 ∨ v19 ∨ v17 ∨ v47 ∨ v20)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c404 : ¬v18 ∨ v25 ∨ v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c420 : ¬v49 ∨ v43 ∨ v41 ∨ v48 ∨ v7 ∨ v6 ∨ v1 ∨ v42)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c577 : v26 ∨ ¬v19 ∨ v18 ∨ v11 ∨ v27 ∨ v25 ∨ v20 ∨ v12)
    (c608 : ¬v26 ∨ v33 ∨ v18 ∨ v46 ∨ v25 ∨ v19 ∨ v34 ∨ v27 ∨ v40 ∨ v31 ∨ v17 ∨ v24 ∨ v47 ∨ v48)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c753 : v11 ∨ v10 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c778 : v12 ∨ ¬v2 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c983 : v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v38 ∨ v45)
    (c1054 : v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1140 : v19 ∨ v18 ∨ v20 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1575 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16)
    (c1675 : v11 ∨ ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1688 : ¬v2 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1689 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1945 : v12 ∨ ¬v2 ∨ v6 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2083 : ¬v19 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2295 : v13 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v14 ∨ ¬v16)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2311 : ¬v5 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v13 ∨ v47 ∨ v48)
    (c2326 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v29 ∨ v32 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2349 : ¬v24 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2353 : v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2479 : v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2543 : v34 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ v21 ∨ v35 ∨ v41 ∨ v48)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2598 : ¬v25 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2601 : ¬v30 ∨ ¬v39 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2630 : ¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34)
    (c2661 : ¬v34 ∨ ¬v1 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v16 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2700 : v30 ∨ v2 ∨ v9 ∨ ¬v18 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2707 : ¬v34 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2731 : v31 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2822 : ¬v12 ∨ v1 ∨ v2 ∨ ¬v3 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v44 ∨ v45 ∨ v46)
    (c2909 : ¬v41 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v45)
    (c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2952 : v16 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v17 ∨ v18 ∨ v45 ∨ v46 ∨ v47)
    (c2977 : ¬v32 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3024 : ¬v34 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47)
    (c3063 : v18 ∨ v4 ∨ v11 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46)
    (c3068 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3073 : ¬v19 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c3120 : v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v33 ∨ v40 ∨ v47)
    (c3139 : ¬v2 ∨ ¬v4 ∨ v11 ∨ v12 ∨ v45 ∨ v46 ∨ v47)
    (c3140 : v49)
    (c3159 : ¬v41 ∨ v33 ∨ v34 ∨ v35)
    (c3180 : v7 ∨ v1 ∨ ¬v39)
    (c3197 : v11 ∨ v2 ∨ v4 ∨ v9 ∨ v16 ∨ v18)
    (c3198 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v11)
    (c3231 : ¬v36 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v32 ∨ v35 ∨ v39)
    (c3234 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37)
    (c3235 : ¬v33 ∨ v1 ∨ v8 ∨ v15 ∨ v21)
    (c3282 : v1 ∨ v8 ∨ v14 ∨ v21)
    (c3310 : v4 ∨ v11 ∨ ¬v26 ∨ v31 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c3315 : v12 ∨ ¬v1 ∨ v4 ∨ ¬v5 ∨ v11)
    (c3319 : v11 ∨ ¬v1 ∨ ¬v4 ∨ v12)
    (c3326 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v14)
    (c3341 : v2 ∨ v9 ∨ v10 ∨ ¬v27 ∨ v30)
    (c3349 : ¬v34 ∨ ¬v36)
    (c3358 : ¬v6 ∨ ¬v1 ∨ v8 ∨ ¬v11 ∨ v14)
    (c3360 : v32 ∨ v5 ∨ v12 ∨ v19 ∨ v33 ∨ v34)
    (c3372 : v18 ∨ v4 ∨ v11 ∨ ¬v41)
    (c3387 : v30 ∨ v8 ∨ v14 ∨ v21)
    (c3392 : v12 ∨ v8 ∨ v14 ∨ v21)
    (c3393 : ¬v13 ∨ ¬v1 ∨ v8 ∨ ¬v12 ∨ v14 ∨ ¬v30)
    (c3394 : v4 ∨ v6 ∨ v11 ∨ v13 ∨ ¬v30)
    (c3395 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v11 ∨ ¬v12 ∨ v14)
    : (¬v3 ∨ ¬v1 ∨ v4 ∨ v9 ∨ v10) ∧ (v14 ∨ v8 ∨ v21) ∧ (¬v19 ∨ v3 ∨ v4 ∨ v5 ∨ v10 ∨ ¬v11 ∨ v12) ∧ (¬v33 ∨ v3 ∨ v4 ∨ v5 ∨ v10 ∨ v11) ∧ (¬v34 ∨ v3 ∨ v10 ∨ v17) ∧ (¬v33 ∨ v4 ∨ v6 ∨ v7 ∨ v11 ∨ v13) ∧ (¬v1 ∨ v8 ∨ v21) ∧ (¬v27 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v9 ∨ v10) ∧ (v5 ∨ v8 ∨ v21) ∧ (¬v9 ∨ v1 ∨ v2 ∨ ¬v5 ∨ v8 ∨ v11 ∨ ¬v14) ∧ (v13 ∨ v3 ∨ v8 ∨ v11 ∨ v21) := by
  have c3396 : v11 ∨ v8 ∨ v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u5 : v30 := by
      rcases c3387 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v12 := by
      rcases c3392 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v13 := by
      rcases c3393 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd u5 a
    have u13 : ¬v4 := by
      rcases c3395 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a n2
    have u14 : v6 := by
      rcases c3394 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd u5 a
    have u15 : v18 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a u4
    have u16 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v10 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u17
      · exact a
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : v9 := by
      rcases c3198 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u13
      · exact a
      · exact absurd a n0
    rcases c55 with a|a|a
    · exact absurd u21 a
    · exact absurd u7 a
    · exact absurd u20 a
  have c3397 : ¬v3 ∨ ¬v1 ∨ v4 ∨ v9 ∨ v10 := by
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
    have u5 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u3
  have c3398 : v14 ∨ v8 ∨ v21 := by
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
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v30 := by
      rcases c3387 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u7 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u16 : v12 := by
      rcases c3392 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u17 : v11 := by
      rcases c3396 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u18 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u17 a
    have u20 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u16 a
    have u21 : ¬v4 := by
      rcases c3326 with a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n0
    have u22 : ¬v3 := by
      rcases c3397 with a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
    have u23 : ¬v16 := by
      rcases c983 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd u17 a
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u3
    have u24 : v17 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u25
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u27 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u11
    rcases c3358 with a|a|a|a|a
    · exact absurd u27 a
    · exact absurd u15 a
    · exact absurd a n1
    · exact absurd u17 a
    · exact absurd a n0
  have c3399 : ¬v19 ∨ v3 ∨ v4 ∨ v5 ∨ v10 ∨ ¬v11 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    rcases c341 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a n2
    · exact absurd a u1
  have c3400 : v21 ∨ ¬v1 ∨ v3 ∨ v4 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v13 := by
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
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
    have u9 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n8 a
    have u10 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a u9
    have u12 : ¬v19 := by
      rcases c3399 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a u9
    have u13 : v18 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd n8 a
      · exact absurd a n7
      · exact absurd a n3
      · exact a
    have u14 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : v7 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n5
      · exact a
      · exact absurd a n0
    have u19 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
    rcases c3360 with a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u21
  have c3401 : ¬v1 ∨ v4 ∨ v6 ∨ v8 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v20 ∨ v21 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u8 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
    have u9 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u10 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd n5 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n5 a
    have u12 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a u5
    have u13 : ¬v3 := by
      rcases c3397 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v19 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u12
      · exact a
      · exact absurd a n11
    have u16 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n7
      · exact a
      · exact absurd a n11
    have u17 : v18 := by
      rcases c3372 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u16 a
    have u18 : v35 := by
      rcases c3159 with a|a|a|a
      · exact absurd u16 a
      · exact absurd a n10
      · exact absurd a n11
      · exact a
    have u19 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u17 a
    rcases c2396 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3402 : v6 ∨ ¬v1 ∨ v3 ∨ v4 ∨ v8 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v21 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u7 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u8 : ¬v30 := by
      rcases c3394 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact a
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : v33 := by
      rcases c3401 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a u10
    have u13 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a n10
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u5
  have c3403 : v6 ∨ ¬v1 ∨ v3 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v13 ∨ v21 := by
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
    have u8 : ¬v11 := by
      rcases c3400 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u9 : ¬v30 := by
      rcases c3394 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n7
      · exact a
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : v12 := by
      rcases c74 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v32 := by
      rcases c3402 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd u13 a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
    have u15 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a u16
    have u18 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u16
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u11
  have c3404 : v11 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v13 := by
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
    have u8 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : v18 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact a
    have u14 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v25 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u5
    have u19 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u15
    have u20 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u5
    rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3405 : v10 ∨ ¬v1 ∨ v3 ∨ v4 ∨ v8 ∨ v9 ∨ v13 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u6 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    have u7 : v6 := by
      rcases c3403 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u11 : v11 := by
      rcases c3404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u12 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u11 a
    have u13 : ¬v19 := by
      rcases c3399 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u12
    have u14 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u12
    have u15 : v18 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
    have u16 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
    have u17 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v33 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact a
      · exact absurd a u16
    rcases c2437 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3406 : ¬v33 ∨ v3 ∨ v4 ∨ v5 ∨ v10 ∨ v11 := by
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
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u4
  have c3407 : ¬v34 ∨ v3 ∨ v10 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u5 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u9 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u6
  have c3408 : v3 ∨ ¬v1 ∨ v4 ∨ v8 ∨ v10 ∨ v13 ∨ v21 := by
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
    have u8 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u9 : v9 := by
      rcases c3405 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v5 := by
      rcases c3315 with a|a|a|a|a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u10
    have u13 : ¬v33 := by
      rcases c3406 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u10
    have u14 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : v26 := by
      rcases c3120 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
    have u16 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
    have u21 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u20
    have u22 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u22
    have u25 : v6 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u7
    have u26 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u28 : v15 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd u9 a
      · exact a
    have u29 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u28 a
      · exact a
    rcases c301 with a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u13
    · exact absurd a u29
    · exact absurd a u18
    · exact absurd a u30
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u19
  have c3409 : v10 ∨ ¬v1 ∨ v4 ∨ v8 ∨ v13 ∨ v21 := by
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
    have u5 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u6 : v3 := by
      rcases c3408 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u8 : v9 := by
      rcases c3397 with a|a|a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
    have u9 : v11 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
    rcases c60 with a|a|a
    · exact absurd u5 a
    · exact absurd u8 a
    · exact absurd u9 a
  have c3410 : ¬v26 ∨ v2 ∨ v8 ∨ v9 ∨ v30 := by
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
    have u5 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v16 := by
      rcases c1621 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    rcases c2297 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3411 : ¬v3 ∨ ¬v1 ∨ v4 ∨ v8 ∨ v9 ∨ v11 ∨ v12 ∨ v13 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u8 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v5 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v30 := by
      rcases c3394 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n7
      · exact a
    have u12 : ¬v26 := by
      rcases c3410 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
    have u13 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    have u14 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v18 := by
      rcases c2700 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n4
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n4
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : v16 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u17
    have u21 : v17 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u5
    rcases c86 with a|a
    · exact absurd u20 a
    · exact absurd u21 a
  have c3412 : ¬v33 ∨ v4 ∨ v6 ∨ v7 ∨ v11 ∨ v13 := by
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
    have u8 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u14 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u14
    have u17 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u5
    have u18 : v42 := by
      rcases c255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u16
    have u19 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u17
      · exact a
      · exact absurd a u19
      · exact absurd a u10
    have u21 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v24 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u21
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u5
    rcases c1079 with a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u23
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u12
  have c3413 : v13 ∨ ¬v1 ∨ v4 ∨ v8 ∨ v21 := by
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
    have u8 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v10 := by
      rcases c3409 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u10 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u11 : ¬v12 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u12 : ¬v11 := by
      rcases c66 with a|a|a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v3 := by
      rcases c3411 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n0
    have u14 : v2 := by
      rcases c3198 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u12
    have u15 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a u12
    have u17 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v33 := by
      rcases c3412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n0
    have u19 : v26 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u16
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u20 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v16 := by
      rcases c1621 with a|a|a|a
      · exact absurd u19 a
      · exact absurd a n3
      · exact absurd a u10
      · exact a
    have u22 : ¬v34 := by
      rcases c2661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : v32 := by
      rcases c702 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u16
      · exact absurd a u20
      · exact a
      · exact absurd a u18
      · exact absurd a u22
    have u24 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u24
    have u26 : v20 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u7
    have u27 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u26 a
    rcases c2952 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd u9 a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3414 : ¬v26 ∨ ¬v1 ∨ ¬v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u8 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v5 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u14 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
    have u15 : ¬v33 := by
      rcases c3406 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
    have u17 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v18 := by
      rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u14
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : v39 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u11
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c2941 with a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3415 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v14 := by
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
    have u8 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v33 := by
      rcases c3406 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v26 := by
      rcases c3414 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v19 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v41 := by
      rcases c3372 with a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n6
      · exact a
    have u21 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u17
    have u22 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u5
    have u24 : v25 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : v24 := by
      rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u12
      · exact a
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u11
    rcases c113 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c3416 : v4 ∨ ¬v1 ∨ v8 ∨ v21 := by
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
    have u6 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v13 := by
      rcases c3413 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u9 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
    have u11 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v5 := by
      rcases c3315 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a u9
    have u13 : ¬v3 := by
      rcases c3397 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u11
    have u14 : ¬v33 := by
      rcases c3406 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
    have u15 : ¬v2 := by
      rcases c3415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u6 a
    have u16 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v19 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u10
      · exact a
      · exact absurd a u14
      · exact absurd a u16
    have u19 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u18 a
    rcases c3197 with a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u20
  have c3417 : v11 ∨ ¬v1 ∨ ¬v4 ∨ ¬v14 := by
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
    have u5 : v12 := by
      rcases c3319 with a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u5 a
      · exact absurd n3 a
      · exact a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd n2 a
  have c3418 : ¬v19 ∨ v6 ∨ v7 ∨ v8 ∨ v13 := by
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
    have u6 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
    have u11 : v1 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u10 a
      · exact absurd a u7
    have u12 : v4 := by
      rcases c3416 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a u7
    have u13 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u11 a
      · exact absurd u12 a
      · exact a
    have u15 : v11 := by
      rcases c3417 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
      · exact absurd u10 a
    have u16 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u15 a
    have u18 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
    have u19 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u20
    have u22 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u8
      · exact a
      · exact absurd a u18
      · exact absurd a u20
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u22
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a u18
  have c3419 : v33 ∨ v2 ∨ v5 ∨ v8 ∨ v9 ∨ v12 ∨ v19 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
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
    have u7 : v26 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u8 : v34 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
    have u9 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v36 := by
      rcases c3349 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v16 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u15 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u13
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n3
    have u19 : v10 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n4
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
    have u20 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u17
    have u21 : v4 := by
      rcases c3416 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n3
      · exact absurd a u17
    have u22 : v11 := by
      rcases c3319 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u21 a
      · exact absurd a n5
    rcases c66 with a|a|a
    · exact absurd u19 a
    · exact absurd u20 a
    · exact absurd u22 a
  have c3420 : ¬v1 ∨ v8 ∨ v21 := by
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
    have u6 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u7 : v4 := by
      rcases c3416 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u7 a
    have u13 : v11 := by
      rcases c3417 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact absurd u6 a
    have u14 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u13 a
    have u16 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u13 a
    have u18 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v19 := by
      rcases c3418 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u16
    have u20 : v33 := by
      rcases c3419 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
    have u21 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v17 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u8
      · exact absurd a u15
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u22
    rcases c2297 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3421 : ¬v2 ∨ v12 ∨ ¬v14 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u7 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : v11 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u8 a
    have u11 : ¬v5 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
    have u13 : v4 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd u8 a
      · exact absurd a u10
      · exact a
    rcases c16 with a|a|a
    · exact absurd u13 a
    · exact absurd u12 a
    · exact absurd n0 a
  have c3422 : ¬v33 ∨ v8 ∨ v12 ∨ v19 ∨ v21 := by
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
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u12 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u13 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : v15 := by
      rcases c3235 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a n1
      · exact a
      · exact absurd a n4
    have u17 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u22 : ¬v25 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u19
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : ¬v2 := by
      rcases c3421 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u12 a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u14
    have u24 : v9 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u23
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u24 a
      · exact absurd u12 a
      · exact a
    have u26 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u12 a
    have u27 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd u12 a
      · exact absurd u24 a
      · exact a
    have u28 : v3 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u23
      · exact a
      · exact absurd a n1
      · exact absurd u24 a
      · exact absurd a u25
    have u29 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u5
    have u30 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u29 a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u28 a
      · exact absurd u29 a
      · exact a
    rcases c1523 with a|a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd a u11
    · exact absurd a u30
    · exact absurd a n1
    · exact absurd a u26
    · exact absurd u12 a
    · exact absurd a n4
  have c3423 : v21 ∨ v2 ∨ v5 ∨ v8 ∨ v11 ∨ v12 ∨ v19 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u7 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
    have u9 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
    have u10 : ¬v33 := by
      rcases c3422 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : v26 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : v34 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact a
    have u14 : v9 := by
      rcases c3419 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u14 a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : v4 := by
      rcases c3310 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u12 a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u11
    have u20 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v3 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd u19 a
    have u22 : v7 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd u9 a
      · exact absurd a n0
    rcases c28 with a|a|a
    · exact absurd u21 a
    · exact absurd u19 a
    · exact absurd u22 a
  have c3424 : v11 ∨ v2 ∨ v5 ∨ v8 ∨ v12 ∨ v19 ∨ v21 := by
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
    have u8 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u9 : ¬v33 := by
      rcases c3422 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : v26 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v32 := by
      rcases c3423 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u17 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
    have u24 : v15 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u8
      · exact a
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a n3
    have u25 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u24 a
      · exact a
    rcases c608 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u9
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a u18
    · exact absurd a u26
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a u7
  have c3425 : v2 ∨ v5 ∨ v8 ∨ v12 ∨ v19 ∨ v21 := by
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
    have u8 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u9 : ¬v33 := by
      rcases c3422 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v26 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v11 := by
      rcases c3424 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u14 a
    have u16 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u14 a
    have u17 : v32 := by
      rcases c3419 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u18 : v16 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u18 a
      · exact a
    rcases c817 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u13
  have c3426 : ¬v11 ∨ ¬v2 ∨ v8 ∨ v21 := by
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
    have u5 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u9 : v3 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u10 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    rcases c1523 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd u6 a
    · exact absurd a n3
  have c3427 : ¬v3 ∨ v1 ∨ ¬v2 ∨ v11 ∨ v12 ∨ ¬v14 ∨ v19 ∨ v21 ∨ v24 ∨ v25 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u5 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u7 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u8 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact a
    have u9 : v18 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v10 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n9
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n6
    have u12 : ¬v8 := by
      rcases c47 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u11 a
    have u13 : ¬v13 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u11 a
    rcases c1523 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd n5 a
    · exact absurd a n7
  have c3428 : v19 ∨ v5 ∨ v8 ∨ v12 ∨ v21 := by
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
    have u10 : ¬v33 := by
      rcases c3422 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : v26 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v2 := by
      rcases c3425 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u18 : ¬v11 := by
      rcases c3426 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n2
      · exact absurd a n4
    have u19 : ¬v4 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : ¬v3 := by
      rcases c3427 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u11
    have u21 : v9 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd u17 a
      · exact absurd a n2
    have u22 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u21 a
      · exact absurd u9 a
      · exact a
    have u23 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
    have u24 : ¬v18 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a n0
    have u25 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u23
    have u26 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c301 with a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u10
    · exact absurd a u24
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u16
  have c3429 : ¬v3 ∨ ¬v2 ∨ v5 ∨ v8 ∨ v12 ∨ v21 := by
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
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u9 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u10 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u11 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u12 : v19 := by
      rcases c3428 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact a
    have u14 : v13 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd u11 a
      · exact absurd a n5
    have u15 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u11 a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u11 a
      · exact absurd u14 a
      · exact a
    have u21 : ¬v41 := by
      rcases c3372 with a|a|a|a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u19
      · exact a
    have u22 : v42 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact a
    have u23 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v25 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u19
      · exact a
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u26 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u25 a
    have u30 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u16
      · exact a
      · exact absurd a u27
      · exact absurd a n3
    have u31 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u30 a
      · exact a
    rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u12 a
    · exact absurd a u31
    · exact absurd a u13
    · exact absurd a u26
    · exact absurd a u28
    · exact absurd a u19
    · exact absurd a u29
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u23
  have c3430 : ¬v2 ∨ v5 ∨ v8 ∨ v12 ∨ v21 := by
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
    have u7 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u8 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u9 : v19 := by
      rcases c3428 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v3 := by
      rcases c3429 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : v9 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd n0 a
      · exact absurd a n2
    have u15 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u14 a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u8 a
    have u17 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd u8 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u12
    have u19 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : ¬v4 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u4
      · exact a
    have u22 : v26 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd u9 a
    have u23 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c1275 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u5
  have c3431 : v11 ∨ v2 ∨ v3 ∨ v5 ∨ v12 ∨ ¬v14 ∨ v15 ∨ v16 ∨ v17 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u5 : ¬v4 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u2
      · exact a
    have u6 : v9 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n9
    have u7 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u6 a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u6 a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd u6 a
    · exact absurd a n6
  have c3432 : v3 ∨ v5 ∨ v8 ∨ v12 ∨ v21 := by
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
    have u6 : ¬v2 := by
      rcases c3430 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u8 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u9 : v19 := by
      rcases c3428 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v11 := by
      rcases c3431 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u8 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
    have u15 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u14 a
    have u16 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v25 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : v31 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u20
      · exact a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : ¬v24 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3433 : ¬v11 ∨ v5 ∨ v8 ∨ v12 ∨ v21 := by
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
    have u5 : ¬v2 := by
      rcases c3430 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u7 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u8 : v19 := by
      rcases c3428 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
    have u12 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v7 := by
      rcases c530 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n4
      · exact a
      · exact absurd a u6
    have u15 : v3 := by
      rcases c3432 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v4 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd u15 a
      · exact absurd a u2
      · exact absurd a u3
    rcases c28 with a|a|a
    · exact absurd u15 a
    · exact absurd u16 a
    · exact absurd u14 a
  have c3434 : ¬v27 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v9 ∨ v10 := by
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
    have u8 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : v30 := by
      rcases c3341 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n0 a
      · exact a
    have u12 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
    have u13 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u11 a
    have u19 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u20 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
    have u21 : v20 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd a u16
    have u22 : v42 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n1
      · exact a
    have u23 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u21 a
    have u27 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u21 a
    have u28 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u22 a
    have u29 : v3 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a n6
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u30 : ¬v22 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u23
    have u31 : v4 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd u29 a
      · exact absurd a u3
      · exact absurd a u4
    have u32 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u28
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u30
      · exact a
    have u33 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v12 := by
      rcases c2822 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u29 a
      · exact absurd u32 a
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1575 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u33
    · exact absurd a u34
    · exact absurd a u26
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3435 : ¬v23 ∨ v11 ∨ v12 ∨ ¬v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    rcases c577 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n2
  have c3436 : v9 ∨ v2 ∨ v8 ∨ ¬v19 ∨ v21 ∨ v23 := by
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
    have u6 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u10 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact a
    have u16 : ¬v22 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n2
    rcases c3231 with a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u16
    · exact absurd a n5
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u13
  have c3437 : v12 ∨ v5 ∨ v8 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v11 := by
      rcases c3433 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u4 : ¬v2 := by
      rcases c3430 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u5 : v19 := by
      rcases c3428 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u6 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v23 := by
      rcases c3435 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u5 a
    have u10 : v9 := by
      rcases c3436 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a u9
    have u11 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u10 a
      · exact absurd u2 a
      · exact a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u10 a
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u1
  have c3439 : v3 ∨ v2 ∨ v5 ∨ v9 ∨ v10 ∨ v11 ∨ v13 := by
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
    have u7 : ¬v4 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u4
      · exact a
    have u8 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v33 := by
      rcases c3406 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
    have u14 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : v18 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u14
      · exact a
    have u17 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v25 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u13
      · exact a
      · exact absurd a u11
    rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a u20
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u6
    · exact absurd a u15
  have c3440 : v2 ∨ v5 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u5 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
    have u6 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
    have u7 : v3 := by
      rcases c3439 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v4 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a u3
    have u9 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    rcases c1523 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd u6 a
    · exact absurd a n7
  have c3441 : v5 ∨ v8 ∨ v21 := by
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
    have u5 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u6 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u7 : v12 := by
      rcases c3437 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u8 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v13 := by
      rcases c73 with a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v11 := by
      rcases c71 with a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u7 a
    have u12 : v2 := by
      rcases c3440 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
    have u13 : v3 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd u12 a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
    have u14 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u12 a
    have u15 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact a
    rcases c1523 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd u5 a
    · exact absurd a n2
  have c3442 : ¬v2 ∨ v8 ∨ v21 := by
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
    have u9 : v5 := by
      rcases c3441 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
    have u12 : v9 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a n1
    have u13 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd u10 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u10 a
      · exact absurd u12 a
      · exact a
    rcases c1688 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u9 a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3443 : ¬v9 ∨ v1 ∨ v2 ∨ ¬v5 ∨ v8 ∨ v11 ∨ ¬v14 := by
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
    have u5 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd n6 a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd n0 a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v3 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v15 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u6
    have u9 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n6 a
    have u10 : ¬v7 := by
      rcases c2311 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v16 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd n6 a
      · exact a
    have u12 : v17 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u8
    have u13 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u12 a
      · exact a
    rcases c530 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd n6 a
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a n1
  have c3444 : v7 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ v21 := by
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
    have u7 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
    have u8 : v5 := by
      rcases c3441 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
    have u9 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
    have u10 : v6 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u9 a
      · exact absurd a n5
    have u11 : ¬v4 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v2 := by
      rcases c3442 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
    have u13 : ¬v9 := by
      rcases c3443 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u9 a
    have u14 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u12
    have u16 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v18 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u16
      · exact a
    have u19 : v15 := by
      rcases c530 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u7
    rcases c82 with a|a
    · exact absurd u19 a
    · exact absurd u18 a
  have c3445 : v10 ∨ v3 ∨ v8 ∨ v11 ∨ v13 ∨ v21 := by
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
    have u8 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u9 : v5 := by
      rcases c3441 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u10 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u11 : v7 := by
      rcases c3444 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v4 := by
      rcases c33 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u11 a
    have u14 : v12 := by
      rcases c2311 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd u11 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
    have u15 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v2 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    have u17 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v41 := by
      rcases c2909 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
    have u19 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u21 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : v18 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u21
      · exact a
    have u24 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n4
      · exact a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u19
    have u25 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v35 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u19
      · exact a
      · exact absurd a u20
      · exact absurd a u5
    rcases c2396 with a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u25
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3446 : v13 ∨ v3 ∨ v8 ∨ v11 ∨ v21 := by
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
      · exact absurd a n2
      · exact absurd a n4
    have u8 : v14 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u9 : ¬v1 := by
      rcases c3420 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u10 : v10 := by
      rcases c3445 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u11 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u10 a
    have u13 : ¬v2 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    have u14 : ¬v7 := by
      rcases c2311 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
    have u15 : v4 := by
      rcases c3198 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u13
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a n3
    have u16 : v6 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a n4
    rcases c32 with a|a|a
    · exact absurd u16 a
    · exact absurd u7 a
    · exact absurd u15 a
  exact ⟨c3397, c3398, c3399, c3406, c3407, c3412, c3420, c3434, c3441, c3443, c3446⟩
