import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2850-2899 of the 2915-step refutation of ccase001: 105 core clauses and 88 earlier-derived ones give 2 more. -/
theorem CCase001_block057
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
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
    (c105 : ¬v22 ∨ ¬v26)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c124 : ¬v29 ∨ ¬v30)
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
    (c144 : ¬v34 ∨ ¬v35)
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
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c311 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v35 ∨ v28 ∨ v33 ∨ v40)
    (c348 : ¬v18 ∨ v13 ∨ v45 ∨ v26 ∨ v25 ∨ v46 ∨ v27 ∨ v11 ∨ v4 ∨ v10 ∨ v19 ∨ v17 ∨ v47 ∨ v20)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c374 : ¬v34 ∨ v6 ∨ v28 ∨ v27 ∨ v22 ∨ v36 ∨ v5 ∨ v7 ∨ v35 ∨ v41 ∨ v29 ∨ v40 ∨ v33 ∨ v48)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c386 : ¬v49 ∨ v36 ∨ v6 ∨ v42 ∨ v14 ∨ v20 ∨ v21 ∨ v15 ∨ v7 ∨ v2 ∨ v37 ∨ v43 ∨ v44 ∨ v48)
    (c404 : ¬v18 ∨ v25 ∨ v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19)
    (c414 : v18 ∨ ¬v25 ∨ v47 ∨ v32 ∨ v45 ∨ v39 ∨ v23 ∨ v16 ∨ v30 ∨ v26 ∨ v24 ∨ v33 ∨ v46 ∨ v17)
    (c420 : ¬v49 ∨ v43 ∨ v41 ∨ v48 ∨ v7 ∨ v6 ∨ v1 ∨ v42)
    (c424 : ¬v49 ∨ v36 ∨ v6 ∨ v48 ∨ v42 ∨ v7 ∨ v43 ∨ v1)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c446 : ¬v49 ∨ v42 ∨ v37 ∨ v2 ∨ v1 ∨ v7 ∨ v22 ∨ v35 ∨ v41 ∨ v27 ∨ v28 ∨ v43 ∨ v44 ∨ v48)
    (c488 : ¬v8 ∨ v14 ∨ v2 ∨ v21 ∨ v16 ∨ v1 ∨ v15 ∨ v9)
    (c505 : v12 ∨ v9 ∨ v31 ∨ v16 ∨ v18 ∨ v32 ∨ v3 ∨ v25 ∨ v4 ∨ v2 ∨ v10 ∨ ¬v11 ∨ v33 ∨ v19)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c665 : ¬v20 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c753 : v11 ∨ v10 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c778 : v12 ∨ ¬v2 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1391 : ¬v8 ∨ v1 ∨ v2 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v21)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1575 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c1678 : ¬v8 ∨ v1 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13)
    (c1688 : ¬v2 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2132 : v20 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ ¬v34 ∨ v45 ∨ v47 ∨ v48)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2285 : ¬v23 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v16 ∨ v17 ∨ v21 ∨ v24 ∨ v29 ∨ v30 ∨ v35)
    (c2311 : ¬v5 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v13 ∨ v47 ∨ v48)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2349 : ¬v24 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2479 : v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2488 : ¬v27 ∨ v1 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v21)
    (c2517 : ¬v19 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14)
    (c2543 : v34 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ v21 ∨ v35 ∨ v41 ∨ v48)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2598 : ¬v25 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2630 : ¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34)
    (c2636 : ¬v34 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c2707 : ¬v34 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2731 : v31 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2754 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v37 ∨ v38 ∨ v39 ∨ v45)
    (c2862 : ¬v30 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v36 ∨ v37 ∨ v38 ∨ v45)
    (c2863 : ¬v31 ∨ v24 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c2874 : ¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45)
    (c2879 : v16 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v20 ∨ ¬v26 ∨ v30 ∨ v32 ∨ v33)
    (c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2951 : ¬v17 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14)
    (c2952 : v16 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v17 ∨ v18 ∨ v45 ∨ v46 ∨ v47)
    (c2977 : ¬v32 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2978 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45)
    (c3007 : ¬v18 ∨ v3 ∨ v10 ∨ ¬v22 ∨ v43 ∨ v44 ∨ v45)
    (c3057 : ¬v17 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v14 ∨ v21 ∨ v23 ∨ v24 ∨ v28)
    (c3068 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3120 : v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v33 ∨ v40 ∨ v47)
    (c3139 : ¬v2 ∨ ¬v4 ∨ v11 ∨ v12 ∨ v45 ∨ v46 ∨ v47)
    (c3140 : v49)
    (c3159 : ¬v41 ∨ v33 ∨ v34 ∨ v35)
    (c3163 : ¬v6 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v14)
    (c3180 : v7 ∨ v1 ∨ ¬v39)
    (c3197 : v11 ∨ v2 ∨ v4 ∨ v9 ∨ v16 ∨ v18)
    (c3198 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v11)
    (c3310 : v4 ∨ v11 ∨ ¬v26 ∨ v31 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c3315 : v12 ∨ ¬v1 ∨ v4 ∨ ¬v5 ∨ v11)
    (c3319 : v11 ∨ ¬v1 ∨ ¬v4 ∨ v12)
    (c3341 : v2 ∨ v9 ∨ v10 ∨ ¬v27 ∨ v30)
    (c3349 : ¬v34 ∨ ¬v36)
    (c3360 : v32 ∨ v5 ∨ v12 ∨ v19 ∨ v33 ∨ v34)
    (c3372 : v18 ∨ v4 ∨ v11 ∨ ¬v41)
    (c3379 : v35 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v34 ∨ ¬v41)
    (c3397 : ¬v3 ∨ ¬v1 ∨ v4 ∨ v9 ∨ v10)
    (c3399 : ¬v19 ∨ v3 ∨ v4 ∨ v5 ∨ v10 ∨ ¬v11 ∨ v12)
    (c3406 : ¬v33 ∨ v3 ∨ v4 ∨ v5 ∨ v10 ∨ v11)
    (c3407 : ¬v34 ∨ v3 ∨ v10 ∨ v17)
    (c3412 : ¬v33 ∨ v4 ∨ v6 ∨ v7 ∨ v11 ∨ v13)
    (c3434 : ¬v27 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v9 ∨ v10)
    (c3453 : ¬v3 ∨ v2 ∨ ¬v5 ∨ v9 ∨ v10)
    (c3471 : v39 ∨ v4 ∨ v11 ∨ v18 ∨ v25)
    (c3472 : ¬v2 ∨ ¬v3 ∨ v11 ∨ v18 ∨ v25)
    (c3486 : v8)
    (c3491 : v12 ∨ ¬v3 ∨ v9 ∨ ¬v10 ∨ v19)
    (c3497 : v30 ∨ ¬v3 ∨ v9 ∨ v12 ∨ v19)
    : (¬v34 ∨ v2 ∨ v6 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28) ∧ (v12) := by
  have c3498 : ¬v3 ∨ v9 ∨ v12 ∨ v19 := by
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
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v10 := by
      rcases c3491 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
    have u8 : v30 := by
      rcases c3497 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v5 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
    have u13 : ¬v2 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c3453 with a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u13
    · exact absurd u12 a
    · exact absurd a n1
    · exact absurd a u7
  have c3499 : ¬v30 ∨ v2 ∨ ¬v4 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v19 := by
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
    have u9 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n4 a
    have u14 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u8 a
      · exact absurd n4 a
      · exact a
    have u15 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n4 a
    have u16 : ¬v3 := by
      rcases c3498 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v5 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
    have u19 : ¬v1 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u20 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u18 a
      · exact absurd n2 a
      · exact a
    have u21 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd u8 a
      · exact absurd a n3
      · exact a
    have u22 : ¬v17 := by
      rcases c2951 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a u15
    have u23 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u21 a
      · exact a
    rcases c2740 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u23
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3500 : v14 ∨ v2 ∨ v3 ∨ ¬v5 ∨ v7 ∨ v9 ∨ v10 ∨ v12 ∨ v13 ∨ v30 := by
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
    have u8 : v8 := c3486
    have u9 : ¬v1 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u8 a
      · exact absurd a n5
      · exact a
    have u12 : ¬v17 := by
      rcases c2951 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n0
    have u13 : ¬v24 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v29 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
    have u18 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u14
      · exact a
    rcases c2285 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a n9
    · exact absurd a u16
  have c3501 : v17 ∨ v3 ∨ v5 ∨ v10 ∨ v12 ∨ v19 ∨ v32 := by
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
    have u5 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
    rcases c3360 with a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u6
  have c3502 : v7 ∨ v2 ∨ ¬v4 ∨ v9 ∨ v10 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v30 := by
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
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v8 := c3486
    have u8 : ¬v27 := by
      rcases c3341 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n9
    have u9 : ¬v3 := by
      rcases c3498 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
    have u10 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v5 := by
      rcases c3500 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u12 : v17 := by
      rcases c3501 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u10
    have u13 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v1 := by
      rcases c2951 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n7
    have u16 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
    have u17 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd u15 a
      · exact absurd n2 a
      · exact a
    have u18 : v33 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a u16
    have u19 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u14
      · exact a
      · exact absurd a u16
    have u20 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u18 a
    rcases c3379 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u16
    · exact absurd u19 a
  have c3503 : v2 ∨ ¬v4 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v19 := by
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
    have u6 : v8 := c3486
    have u7 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u6 a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v3 := by
      rcases c3498 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v30 := by
      rcases c3499 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v7 := by
      rcases c3502 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u12
    have u14 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    have u15 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    have u16 : v17 := by
      rcases c3501 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
    have u17 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u16 a
      · exact a
    rcases c1391 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd n3 a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u19
  have c3504 : ¬v2 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v19 := by
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
    have u9 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v3 := by
      rcases c3498 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v5 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v6 := by
      rcases c2874 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u3
    have u15 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n0 a
    have u16 : v18 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a u15
      · exact a
    have u17 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u17
    have u22 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u20
    have u23 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u18
      · exact a
      · exact absurd a u21
      · exact absurd a u20
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u23
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a u21
  have c3505 : v5 ∨ v3 ∨ v4 ∨ ¬v11 ∨ v12 ∨ v19 ∨ v32 := by
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
    have u5 : v8 := c3486
    have u6 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v2 := by
      rcases c3504 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd n3 a
      · exact absurd a n4
    have u10 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
    have u11 : v33 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u10
    have u12 : v17 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u12 a
      · exact a
    rcases c371 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd n3 a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u13
  have c3506 : ¬v11 ∨ v19 := by
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
    have u8 : v8 := c3486
    have u9 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v3 := by
      rcases c3498 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n1
    have u14 : ¬v2 := by
      rcases c3504 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a n1
    have u15 : ¬v4 := by
      rcases c3503 with a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a n1
    have u16 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a u9
    have u17 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a u9
    have u19 : v5 := by
      rcases c3505 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u17
    have u20 : ¬v1 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : v15 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd n0 a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
    have u22 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v25 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : v31 := by
      rcases c505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a u24
      · exact absurd a n1
    have u28 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u30 : ¬v24 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u28
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u31 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u3
      · exact absurd a u16
      · exact a
    have u32 : ¬v29 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u30
      · exact absurd a u3
      · exact absurd a u4
    rcases c2285 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u20
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a u23
    · exact absurd a u18
    · exact absurd a u30
    · exact absurd a u32
    · exact absurd a u28
    · exact absurd a u25
  have c3507 : ¬v5 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v12 := by
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
    have u9 : ¬v1 := by
      rcases c3315 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n5
    have u10 : ¬v2 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v18 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact a
    have u17 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v25 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : v14 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a n3
    have u25 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u5
    have u26 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u14
      · exact a
      · exact absurd a u12
      · exact absurd a u22
    have u27 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u24 a
    rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u27
    · exact absurd a u4
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u5
    · exact absurd a u26
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u6
    · exact absurd a u14
  have c3508 : v4 ∨ v9 ∨ v10 ∨ v12 ∨ v19 := by
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
    have u8 : ¬v11 := by
      rcases c3506 with a|a
      · exact a
      · exact absurd a n4
    have u9 : ¬v3 := by
      rcases c3498 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v5 := by
      rcases c3507 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
    have u11 : ¬v33 := by
      rcases c3406 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u8
    have u12 : v26 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
    have u18 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u17
    have u19 : ¬v18 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n4
    have u20 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
    have u21 : v32 := by
      rcases c3360 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u18
    rcases c2436 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3509 : v17 ∨ v1 ∨ v2 ∨ v3 ∨ v6 ∨ v7 ∨ v9 ∨ v10 ∨ v11 := by
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
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v8 := c3486
    have u7 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
    have u11 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
    have u12 : v42 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n1
      · exact a
    have u13 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u4
    have u16 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v30 := by
      rcases c2862 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u4
    have u18 : v24 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u4
    have u19 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v13 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd u6 a
      · exact absurd u20 a
      · exact a
    have u22 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd u6 a
      · exact absurd a n6
      · exact a
    have u23 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u22 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a u23
    · exact absurd a u19
  have c3510 : v10 ∨ v9 ∨ v12 ∨ v19 := by
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
    have u8 : v8 := c3486
    have u9 : ¬v11 := by
      rcases c3506 with a|a
      · exact a
      · exact absurd a n3
    have u10 : ¬v3 := by
      rcases c3498 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : v4 := by
      rcases c3508 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v2 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : ¬v1 := by
      rcases c3319 with a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u11 a
      · exact absurd a n2
    have u14 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : v5 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd u11 a
    have u16 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u15 a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v27 := by
      rcases c3434 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n0
    have u18 : v17 := by
      rcases c3509 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u9
    have u19 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v14 := by
      rcases c2951 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
    have u22 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
    have u23 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u21 a
    have u24 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u20
      · exact a
      · exact absurd a u22
    have u25 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u24 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u25
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u26
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u13
  have c3511 : ¬v4 ∨ v9 ∨ v11 ∨ v12 ∨ v14 ∨ v15 ∨ v16 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u5 : v8 := c3486
    have u6 : ¬v2 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v1 := by
      rcases c3319 with a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
    rcases c488 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n1
  have c3512 : ¬v17 ∨ v9 ∨ v12 := by
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
    have u7 : v8 := c3486
    have u8 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v11 := by
      rcases c3506 with a|a
      · exact a
      · exact absurd a u13
    have u15 : v10 := by
      rcases c3510 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
    have u16 : ¬v3 := by
      rcases c3498 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
    have u17 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v4 := by
      rcases c3511 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
    have u20 : v2 := by
      rcases c3198 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u14
    have u21 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v41 := by
      rcases c3372 with a|a|a|a
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u14
      · exact a
    have u23 : ¬v5 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u24 : ¬v6 := by
      rcases c3163 with a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u17
    have u25 : v34 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u6
    rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u23
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd u25 a
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u6
  have c3513 : v32 ∨ ¬v2 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v16 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u6 : v8 := c3486
    have u7 : ¬v17 := by
      rcases c3512 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u8 : ¬v5 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n4 a
    have u11 : v18 := by
      rcases c2952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v6 := by
      rcases c3163 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v33 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u13
      · exact a
      · exact absurd a n8
    have u17 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v41 := by
      rcases c3379 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
      · exact a
    rcases c2543 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u5
  have c3514 : v11 ∨ ¬v2 ∨ v4 ∨ v9 ∨ v12 ∨ v14 ∨ v16 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u6 : v8 := c3486
    have u7 : v10 := by
      rcases c3510 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u8 : ¬v3 := by
      rcases c3498 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u9 : ¬v17 := by
      rcases c3512 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v5 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u12 : v18 := by
      rcases c2952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v6 := by
      rcases c3163 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n5
    have u14 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v34 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
    have u17 : v32 := by
      rcases c3513 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u16
    have u18 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u19
    rcases c2543 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u5
  have c3515 : ¬v2 ∨ v3 ∨ v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ ¬v19 := by
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
    have u8 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n7 a
    have u10 : ¬v5 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v10 := by
      rcases c2952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v33 := by
      rcases c3406 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
    have u13 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u9
    have u14 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u5
    have u17 : v25 := by
      rcases c3471 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u8
      · exact a
    have u18 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u5
    have u19 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u17 a
    rcases c414 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u17 a
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a n6
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u9
  have c3516 : v14 ∨ ¬v2 ∨ v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v8 := c3486
    have u2 : v19 := by
      rcases c3514 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact a
    have u3 : v3 := by
      rcases c3515 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u2 a
    have u4 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    rcases c2517 with a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n0
  have c3517 : v16 ∨ ¬v2 ∨ v4 ∨ v9 ∨ v11 ∨ v12 := by
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
    have u7 : v8 := c3486
    have u8 : ¬v17 := by
      rcases c3512 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u9 : v14 := by
      rcases c3516 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u10 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u7 a
      · exact absurd u9 a
      · exact a
    have u11 : v19 := by
      rcases c3510 with a|a|a|a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u12 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u9 a
    have u14 : v26 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd u11 a
    have u15 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v39 := by
      rcases c3471 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u15
    have u17 : ¬v3 := by
      rcases c3472 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u15
    have u18 : v32 := by
      rcases c2941 with a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c2436 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3518 : v34 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v20 ∨ v21 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v41 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u2
    rcases c3379 with a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd u3 a
  have c3519 : ¬v2 ∨ v4 ∨ v9 ∨ v11 ∨ v12 := by
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
    have u7 : v8 := c3486
    have u8 : v16 := by
      rcases c3517 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v41 := by
      rcases c3372 with a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact a
    have u14 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : v10 := by
      rcases c3510 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
    have u16 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v6 := by
      rcases c3163 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u16
    have u19 : v34 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u6
    have u20 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v39 := by
      rcases c2636 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd a u4
    rcases c2941 with a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u20
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3520 : ¬v16 ∨ v4 ∨ v9 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v11 := by
      rcases c3506 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v10 := by
      rcases c3510 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
    have u4 : ¬v3 := by
      rcases c3498 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
    have u5 : ¬v2 := by
      rcases c3519 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
    rcases c3198 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
  have c3521 : v4 ∨ v9 ∨ v11 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v2 := by
      rcases c3519 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v16 := by
      rcases c3520 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
    have u3 : v18 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u2
      · exact a
    have u4 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v10 := by
      rcases c3510 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
    have u6 : ¬v3 := by
      rcases c3498 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
    rcases c3198 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c3522 : v3 ∨ v9 ∨ v11 ∨ v12 ∨ v16 := by
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
    have u9 : ¬v17 := by
      rcases c3512 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u10 : v4 := by
      rcases c3521 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v2 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v1 := by
      rcases c3319 with a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u10 a
      · exact absurd a n3
    have u13 : v5 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd u10 a
    have u14 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
    have u16 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u13 a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u10 a
    have u18 : v10 := by
      rcases c3509 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    have u19 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u19
    have u21 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
    have u22 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u18 a
    have u25 : v35 := by
      rcases c3518 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
      · exact a
    have u26 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v26 := by
      rcases c2879 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u22
      · exact a
      · exact absurd a u26
      · exact absurd a u14
      · exact absurd a u27
    have u29 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u28
      · exact a
      · exact absurd a u15
    have u30 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u29
      · exact absurd a u22
      · exact a
      · exact absurd a u15
    have u31 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u30 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u31
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u32
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u12
  have c3523 : v16 ∨ v9 ∨ v11 ∨ v12 := by
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
    have u8 : v8 := c3486
    have u9 : v4 := by
      rcases c3521 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v2 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : ¬v1 := by
      rcases c3319 with a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u9 a
      · exact absurd a n3
    have u12 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
    have u13 : v3 := by
      rcases c3522 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u14 : v19 := by
      rcases c3498 with a|a|a|a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
    have u15 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u9 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u13 a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v14 := by
      rcases c2517 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
    have u20 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u8 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v27 := by
      rcases c3434 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u20
    have u22 : ¬v13 := by
      rcases c1678 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n3
      · exact a
    have u23 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u18
      · exact a
      · exact absurd a u12
    have u24 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u23 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u24
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u25
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a u11
  have c3524 : v11 ∨ v9 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u5 : v8 := c3486
    have u6 : v4 := by
      rcases c3521 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u7 : ¬v2 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v16 := by
      rcases c3523 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u9 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v1 := by
      rcases c3319 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u6 a
      · exact absurd a n2
    have u12 : v10 := by
      rcases c3510 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
    have u13 : ¬v3 := by
      rcases c3498 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
    have u14 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u12 a
    have u15 : v7 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u7
      · exact a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a u9
    have u16 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u15 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd u6 a
  have c3525 : v2 ∨ ¬v4 ∨ v9 ∨ v10 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v21 := by
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
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v8 := c3486
    have u7 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
    have u8 : v1 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n2
    have u9 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
    have u13 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n9
      · exact a
      · exact absurd a u7
      · exact absurd a u10
    have u14 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u7
    rcases c11 with a|a|a
    · exact absurd u8 a
    · exact absurd n1 a
    · exact absurd u14 a
  have c3526 : ¬v4 ∨ v9 ∨ v10 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v21 := by
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
    have u6 : v2 := by
      rcases c3525 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v6 := by
      rcases c2874 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n7
    have u10 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
    have u13 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n8
      · exact a
      · exact absurd a u9
      · exact absurd a u10
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd a n8
    · exact absurd a u12
    · exact absurd a u9
  have c3527 : ¬v2 ∨ v9 ∨ v12 := by
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
    have u7 : v8 := c3486
    have u8 : ¬v17 := by
      rcases c3512 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v11 := by
      rcases c3524 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u7 a
      · exact absurd u9 a
      · exact a
    have u12 : v19 := by
      rcases c3506 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v4 := by
      rcases c3526 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u16
    have u19 : ¬v5 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : v3 := by
      rcases c3399 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a n2
    have u21 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n0 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v1 := by
      rcases c3397 with a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u10
    rcases c2517 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a u13
  have c3528 : v9 ∨ v12 := by
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
    have u5 : v8 := c3486
    have u6 : ¬v17 := by
      rcases c3512 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u7 : ¬v2 := by
      rcases c3527 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u8 : v11 := by
      rcases c3524 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u9 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u5 a
      · exact absurd u8 a
      · exact a
    have u11 : v19 := by
      rcases c3506 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : v1 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u16
    have u18 : ¬v4 := by
      rcases c3526 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u16
    have u19 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v3 := by
      rcases c3397 with a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u9
    rcases c3399 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd u8 a
    · exact absurd a n1
  have c3529 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    rcases c404 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
  have c3530 : v5 ∨ v2 ∨ v4 ∨ v12 := by
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
    have u8 : v8 := c3486
    have u9 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n3
    have u10 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n1
    have u15 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : ¬v33 := by
      rcases c3406 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
    have u17 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : v26 := by
      rcases c3120 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u6
    have u19 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v17 := by
      rcases c3057 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u22
    have u24 : ¬v18 := by
      rcases c3529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u21
    have u25 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u23
    have u26 : v39 := by
      rcases c3471 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u21
    have u27 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u28 : v32 := by
      rcases c2941 with a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c2436 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u27
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3531 : v32 ∨ v1 ∨ v2 ∨ v4 ∨ v7 ∨ v10 ∨ v11 ∨ v13 ∨ v17 ∨ v22 ∨ v27 ∨ v28 := by
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
    have u8 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u9 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
    have u10 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n8
    have u11 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
    have u14 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
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
    have u16 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
    have u17 : v25 := by
      rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u14
      · exact a
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v29 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u4
    have u20 : v31 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : v38 := by
      rcases c2863 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u22
      · exact a
      · exact absurd a u8
    have u24 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u23 a
    rcases c446 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u7
  have c3532 : ¬v18 ∨ v1 ∨ v2 ∨ v4 ∨ v7 ∨ v10 ∨ v13 := by
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
    have u9 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
    have u13 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u15 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u16 : ¬v11 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
    have u17 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
    have u18 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u9
    have u19 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u22 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact a
    have u23 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u13
      · exact a
      · exact absurd a u18
      · exact absurd a u19
    have u24 : ¬v22 := by
      rcases c3007 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : v32 := by
      rcases c3531 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u22
    have u26 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u28 : ¬v26 := by
      rcases c3310 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u16
      · exact a
      · exact absurd a u26
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u12
      · exact absurd a u21
    have u29 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u27
      · exact absurd a u4
      · exact absurd a u9
      · exact a
      · exact absurd a u26
    have u30 : v25 := by
      rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u28
      · exact a
      · exact absurd a u5
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u13
    rcases c113 with a|a
    · exact absurd u29 a
    · exact absurd u30 a
  have c3533 : v4 ∨ v2 ∨ v12 := by
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
    have u8 : v8 := c3486
    have u9 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n1
    have u15 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : v5 := by
      rcases c3530 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u17 : ¬v1 := by
      rcases c3315 with a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd u16 a
      · exact absurd a u12
    have u18 : ¬v7 := by
      rcases c2311 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u7
    have u19 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a u18
      · exact absurd a u17
      · exact a
    have u20 : ¬v18 := by
      rcases c3532 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u11
    have u21 : ¬v34 := by
      rcases c2636 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u5
    have u22 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : v25 := by
      rcases c3471 with a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u20
      · exact a
    have u24 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u5
    have u26 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u23 a
    have u29 : ¬v17 := by
      rcases c3057 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u28
    have u30 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u29
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u31 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u29
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c414 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd u23 a
    · exact absurd a u6
    · exact absurd a u31
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u27
    · exact absurd a u30
    · exact absurd a u5
    · exact absurd a u29
  have c3534 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v32 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    rcases c2863 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c3535 : ¬v24 ∨ v6 ∨ v12 ∨ v34 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v8 := c3486
    have u4 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n2
    have u8 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u3 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u3 a
      · exact absurd u7 a
      · exact a
    have u11 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n3
    have u12 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u9
      · exact a
    have u13 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u11 a
      · exact a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd u11 a
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u12
  have c3536 : v17 ∨ v3 ∨ ¬v4 ∨ v12 := by
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
    have u8 : v8 := c3486
    have u9 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n3
    have u10 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u12
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd n2 a
    have u17 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n2 a
    have u18 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u16 a
      · exact absurd n2 a
      · exact a
    have u19 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a u18
      · exact absurd a u17
      · exact a
    have u20 : ¬v34 := by
      rcases c3407 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n0
    have u21 : ¬v41 := by
      rcases c3379 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u20
      · exact a
    have u22 : v42 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u17
      · exact a
    have u23 : ¬v24 := by
      rcases c3535 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u21
    have u24 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u23
      · exact a
    have u27 : v32 := by
      rcases c3534 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u19
    rcases c135 with a|a
    · exact absurd u26 a
    · exact absurd u27 a
  have c3537 : v34 ∨ v3 ∨ v6 ∨ v12 ∨ ¬v17 := by
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
    have u9 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n3
    have u10 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n4 a
    have u12 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n4 a
      · exact a
    have u14 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n4 a
      · exact a
    have u19 : v35 := by
      rcases c3518 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact a
    have u20 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v4 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd u23 a
    have u25 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u23 a
    have u26 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u24 a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v26 := by
      rcases c2879 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u12
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u21
    have u28 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u27
      · exact a
      · exact absurd a n0
    have u29 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u28
      · exact absurd a u12
      · exact a
      · exact absurd a n0
    have u30 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u29 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u30
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u31
    · exact absurd a u26
    · exact absurd a u2
    · exact absurd a u25
  have c3538 : v24 ∨ v3 ∨ v6 ∨ v12 ∨ ¬v17 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v8 := c3486
    have u2 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n3
    have u4 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u6 : v34 := by
      rcases c3537 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
    have u7 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u13 : v25 := by
      rcases c1249 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n0
      · exact a
    have u14 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u13 a
      · exact a
    rcases c850 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u2
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u11
  have c3539 : ¬v34 ∨ v2 ∨ v6 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 := by
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
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v36 := by
      rcases c3349 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : v41 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u12
    have u14 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c386 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u7
  have c3540 : v3 ∨ v2 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
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
    have u7 : v8 := c3486
    have u8 : v4 := by
      rcases c3533 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u7 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u7 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u7 a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd u8 a
    have u16 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u8 a
    have u17 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u15 a
      · exact absurd u8 a
      · exact a
    have u18 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a u17
      · exact absurd a u16
      · exact a
    have u19 : v17 := by
      rcases c3536 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a n2
    have u20 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v24 := by
      rcases c3538 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd u19 a
      · exact absurd a u18
    have u22 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u21 a
    have u27 : ¬v34 := by
      rcases c3539 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u25
    have u28 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u26
      · exact absurd a u24
      · exact a
      · exact absurd a u27
    have u29 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u28 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u29
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u30
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a u16
  have c3541 : ¬v35 ∨ v2 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
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
    have u6 : v8 := c3486
    have u7 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : v3 := by
      rcases c3540 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v4 := by
      rcases c3533 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n2
    have u11 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u14 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u6 a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u6 a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u18 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : v26 := by
      rcases c3120 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u4
    have u20 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u22 : ¬v20 := by
      rcases c665 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u7
    have u23 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u22
      · exact a
      · exact absurd a u7
    have u24 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v36 := by
      rcases c424 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u13
    rcases c150 with a|a
    · exact absurd u25 a
    · exact absurd u23 a
  have c3542 : v21 ∨ v5 ∨ v6 ∨ v12 ∨ v34 ∨ v35 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u6 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n3
    have u7 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v41 := by
      rcases c3379 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact a
    have u11 : v20 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u4
    have u12 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u13 a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u11 a
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a u12
  have c3543 : v34 ∨ v1 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v8 := c3486
    have u5 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n5
    have u6 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
    have u10 : ¬v41 := by
      rcases c3379 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact a
    have u11 : v42 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n1
      · exact a
    have u12 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : v21 := by
      rcases c3542 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u12
    have u14 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v27 := by
      rcases c2488 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd u13 a
    have u16 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a n0
    rcases c100 with a|a
    · exact absurd u16 a
    · exact absurd u13 a
  have c3544 : v2 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
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
    have u7 : v8 := c3486
    have u8 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n1
    have u9 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u12 : v3 := by
      rcases c3540 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u13 : v4 := by
      rcases c3533 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u14 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
    have u17 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v35 := by
      rcases c3541 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u19 : v34 := by
      rcases c3543 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u18
    have u20 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : ¬v36 := by
      rcases c3349 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : v26 := by
      rcases c3120 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u5
    have u25 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : v42 := by
      rcases c424 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u6
      · exact a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u16
    have u28 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : v41 := by
      rcases c374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u14
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u6
    rcases c166 with a|a
    · exact absurd u29 a
    · exact absurd u27 a
  have c3545 : ¬v34 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
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
    have u7 : v8 := c3486
    have u8 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n1
    have u12 : v2 := by
      rcases c3544 with a|a
      · exact a
      · exact absurd a n1
    have u13 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u7 a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u7 a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v5 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v4 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v26 := by
      rcases c3310 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u17
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
    have u21 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u16
      · exact a
    rcases c1435 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3546 : ¬v26 ∨ v12 := by
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
    have u8 : v8 := c3486
    have u9 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : v2 := by
      rcases c3544 with a|a
      · exact a
      · exact absurd a n1
    have u13 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a n1
    have u14 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u8 a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u8 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u8 a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v6 := by
      rcases c3163 with a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u14
    have u19 : ¬v4 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : ¬v34 := by
      rcases c3545 with a|a
      · exact a
      · exact absurd a n1
    have u21 : ¬v18 := by
      rcases c3529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u10
    have u22 : ¬v41 := by
      rcases c3372 with a|a|a|a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u16
      · exact a
    have u23 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u11
      · exact a
      · exact absurd a u22
      · exact absurd a u20
    have u24 : v3 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c3472 with a|a|a|a|a
    · exact absurd u12 a
    · exact absurd u24 a
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u10
  have c3547 : v12 := by
    by_contra hc
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
    have u7 : v8 := c3486
    have u8 : ¬v26 := by
      rcases c3546 with a|a
      · exact a
      · exact absurd a hc
    have u9 : v2 := by
      rcases c3544 with a|a
      · exact a
      · exact absurd a hc
    have u10 : v9 := by
      rcases c3528 with a|a
      · exact a
      · exact absurd a hc
    have u11 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u7 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u7 a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u7 a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a hc
      · exact absurd a u12
      · exact a
    have u16 : ¬v6 := by
      rcases c3163 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a hc
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v5 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u13
      · exact absurd a hc
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v4 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u13
      · exact absurd a hc
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a hc
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : v7 := by
      rcases c3412 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u18
      · exact absurd a u16
      · exact a
      · exact absurd a u13
      · exact absurd a u12
    have u24 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u19 a
    have u26 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u3
    · exact absurd a u4
  exact ⟨c3539, c3547⟩
