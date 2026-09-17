import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2400-2449 of the 2559-step refutation of ccase003: 118 core clauses and 68 earlier-derived ones give 15 more. -/
theorem CCase003_block048
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c129 : ¬v29 ∨ ¬v35)
    (c130 : ¬v30 ∨ ¬v31)
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
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c155 : ¬v41 ∨ ¬v37)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c172 : ¬v43 ∨ ¬v49)
    (c177 : ¬v44 ∨ ¬v49)
    (c181 : ¬v45 ∨ ¬v49)
    (c184 : ¬v49 ∨ ¬v46)
    (c186 : ¬v49 ∨ ¬v47)
    (c187 : ¬v49 ∨ ¬v48)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c247 : v7 ∨ v20 ∨ v12 ∨ v14 ∨ v5 ∨ v6 ∨ v21 ∨ ¬v13)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c321 : ¬v41 ∨ v35 ∨ v30 ∨ v40 ∨ v7 ∨ v5 ∨ v48 ∨ v36 ∨ v37 ∨ v34 ∨ v42 ∨ v44 ∨ v47 ∨ v6)
    (c333 : ¬v16 ∨ v23 ∨ v1 ∨ v21 ∨ v3 ∨ v27 ∨ v15 ∨ v22 ∨ v17 ∨ v20 ∨ v2 ∨ v10 ∨ v9 ∨ v13)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c369 : v43 ∨ ¬v36 ∨ v44 ∨ v34 ∨ v35 ∨ v8 ∨ v1 ∨ v29 ∨ v41 ∨ v42 ∨ v9 ∨ v14 ∨ v37 ∨ v48)
    (c375 : v22 ∨ v16 ∨ v31 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v15 ∨ v30)
    (c381 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v17 ∨ v10 ∨ v11 ∨ v19)
    (c384 : v48 ∨ v19 ∨ v5 ∨ v4 ∨ v15 ∨ v20 ∨ v13 ∨ v8 ∨ v11 ∨ v1 ∨ ¬v12 ∨ v46 ∨ v47 ∨ v14)
    (c395 : ¬v49 ∨ v42 ∨ v6 ∨ v1 ∨ v7 ∨ v36 ∨ v43 ∨ v48)
    (c412 : v12 ∨ v47 ∨ v5 ∨ v7 ∨ ¬v6 ∨ v14 ∨ v48 ∨ v13)
    (c486 : v22 ∨ v26 ∨ v5 ∨ v27 ∨ v18 ∨ v6 ∨ v12 ∨ v11 ∨ v4 ∨ v21 ∨ v15 ∨ ¬v19 ∨ v8 ∨ v20)
    (c498 : v43 ∨ ¬v30 ∨ v35 ∨ v45 ∨ v34 ∨ v22 ∨ v29 ∨ v37 ∨ v44 ∨ v38 ∨ v41 ∨ v23 ∨ v27 ∨ v31)
    (c539 : ¬v49 ∨ v43 ∨ v7 ∨ v42 ∨ v41 ∨ v6 ∨ v36 ∨ v48)
    (c552 : v36 ∨ ¬v35 ∨ v28 ∨ v22 ∨ v34 ∨ v27 ∨ v42 ∨ v29)
    (c553 : v43 ∨ ¬v1 ∨ v44 ∨ v8 ∨ v7 ∨ v2 ∨ v9 ∨ v14)
    (c568 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c594 : v18 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c636 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c728 : v17 ∨ ¬v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v29 ∨ v30 ∨ v32 ∨ v33)
    (c739 : ¬v13 ∨ v4 ∨ v5 ∨ v6 ∨ v14 ∨ v18 ∨ v20 ∨ v21 ∨ v27 ∨ v33 ∨ v34 ∨ v35)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c771 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v26 ∨ v30 ∨ v31)
    (c785 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v24)
    (c897 : v25 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32)
    (c909 : v31 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v38 ∨ v39 ∨ v40)
    (c932 : ¬v19 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1215 : v26 ∨ v17 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32)
    (c1242 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1311 : v40 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v29 ∨ v34 ∨ v36 ∨ v42)
    (c1462 : ¬v35 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1465 : ¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1483 : ¬v22 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v34)
    (c1515 : v11 ∨ ¬v1 ∨ v18 ∨ v25 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1560 : v16 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1568 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1934 : ¬v19 ∨ v3 ∨ v4 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1984 : ¬v22 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31)
    (c2008 : v33 ∨ v18 ∨ v19 ∨ ¬v24 ∨ ¬v26 ∨ v31)
    (c2074 : ¬v12 ∨ v4 ∨ v5 ∨ v18 ∨ v19 ∨ v20)
    (c2110 : ¬v23 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c2155 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2314 : ¬v35 ∨ ¬v22 ∨ ¬v25)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2356 : v5 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v18)
    (c2376 : v20 ∨ ¬v1 ∨ ¬v7 ∨ v19 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c2413 : v3 ∨ v10 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45)
    (c2414 : v30 ∨ ¬v23 ∨ ¬v27 ∨ v31 ∨ v33 ∨ v34)
    (c2539 : ¬v11 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19)
    (c2543 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v16 ∨ v17)
    (c2574 : ¬v37 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2680 : ¬v19 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2687 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c2707 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c2708 : ¬v31 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v45 ∨ v46 ∨ v47)
    (c2728 : v32 ∨ ¬v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v30 ∨ v31)
    (c2732 : v10 ∨ ¬v5 ∨ v17 ∨ v24 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2875 : v49)
    (c2898 : v3 ∨ v1 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36)
    (c2905 : v6 ∨ v5 ∨ ¬v34)
    (c2910 : ¬v25 ∨ v24 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c2925 : ¬v41 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v31 ∨ ¬v33 ∨ v34)
    (c2926 : ¬v22 ∨ v5 ∨ v19 ∨ ¬v24 ∨ v26 ∨ v31 ∨ v32 ∨ v39)
    (c2943 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40)
    (c2953 : ¬v7 ∨ ¬v3 ∨ v10)
    (c2988 : v19 ∨ v5 ∨ v6)
    (c2992 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37)
    (c2994 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v27 ∨ v31)
    (c2999 : v37 ∨ v5 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v36)
    (c3001 : v41 ∨ v5 ∨ v6 ∨ ¬v27)
    (c3002 : ¬v31 ∨ ¬v41)
    (c3003 : v23 ∨ v5 ∨ ¬v19 ∨ v22 ∨ ¬v27 ∨ v31 ∨ v36 ∨ v37 ∨ v38)
    (c3004 : ¬v23 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ ¬v27)
    : (¬v30 ∨ ¬v41) ∧ (¬v4 ∨ v5) ∧ (¬v3 ∨ v5) ∧ (¬v26 ∨ v1 ∨ v2 ∨ v4 ∨ v8 ∨ v9 ∨ v11 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v31) ∧ (¬v10 ∨ v5 ∨ v18) ∧ (v2 ∨ v5 ∨ v9 ∨ v12 ∨ v16 ∨ v19 ∨ ¬v31) ∧ (¬v26 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31) ∧ (¬v23 ∨ v17 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v32 ∨ v33) ∧ (v1 ∨ v2 ∨ v3 ∨ ¬v9 ∨ v10 ∨ v16) ∧ (¬v9 ∨ v2 ∨ v5 ∨ v16) ∧ (v16 ∨ v2 ∨ v5 ∨ v18) ∧ (¬v16 ∨ v5) ∧ (¬v12 ∨ v5 ∨ v19) ∧ (v10 ∨ v5 ∨ v19 ∨ v26) ∧ (¬v19 ∨ v5) := by
  have c3005 : ¬v27 ∨ v5 ∨ v6 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u6 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u7 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v23 := by
      rcases c3004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd n0 a
    have u14 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd a u5
    have u15 : v41 := by
      rcases c3001 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
    have u16 : ¬v31 := by
      rcases c3002 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u15 a
      · exact a
    rcases c3003 with a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd u6 a
    · exact absurd a u14
    · exact absurd n0 a
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u18
  have c3006 : ¬v30 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n1 a
      · exact a
    rcases c2943 with a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u4
  have c3007 : ¬v41 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v27 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v30 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c3002 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v24 := by
      rcases c375 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a u1
    have u7 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n5 a
    have u9 : ¬v33 := by
      rcases c2925 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u2
      · exact a
      · exact absurd a n7
    have u10 : v35 := by
      rcases c2943 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a n7
      · exact a
      · exact absurd a u4
    have u11 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u10 a
    rcases c552 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u10 a
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u11
  have c3008 : v22 ∨ v5 ∨ v6 ∨ ¬v23 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c3005 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u9 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v41 := by
      rcases c3007 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u8
    have u17 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u8
    have u18 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : v7 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd u17 a
    have u24 : ¬v3 := by
      rcases c2953 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u21
    have u25 : ¬v4 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u26 : v24 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u27 : v26 := by
      rcases c486 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd u9 a
      · exact absurd a u19
      · exact absurd a u14
    rcases c98 with a|a|a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd n3 a
  have c3009 : ¬v23 ∨ v5 ∨ v6 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v27 := by
      rcases c3005 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u12 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v22 := by
      rcases c3008 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
    have u16 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n0 a
    have u19 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
    have u20 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u19
      · exact a
      · exact absurd u9 a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
    have u21 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : v41 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u10
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u11
    have u25 : ¬v7 := by
      rcases c2953 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u21
    have u26 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u24 a
      · exact a
    have u29 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u24 a
      · exact a
    have u30 : v1 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u29
      · exact absurd a n2
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a u7
    have u31 : ¬v32 := by
      rcases c909 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd a u8
      · exact absurd a u28
      · exact absurd a u27
    rcases c1515 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd u30 a
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u31
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3010 : v7 ∨ v5 ∨ v6 ∨ ¬v22 ∨ v26 ∨ v30 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v1 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u7
    have u9 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v27 := by
      rcases c3005 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u12 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v41 := by
      rcases c539 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u7
    have u15 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v35 := by
      rcases c321 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
    have u17 : ¬v25 := by
      rcases c2314 with a|a|a
      · exact absurd u16 a
      · exact absurd n3 a
      · exact a
    have u18 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u10
    rcases c1515 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd u8 a
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3011 : v25 ∨ v6 ∨ ¬v7 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u8
      · exact a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v3 := by
      rcases c2953 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u10
    rcases c2707 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3012 : v26 ∨ v5 ∨ v6 ∨ ¬v22 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v39 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c3005 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : ¬v23 := by
      rcases c3009 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
    have u4 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v24 := by
      rcases c1984 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n5
    have u10 : v7 := by
      rcases c3010 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u11 : v25 := by
      rcases c3011 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u10 a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
    have u12 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v35 := by
      rcases c2314 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u11 a
    have u14 : ¬v33 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a u12
    have u15 : v29 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n4
    have u16 : v32 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a u14
    rcases c126 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c3013 : ¬v22 ∨ v5 ∨ v6 ∨ v31 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v30 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u11 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v23 := by
      rcases c3009 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : v26 := by
      rcases c3012 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
    have u18 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v33 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u18
    have u20 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u18
    rcases c2943 with a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u19
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u7
  have c3014 : ¬v26 ∨ v5 ∨ v6 ∨ v22 ∨ v30 ∨ v31 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c3005 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u9 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v23 := by
      rcases c3009 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
    have u11 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v24 := by
      rcases c771 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v28 := by
      rcases c2999 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u17
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd u18 a
      · exact absurd n0 a
      · exact a
    have u20 : v35 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u12
    have u21 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v1 := by
      rcases c2680 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : v11 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u25 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u25
      · exact absurd a u3
      · exact a
      · exact absurd a n4
    have u28 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1 with a|a|a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd u23 a
  have c3015 : ¬v35 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v28 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u3
    have u8 : v25 := by
      rcases c1215 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u5
    have u9 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    rcases c678 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd u8 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
  have c3016 : ¬v41 ∨ v5 ∨ v6 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v30 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v31 := by
      rcases c3002 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v27 := by
      rcases c3005 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u12 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u13 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v23 := by
      rcases c3009 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
    have u15 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u12 a
    have u20 : ¬v22 := by
      rcases c3013 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd n0 a
    have u21 : ¬v26 := by
      rcases c3014 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u13
    have u22 : ¬v29 := by
      rcases c1311 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u21
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
    have u23 : ¬v35 := by
      rcases c3015 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
    have u24 : v33 := by
      rcases c2943 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u8
    have u25 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v24 := by
      rcases c2925 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd u24 a
      · exact absurd a u11
    have u27 : v25 := by
      rcases c897 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u25
    rcases c2910 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u26
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u22
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u25
    · exact absurd a u11
    · exact absurd a u23
  have c3017 : v26 ∨ v5 ∨ v6 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c3005 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u7 : ¬v41 := by
      rcases c3016 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u9 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u8
    have u15 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : v25 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd u9 a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
    have u21 : v7 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd u14 a
    have u22 : ¬v4 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : v22 := by
      rcases c486 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a u16
      · exact absurd a u12
    have u24 : ¬v35 := by
      rcases c2314 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u20 a
    have u25 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u23 a
    have u27 : v33 := by
      rcases c739 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u6
      · exact a
      · exact absurd a u8
      · exact absurd a u24
    rcases c1465 with a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u10
    · exact absurd u23 a
    · exact absurd a u26
    · exact absurd a u25
  have c3018 : ¬v31 ∨ v5 ∨ v6 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v41 := by
      rcases c3002 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v27 := by
      rcases c3005 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u8
    have u16 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v7 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd u15 a
    have u21 : ¬v4 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c739 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u21
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u7
  have c3019 : v6 ∨ v5 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u8 : ¬v27 := by
      rcases c3005 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u9 : ¬v41 := by
      rcases c3016 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u10 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    have u11 : ¬v31 := by
      rcases c3018 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u12 : v26 := by
      rcases c3017 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u13 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u7 a
    have u18 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v23 := by
      rcases c3009 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u11
    have u20 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u10
    have u21 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : v7 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd u20 a
    have u26 : ¬v4 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : ¬v3 := by
      rcases c2953 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u22
    have u28 : v24 := by
      rcases c1934 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u27
      · exact absurd a u26
      · exact a
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u3
    have u29 : v25 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd u28 a
      · exact a
    rcases c107 with a|a|a
    · exact absurd u28 a
    · exact absurd u12 a
    · exact absurd u29 a
  have c3020 : v25 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ ¬v26 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v23 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd n4 a
      · exact absurd a n0
    rcases c98 with a|a|a
    · exact absurd n5 a
    · exact absurd n4 a
    · exact absurd u1 a
  have c3021 : ¬v4 ∨ v5 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v6 := by
      rcases c3019 with a|a
      · exact a
      · exact absurd a n1
    have u7 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
    have u9 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    rcases c412 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd u6 a
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u12
  have c3022 : ¬v11 ∨ v5 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a n1
    have u9 : v6 := by
      rcases c3019 with a|a
      · exact a
      · exact absurd a n1
    have u10 : v7 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd u9 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u11 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u9 a
    rcases c2356 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a n2
  have c3023 : ¬v3 ∨ v5 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a n1
    have u8 : v6 := by
      rcases c3019 with a|a
      · exact a
      · exact absurd a n1
    have u9 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
    have u10 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u8 a
    have u11 : v10 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u11 a
      · exact a
    rcases c412 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd u8 a
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u13
  have c3024 : v25 ∨ v2 ∨ v4 ∨ v9 ∨ v11 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v26 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v32 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u8 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v23 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v27 := by
      rcases c2414 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u11 a
      · exact a
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u10
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u12
  have c3025 : ¬v26 ∨ v1 ∨ v2 ∨ v4 ∨ v8 ∨ v9 ∨ v11 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v25 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd n0 a
      · exact absurd a n11
    have u8 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u7 a
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u7 a
    have u12 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v41 := by
      rcases c3006 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u7 a
    have u20 : ¬v15 := by
      rcases c1560 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u19
    have u21 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u20
    have u22 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v27 := by
      rcases c498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u12 a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u10
      · exact a
      · exact absurd a n11
    have u25 : v14 := by
      rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u21 a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a n5
      · exact a
      · exact absurd a u22
      · exact absurd a u6
    have u26 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v17 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u26
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u11
    have u28 : v3 := by
      rcases c2413 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd u24 a
      · exact absurd a n11
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u4
    have u29 : ¬v5 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u27
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c3023 with a|a
    · exact absurd u28 a
    · exact absurd a u29
  have c3026 : v31 ∨ v1 ∨ v2 ∨ v5 ∨ v8 ∨ v9 ∨ v12 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a n3
    have u9 : ¬v11 := by
      rcases c3022 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
    have u10 : ¬v26 := by
      rcases c3025 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u11 : v33 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v23 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n9
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd u14 a
      · exact absurd u15 a
      · exact a
    rcases c2728 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd u14 a
    · exact absurd a u16
    · exact absurd u15 a
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a n0
  have c3027 : v8 ∨ v1 ∨ v2 ∨ v5 ∨ v9 ∨ v12 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v31 := by
      rcases c3026 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : v26 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v23 := by
      rcases c2110 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u9
  have c3028 : ¬v10 ∨ v5 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n1
    have u11 : v6 := by
      rcases c3019 with a|a
      · exact a
      · exact absurd a n1
    have u12 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a n1
    have u13 : v7 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u8
    have u14 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u11 a
    have u15 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u11 a
    have u16 : v17 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a u7
    have u17 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u16 a
    rcases c3027 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a u19
  have c3029 : v2 ∨ v5 ∨ v9 ∨ v12 ∨ v16 ∨ v19 ∨ ¬v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n6 a
    have u8 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n6 a
    have u9 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n6 a
    have u10 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n6 a
    have u12 : v26 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v23 := by
      rcases c2110 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd u12 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u8
  have c3030 : v16 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v26 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v25 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
    have u6 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n10 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n10 a
      · exact absurd u5 a
    have u8 : v17 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c785 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u7
  have c3031 : v20 ∨ v2 ∨ v5 ∨ v9 ∨ v16 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n2
    have u9 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v10 := by
      rcases c3028 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u11 : ¬v11 := by
      rcases c3022 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u12 : ¬v12 := by
      rcases c2074 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u13 : ¬v31 := by
      rcases c3029 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n6
      · exact a
    have u14 : ¬v26 := by
      rcases c3030 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u13
    have u15 : v33 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u16 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v23 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
    rcases c2728 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u18 a
    · exact absurd a u20
    · exact absurd u19 a
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u13
  have c3032 : ¬v23 ∨ v5 ∨ v18 ∨ v19 ∨ ¬v20 ∨ ¬v24 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n0 a
    have u7 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a n1
    have u11 : ¬v11 := by
      rcases c3022 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u12 : v13 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
    have u13 : v32 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u13 a
      · exact a
    rcases c1568 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3033 : v19 ∨ v2 ∨ v5 ∨ v9 ∨ v16 ∨ v18 ∨ ¬v24 ∨ v26 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v20 := by
      rcases c3031 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u9 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v23 := by
      rcases c3032 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd n6 a
      · exact absurd a n7
    have u11 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v27 := by
      rcases c2994 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u10
      · exact a
      · exact absurd a n8
    have u13 : v25 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd n6 a
      · exact a
    have u14 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v13 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u15
    have u18 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    rcases c56 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c3034 : ¬v26 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c107 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    rcases c3020 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd n0 a
    · exact absurd a n5
  have c3035 : v31 ∨ v2 ∨ v5 ∨ v9 ∨ v16 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n2
    have u6 : ¬v10 := by
      rcases c3028 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u7 : v20 := by
      rcases c3031 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v24 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v26 := by
      rcases c3034 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd u9 a
      · exact absurd a n0
    rcases c3033 with a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u9 a
    · exact absurd a u10
    · exact absurd a n0
  have c3036 : ¬v23 ∨ v17 ∨ v24 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v26 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    rcases c728 with a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c3037 : ¬v23 ∨ v17 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    rcases c3036 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c3038 : v9 ∨ v2 ∨ v5 ∨ v16 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a n2
    have u8 : ¬v11 := by
      rcases c3022 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u9 : v31 := by
      rcases c3035 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v12 := by
      rcases c3029 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd u9 a
    have u15 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : v20 := by
      rcases c2074 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u18 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u11
    have u19 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u17 a
      · exact a
    rcases c3037 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u19
    · exact absurd u16 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u12
  have c3039 : v1 ∨ v2 ∨ v3 ∨ ¬v9 ∨ v10 ∨ v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v17 := by
      rcases c2543 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u1 a
    rcases c568 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
  have c3040 : ¬v9 ∨ v2 ∨ v5 ∨ v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n2
    have u9 : v6 := by
      rcases c3019 with a|a
      · exact a
      · exact absurd a n2
    have u10 : v7 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v1 := by
      rcases c3039 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a n3
    rcases c13 with a|a|a
    · exact absurd u11 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c3041 : ¬v31 ∨ v2 ∨ v4 ∨ v9 ∨ v11 ∨ v16 ∨ v17 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u8
    rcases c3037 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n6
    · exact absurd u12 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u9
  have c3042 : ¬v23 ∨ v5 ∨ v18 ∨ ¬v19 ∨ v22 ∨ ¬v24 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n0 a
    have u9 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n3 a
    have u10 : v6 := by
      rcases c3019 with a|a
      · exact a
      · exact absurd a n1
    have u11 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a n1
    have u12 : ¬v11 := by
      rcases c3022 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u13 : ¬v10 := by
      rcases c3028 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u14 : v32 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
    have u21 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u8
    have u22 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u20
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u9
    have u26 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
    have u27 : v7 := by
      rcases c553 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u25 a
      · exact absurd a u3
      · exact absurd a u22
      · exact a
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u24
    rcases c13 with a|a|a
    · exact absurd u25 a
    · exact absurd u27 a
    · exact absurd u10 a
  have c3043 : v16 ∨ v2 ∨ v5 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v9 := by
      rcases c3040 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    have u7 : ¬v10 := by
      rcases c3028 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n2
    have u9 : v6 := by
      rcases c3019 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a n2
    have u11 : v19 := by
      rcases c3038 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
    have u12 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v11 := by
      rcases c3022 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v31 := by
      rcases c3041 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n3
    have u16 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : v24 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u13
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v26 := by
      rcases c3034 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd u17 a
      · exact absurd a u15
    have u19 : ¬v22 := by
      rcases c1984 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd u17 a
      · exact absurd a u15
    have u20 : ¬v23 := by
      rcases c3042 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd a u19
      · exact absurd u17 a
      · exact absurd a u18
    have u21 : ¬v27 := by
      rcases c2994 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u20
      · exact a
      · exact absurd a u15
    have u22 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u22 a
    have u28 : ¬v41 := by
      rcases c3006 with a|a
      · exact absurd u22 a
      · exact a
    have u29 : v37 := by
      rcases c498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u22 a
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u24
      · exact a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u28
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u15
    have u30 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : v12 := by
      rcases c932 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u6
      · exact absurd a u14
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u25
    have u32 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u31 a
    have u33 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u31 a
      · exact a
    have u34 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u30
      · exact a
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u32
      · exact absurd a u12
    have u35 : v7 := by
      rcases c553 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u34 a
      · exact absurd a u3
      · exact absurd a u32
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u33
    rcases c13 with a|a|a
    · exact absurd u34 a
    · exact absurd u35 a
    · exact absurd u9 a
  have c3044 : v9 ∨ v10 ∨ ¬v16 ∨ v23 ∨ ¬v25 ∨ ¬v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u2 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    rcases c636 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u1
  have c3045 : v9 ∨ v5 ∨ v12 ∨ ¬v16 ∨ v18 ∨ v23 ∨ ¬v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v21 := by
      rcases c70 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd n3 a
      · exact a
    have u11 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd n3 a
      · exact a
    have u12 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n1
    have u13 : v6 := by
      rcases c3019 with a|a
      · exact a
      · exact absurd a n1
    have u14 : ¬v10 := by
      rcases c3028 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u15 : ¬v26 := by
      rcases c3044 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
    have u16 : ¬v31 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : v24 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n6 a
    have u19 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u17 a
    have u20 : v8 := by
      rcases c753 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a n5
    have u21 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v7 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n1
      · exact a
      · exact absurd u13 a
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u22
    have u24 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u13 a
    have u25 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u13 a
    rcases c333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a u24
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u25
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u22
  have c3046 : v26 ∨ v1 ∨ v5 ∨ v8 ∨ v10 ∨ v12 ∨ v17 ∨ v19 ∨ v23 ∨ ¬v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v31 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u9 : v33 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n2
    have u11 : v24 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n9 a
    have u16 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd u11 a
    have u17 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u17
    have u19 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n3
      · exact a
    have u20 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u19 a
    rcases c1560 with a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a n3
    · exact absurd u19 a
    · exact absurd a u16
    · exact absurd a n8
    · exact absurd a u15
  have c3047 : ¬v25 ∨ v5 ∨ ¬v16 ∨ v18 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n1
    have u9 : v6 := by
      rcases c3019 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a n1
    have u11 : ¬v10 := by
      rcases c3028 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u12 : ¬v21 := by
      rcases c70 with a|a
      · exact absurd n2 a
      · exact a
    have u13 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd n2 a
      · exact a
    have u14 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd n2 a
      · exact a
    have u15 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd n2 a
      · exact a
    have u16 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd n2 a
      · exact a
    have u17 : ¬v12 := by
      rcases c2074 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u16
    have u18 : v9 := by
      rcases c3045 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
    have u19 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v7 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd u9 a
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u19
    have u23 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u9 a
    have u24 : v26 := by
      rcases c3046 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd n0 a
    have u25 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd n0 a
    have u26 : v31 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u31 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u30
    have u32 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u31
      · exact absurd a u23
      · exact a
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u15
    have u33 : v28 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a n4
      · exact absurd u32 a
      · exact absurd a u29
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u28
    rcases c93 with a|a|a
    · exact absurd u32 a
    · exact absurd u33 a
    · exact absurd n0 a
  have c3048 : ¬v32 ∨ v5 ∨ v12 ∨ v17 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v10 := by
      rcases c3028 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u11 : v24 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v26 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c2008 with a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u11 a
    · exact absurd u12 a
    · exact absurd a u7
  have c3049 : ¬v16 ∨ v5 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a n1
    have u11 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n1
    have u12 : ¬v10 := by
      rcases c3028 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
    have u13 : ¬v11 := by
      rcases c2539 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
    have u14 : ¬v12 := by
      rcases c2074 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u15 : ¬v32 := by
      rcases c3048 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
    have u16 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u7
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : v23 := by
      rcases c3047 with a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u7
      · exact a
    have u18 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd u17 a
      · exact absurd u16 a
      · exact a
    have u19 : v31 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u19 a
    rcases c3037 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u6
    · exact absurd u16 a
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u22
  have c3050 : ¬v12 ∨ v5 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : v6 := by
      rcases c2988 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u14 : ¬v16 := by
      rcases c3049 with a|a
      · exact a
      · exact absurd a n1
    have u15 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a n1
    have u16 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u17 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
    have u18 : v18 := by
      rcases c3043 with a|a|a|a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n1
      · exact a
    have u19 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v1 := by
      rcases c384 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u11
    have u22 : v7 := by
      rcases c553 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u21 a
      · exact absurd a u3
      · exact absurd a u9
      · exact a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u11
    rcases c13 with a|a|a
    · exact absurd u21 a
    · exact absurd u22 a
    · exact absurd u13 a
  have c3051 : v23 ∨ v3 ∨ ¬v6 ∨ v15 ∨ v16 ∨ v22 ∨ v29 ∨ v30 ∨ v31 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v1 := by
      rcases c2898 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n2 a
    have u7 : ¬v5 := by
      rcases c11 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v9 := by
      rcases c3040 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
    rcases c2164 with a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3052 : ¬v18 ∨ v5 ∨ v10 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n0 a
      · exact a
    have u14 : v6 := by
      rcases c3019 with a|a
      · exact a
      · exact absurd a n1
    have u15 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n1
    have u16 : ¬v12 := by
      rcases c3050 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
    have u17 : ¬v31 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : v24 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u10
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : v33 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u20 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u23
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u26 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u24
    have u27 : ¬v22 := by
      rcases c2926 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd u18 a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u25
    have u28 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u19 a
    have u29 : v23 := by
      rcases c3051 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u14 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u26
    have u30 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u29 a
    have u31 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u18 a
    have u32 : v11 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u31
      · exact absurd a u10
      · exact absurd a n2
      · exact a
      · exact absurd a u13
    have u33 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a u31
      · exact absurd a n3
    have u34 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u32 a
    have u35 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u32 a
      · exact a
    have u36 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u26
      · exact a
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u34
      · exact absurd a u9
    have u37 : v7 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd u14 a
      · exact absurd a u35
      · exact absurd a u7
      · exact absurd a u33
    have u38 : ¬v41 := by
      rcases c2925 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n3
      · exact absurd a u30
      · exact absurd a u17
      · exact absurd u19 a
      · exact absurd a u28
    rcases c2376 with a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u36 a
    · exact absurd u37 a
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u30
    · exact absurd a u28
    · exact absurd a u38
    · exact absurd a u7
  have c3053 : v10 ∨ v5 ∨ v19 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v6 := by
      rcases c2988 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u8 : ¬v12 := by
      rcases c3050 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v16 := by
      rcases c3049 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n1
    have u11 : ¬v18 := by
      rcases c3052 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
    have u12 : v2 := by
      rcases c3043 with a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a u11
    have u13 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u7 a
    have u15 : v9 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u12 a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a u13
    have u16 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u15 a
      · exact a
    rcases c412 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd u7 a
    · exact absurd a u17
    · exact absurd a u6
    · exact absurd a u16
  have c3054 : ¬v19 ∨ v5 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n1
    have u10 : v2 := by
      rcases c3043 with a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a u8
    have u11 : ¬v10 := by
      rcases c3028 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
    have u12 : v6 := by
      rcases c3019 with a|a
      · exact a
      · exact absurd a n1
    have u13 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u12 a
    have u15 : v9 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u11
      · exact a
      · exact absurd a u13
    have u16 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u15 a
      · exact a
    rcases c412 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd u12 a
    · exact absurd a u18
    · exact absurd a u6
    · exact absurd a u16
  exact ⟨c3006, c3021, c3023, c3025, c3028, c3029, c3034, c3037, c3039, c3040, c3043, c3049, c3050, c3053, c3054⟩
