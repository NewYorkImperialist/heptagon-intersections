import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2150-2199 of the 2559-step refutation of ccase003: 119 core clauses and 83 earlier-derived ones give 9 more. -/
theorem CCase003_block043
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v20)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c89 : ¬v22 ∨ ¬v27 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c122 : v22 ∨ v27 ∨ v26 ∨ v24 ∨ v28 ∨ v25)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c128 : ¬v29 ∨ ¬v34)
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
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c156 : ¬v42 ∨ ¬v37)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c171 : ¬v48 ∨ ¬v43)
    (c176 : ¬v48 ∨ ¬v44)
    (c180 : ¬v48 ∨ ¬v45)
    (c183 : ¬v46 ∨ ¬v48)
    (c185 : ¬v47 ∨ ¬v48)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c209 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v35 ∨ v20 ∨ v26)
    (c214 : ¬v31 ∨ v38 ∨ v24 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v25)
    (c227 : v43 ∨ ¬v42 ∨ v35 ∨ v14 ∨ v34 ∨ v33 ∨ v49 ∨ v41 ∨ v36 ∨ v40 ∨ v13 ∨ v8 ∨ v47 ∨ v7)
    (c233 : v43 ∨ ¬v36 ∨ v44 ∨ v42 ∨ v30 ∨ v37 ∨ v49 ∨ v29)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c261 : ¬v8 ∨ v14 ∨ v15 ∨ v2 ∨ v9 ∨ v16 ∨ v1 ∨ v7)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c270 : ¬v5 ∨ v6 ∨ v46 ∨ v4 ∨ v13 ∨ v11 ∨ v12 ∨ v47)
    (c300 : ¬v48 ∨ v6 ∨ v40 ∨ v49 ∨ v7 ∨ v47 ∨ v5 ∨ v41)
    (c312 : v23 ∨ v33 ∨ v25 ∨ v4 ∨ v31 ∨ v32 ∨ v17 ∨ v19 ∨ ¬v24 ∨ v10 ∨ v26 ∨ v16 ∨ v3 ∨ v2)
    (c372 : v43 ∨ v49 ∨ ¬v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14)
    (c381 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v17 ∨ v10 ∨ v11 ∨ v19)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c418 : ¬v12 ∨ v11 ∨ v6 ∨ v19 ∨ v20 ∨ v13 ∨ v18 ∨ v5)
    (c437 : v44 ∨ ¬v10 ∨ v2 ∨ v18 ∨ v9 ∨ v45 ∨ v46 ∨ v11 ∨ v13 ∨ v12 ∨ v3 ∨ v20 ∨ v6 ∨ v17)
    (c475 : v29 ∨ v15 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v22)
    (c488 : v36 ∨ ¬v35 ∨ v42 ∨ v15 ∨ v24 ∨ v28 ∨ v30 ∨ v29 ∨ v27 ∨ v31 ∨ v34 ∨ v20 ∨ v21 ∨ v38)
    (c496 : ¬v48 ∨ v41 ∨ v40 ∨ v38 ∨ v3 ∨ v7 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c505 : v43 ∨ v6 ∨ v20 ∨ v10 ∨ v1 ∨ ¬v7 ∨ v3 ∨ v2 ∨ v15 ∨ v14 ∨ v21 ∨ v13 ∨ v45 ∨ v49)
    (c514 : v44 ∨ ¬v17 ∨ v26 ∨ v24 ∨ v25 ∨ v10 ∨ v45 ∨ v46 ∨ v12 ∨ v19 ∨ v18 ∨ v3 ∨ v9 ∨ v16)
    (c516 : v15 ∨ v27 ∨ v25 ∨ v1 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v12 ∨ v18 ∨ v26)
    (c568 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c637 : ¬v11 ∨ v4 ∨ v5 ∨ v10 ∨ v17 ∨ v18 ∨ v19)
    (c638 : ¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c648 : ¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c746 : ¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1080 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1136 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1152 : v11 ∨ v4 ∨ v10 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1201 : ¬v24 ∨ v16 ∨ v17 ∨ v25 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32)
    (c1224 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1242 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1454 : ¬v14 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1455 : v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1462 : ¬v35 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1593 : ¬v29 ∨ ¬v23 ∨ v24 ∨ v26 ∨ ¬v27)
    (c1605 : v35 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v49)
    (c1772 : ¬v19 ∨ ¬v22 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v35)
    (c1801 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1947 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2039 : ¬v21 ∨ ¬v22 ∨ ¬v24)
    (c2074 : ¬v12 ∨ v4 ∨ v5 ∨ v18 ∨ v19 ∨ v20)
    (c2125 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c2155 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2165 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2170 : ¬v29 ∨ v15 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28)
    (c2218 : ¬v10 ∨ v2 ∨ v3 ∨ v16 ∨ v17 ∨ v18)
    (c2223 : ¬v41 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33)
    (c2257 : ¬v28 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v35)
    (c2276 : v24 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2356 : v5 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v18)
    (c2405 : v2 ∨ v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v23 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2412 : ¬v17 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34)
    (c2413 : v3 ∨ v10 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45)
    (c2466 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v30 ∨ v31 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c2475 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c2491 : ¬v35 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v25 ∨ v28 ∨ v43 ∨ v45 ∨ v49)
    (c2539 : ¬v11 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19)
    (c2574 : ¬v37 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2595 : v48 ∨ v49)
    (c2608 : ¬v42 ∨ v22 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v43 ∨ v45 ∨ v49)
    (c2655 : ¬v26 ∨ v49)
    (c2661 : ¬v32 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v49)
    (c2670 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47)
    (c2684 : ¬v5 ∨ ¬v3 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47)
    (c2687 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c2688 : ¬v5 ∨ ¬v3 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c2690 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39)
    (c2693 : ¬v29 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v39 ∨ v46 ∨ v47)
    (c2695 : ¬v40 ∨ v5 ∨ v6 ∨ v7 ∨ v49)
    (c2704 : ¬v5 ∨ ¬v3 ∨ v49)
    (c2707 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c2708 : ¬v31 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v45 ∨ v46 ∨ v47)
    (c2720 : ¬v4 ∨ ¬v5 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v49)
    (c2725 : v23 ∨ v24 ∨ v49)
    (c2732 : v10 ∨ ¬v5 ∨ v17 ∨ v24 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2737 : ¬v25 ∨ v24 ∨ v49)
    (c2741 : ¬v1 ∨ v5 ∨ v24 ∨ v49)
    (c2745 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v36 ∨ v43)
    (c2746 : ¬v35 ∨ v15 ∨ v20 ∨ v21 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v36 ∨ v38 ∨ v42)
    (c2747 : v31 ∨ v5 ∨ ¬v19 ∨ v24 ∨ v49)
    (c2748 : ¬v19 ∨ v5 ∨ v24 ∨ v49)
    (c2749 : v28 ∨ ¬v4 ∨ v5 ∨ v8 ∨ v10 ∨ v24 ∨ v27 ∨ ¬v31 ∨ v49)
    (c2750 : ¬v14 ∨ ¬v4 ∨ v5 ∨ v21 ∨ v49)
    (c2751 : v12 ∨ v5 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v40 ∨ v47)
    : (¬v27 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v23 ∨ v24 ∨ v26) ∧ (¬v31 ∨ ¬v23 ∨ v26 ∨ ¬v27) ∧ (¬v42 ∨ v3 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v14 ∨ v49) ∧ (v18 ∨ v1 ∨ ¬v5 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47) ∧ (v24 ∨ v49) ∧ (¬v30 ∨ v1 ∨ ¬v4 ∨ ¬v5 ∨ v8 ∨ v13 ∨ v15 ∨ v21 ∨ v49) ∧ (v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v30 ∨ v49) ∧ (v25 ∨ v1 ∨ ¬v5 ∨ ¬v18 ∨ v49) ∧ (v1 ∨ ¬v5 ∨ ¬v18 ∨ v49) := by
  have c2752 : v5 ∨ ¬v4 ∨ v8 ∨ v10 ∨ v11 ∨ v14 ∨ v15 ∨ v24 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v1 := by
      rcases c2741 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
    have u2 : ¬v19 := by
      rcases c2748 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
    have u3 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n9
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
    have u5 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v40 := by
      rcases c2695 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n9
    have u13 : v12 := by
      rcases c2751 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u7
    have u14 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v18 := by
      rcases c516 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd u13 a
      · exact a
      · exact absurd a u3
    have u16 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u15 a
      · exact a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u16
    · exact absurd u15 a
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u3
  have c2753 : ¬v4 ∨ v5 ∨ v8 ∨ v10 ∨ v15 ∨ v21 ∨ v24 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c2749 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
    have u2 : ¬v1 := by
      rcases c2741 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n9
    have u3 : ¬v19 := by
      rcases c2748 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n9
    have u4 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n9
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
    have u6 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
    have u13 : ¬v14 := by
      rcases c2750 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
    have u14 : v11 := by
      rcases c2752 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u15 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v40 := by
      rcases c2751 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n7
      · exact a
      · exact absurd a u10
    have u18 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v35 := by
      rcases c2746 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u20
    have u22 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u20
      · exact absurd a n8
    have u23 : v6 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd u22 a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u13
    rcases c32 with a|a|a
    · exact absurd n0 a
    · exact absurd u22 a
    · exact absurd u23 a
  have c2754 : v28 ∨ ¬v4 ∨ v5 ∨ v8 ∨ v10 ∨ v15 ∨ v24 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c2748 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n8
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n8
    have u4 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v31 := by
      rcases c2749 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u10 : v21 := by
      rcases c2753 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u11 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u15 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n1 a
    have u16 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v40 := by
      rcases c2695 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n8
    have u18 : v12 := by
      rcases c2751 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u7
    have u19 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u18 a
      · exact a
    rcases c418 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a n2
  have c2755 : ¬v4 ∨ v5 ∨ v8 ∨ v15 ∨ v24 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c2748 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n7
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v10 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u10 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v31 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u15 : v40 := by
      rcases c2751 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a u7
    have u16 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u20 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n0 a
    have u23 : ¬v35 := by
      rcases c2746 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a n7
    · exact absurd a u21
    · exact absurd a n6
  have c2756 : v12 ∨ v5 ∨ v8 ∨ v15 ∨ v24 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v4 := by
      rcases c2755 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v19 := by
      rcases c2748 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
    have u3 : ¬v1 := by
      rcases c2741 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
    have u4 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n7
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n7
    have u6 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v31 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
    have u13 : v40 := by
      rcases c2751 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n5
      · exact a
      · exact absurd a u10
    have u14 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
    have u15 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v32 := by
      rcases c2690 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u17
    have u19 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u11
    have u20 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u11
    have u21 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v35 := by
      rcases c2746 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
    have u26 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a n6
    have u27 : v6 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd u26 a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u19
    have u28 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u27 a
    have u29 : v17 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u28
      · exact absurd a u22
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
    have u30 : v18 := by
      rcases c2356 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u28
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd u20 a
      · exact absurd a n0
      · exact a
    rcases c71 with a|a
    · exact absurd u30 a
    · exact absurd u29 a
  have c2757 : ¬v22 ∨ v5 ∨ v8 ∨ v15 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v23 := by
      rcases c2725 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u10 : ¬v4 := by
      rcases c2755 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u11 : ¬v19 := by
      rcases c2748 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v12 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u13 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v20 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u11
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
    have u19 : ¬v18 := by
      rcases c746 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    rcases c2074 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u18
  have c2758 : v27 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v28 := by
      rcases c122 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a u3
    have u7 : v36 := by
      rcases c2745 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a u5
    have u8 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v29 := by
      rcases c2170 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd u6 a
    have u11 : v30 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u10
    have u12 : v35 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
    rcases c134 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c2759 : v15 ∨ v5 ∨ v8 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v23 := by
      rcases c2725 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v22 := by
      rcases c2757 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v1 := by
      rcases c2741 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v27 := by
      rcases c2758 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd u8 a
    have u10 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n0
    have u11 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v35 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
    have u14 : v30 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u9
    rcases c134 with a|a
    · exact absurd u13 a
    · exact absurd u14 a
  have c2760 : ¬v30 ∨ v20 ∨ v26 ∨ ¬v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u4 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n2
  have c2761 : ¬v27 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v23 ∨ v24 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n0 a
    have u4 : ¬v30 := by
      rcases c2760 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a u2
    have u5 : v15 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u1
    have u6 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v31 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact a
    have u8 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u7 a
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n6
  have c2762 : ¬v12 ∨ ¬v4 ∨ v5 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v31 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v6 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n2
    have u5 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c25 with a|a|a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c2763 : ¬v3 ∨ ¬v4 ∨ v5 ∨ ¬v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c2695 with a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n4
  have c2764 : ¬v4 ∨ v5 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v27 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c2747 with a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n8
    have u2 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
    have u3 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n8
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v12 := by
      rcases c2762 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u10 : v40 := by
      rcases c2751 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact a
      · exact absurd a u7
    have u11 : ¬v3 := by
      rcases c2763 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a n8
    have u12 : v10 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u13 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    rcases c49 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c2765 : v31 ∨ v5 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n7
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u9 : ¬v19 := by
      rcases c2747 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u10 : ¬v4 := by
      rcases c2764 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u11 : ¬v12 := by
      rcases c2074 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
    have u12 : v40 := by
      rcases c2751 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a u6
    have u13 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v32 := by
      rcases c2690 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u13
    have u15 : v11 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u10
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u15 a
    rcases c637 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u9
  have c2766 : v8 ∨ v5 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v23 := by
      rcases c2725 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v15 := by
      rcases c2759 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v27 := by
      rcases c2761 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a u1
    have u14 : v31 := by
      rcases c2765 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
    have u15 : v12 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u16 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v6 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n1
    have u19 : v4 := by
      rcases c2074 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u20 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u18 a
    rcases c998 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd u19 a
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
  have c2767 : v5 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v23 := by
      rcases c2725 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v8 := by
      rcases c2766 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v19 := by
      rcases c1491 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
    have u15 : ¬v31 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v32 := by
      rcases c2661 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n2
    have u17 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u16
      · exact a
      · exact absurd a u5
      · exact absurd a u7
    have u18 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u7
    have u19 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u20 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u21 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u18 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v29 := by
      rcases c2693 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u6
    have u23 : ¬v40 := by
      rcases c2763 with a|a|a|a|a
      · exact absurd u20 a
      · exact absurd u18 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
    have u24 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u14
      · exact a
      · exact absurd a u23
    have u25 : v41 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a n0
      · exact a
    have u26 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : v27 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd u24 a
    have u30 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u26
    have u31 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u3 a
    have u32 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u26
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a u28
      · exact absurd a u30
    rcases c918 with a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd a u31
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd a u27
    · exact absurd a u15
  have c2768 : v17 ∨ v18 ∨ v24 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v5 := by
      rcases c2767 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u3 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v3 := by
      rcases c2704 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
    have u8 : v10 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u9 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v1 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
    have u15 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u11
    have u16 : v4 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u7
      · exact a
      · exact absurd a u11
      · exact absurd u8 a
      · exact absurd a u12
    have u17 : v16 := by
      rcases c2218 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u15
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u18 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u2 a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u17 a
      · exact a
    rcases c437 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u8 a
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a n0
  have c2769 : v31 ∨ v18 ∨ v24 ∨ ¬v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v23 := by
      rcases c2725 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u4 : v5 := by
      rcases c2767 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n3 a
    have u10 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v3 := by
      rcases c2704 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n4
    have u13 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u14 : v17 := by
      rcases c2768 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
    have u15 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v30 := by
      rcases c2760 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a u11
    have u17 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : v10 := by
      rcases c2276 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a u10
      · exact absurd u3 a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u5
    have u19 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v1 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
    rcases c2466 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u22
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n4
  have c2770 : ¬v31 ∨ ¬v23 ∨ v26 ∨ ¬v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v17 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u5
    have u11 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n2
    have u12 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u11 a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd n1 a
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u6
  have c2771 : ¬v27 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v23 := by
      rcases c2725 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : ¬v31 := by
      rcases c2770 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd n0 a
    have u4 : v18 := by
      rcases c2769 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    have u5 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u4 a
    rcases c2761 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a u1
  have c2772 : ¬v18 ∨ ¬v5 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v10 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u3 a
      · exact a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2773 : v17 ∨ v24 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u2 : v5 := by
      rcases c2767 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u3 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n3
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u5 : ¬v3 := by
      rcases c2704 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v10 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u11 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v1 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
    have u17 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u13
    have u18 : v4 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u5
      · exact a
      · exact absurd a u13
      · exact absurd u10 a
      · exact absurd a u14
    have u19 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u2 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v18 := by
      rcases c2772 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u21 : v20 := by
      rcases c437 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u10 a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u5
      · exact a
      · exact absurd a u19
      · exact absurd a n0
    have u22 : v16 := by
      rcases c2218 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u17
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a u20
    rcases c69 with a|a
    · exact absurd u22 a
    · exact absurd u21 a
  have c2774 : ¬v42 ∨ v3 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v14 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    rcases c496 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n7
  have c2775 : ¬v4 ∨ v3 ∨ v8 ∨ v12 ∨ v14 ∨ v24 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u2 : v5 := by
      rcases c2767 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u3 : v17 := by
      rcases c2773 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n7
    have u5 : v23 := by
      rcases c2725 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u6 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u7 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u9 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v13 := by
      rcases c662 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a u1
    have u13 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v42 := by
      rcases c2774 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n7
    have u18 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
    have u19 : ¬v27 := by
      rcases c2771 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u20 : v22 := by
      rcases c2758 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u9
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u21 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u5 a
    have u22 : v35 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u21
    have u23 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u27 : ¬v36 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a n7
      · exact absurd a u25
    rcases c488 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd u22 a
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u19
    · exact absurd a n6
    · exact absurd a u24
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u18
  have c2776 : ¬v10 ∨ v24 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u7 : v5 := by
      rcases c2767 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u8 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u9 : v23 := by
      rcases c2725 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u10 : ¬v3 := by
      rcases c2704 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n3
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v17 := by
      rcases c2773 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v4 := by
      rcases c2775 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u19 : v32 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u20 : v6 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u13
    have u21 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u19 a
    have u26 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u20 a
    have u27 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a u22
    have u28 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a n3
    have u29 : v42 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n3
      · exact a
      · exact absurd a u27
    have u30 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u29 a
      · exact a
    rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u29 a
    · exact absurd a u22
    · exact absurd a u5
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a n3
    · exact absurd a u30
    · exact absurd a u28
    · exact absurd a u31
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a u26
  have c2777 : v12 ∨ v1 ∨ ¬v5 ∨ v10 ∨ ¬v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v13 := by
      rcases c662 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v9 := by
      rcases c514 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a u2
    have u7 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : v2 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
    have u9 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v4 := by
      rcases c18 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u9
    · exact absurd a n11
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n12
  have c2778 : v18 ∨ v1 ∨ ¬v5 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v12 := by
      rcases c2777 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    rcases c1080 with a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
  have c2779 : v31 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n2
    have u3 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : v5 := by
      rcases c2767 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v3 := by
      rcases c2704 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n2
    have u11 : ¬v10 := by
      rcases c2776 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u12 : v17 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
    have u13 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v1 := by
      rcases c2778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u4 a
    have u19 : ¬v4 := by
      rcases c8 with a|a|a
      · exact absurd u17 a
      · exact absurd u4 a
      · exact a
    have u20 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd u17 a
      · exact absurd u4 a
      · exact a
    have u21 : v8 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd u17 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
    have u22 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u23 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u21 a
      · exact a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u20
    · exact absurd a u9
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u8
  have c2780 : v18 ∨ v1 ∨ v3 ∨ v4 ∨ ¬v5 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v11 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v19 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n12
    have u5 : ¬v17 := by
      rcases c2778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c2539 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u4
  have c2781 : v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n1
    have u3 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u9 : v31 := by
      rcases c2779 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
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
    have u13 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n1
    have u17 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u18 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u7
    have u19 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
    have u20 : v5 := by
      rcases c2767 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u21 : v23 := by
      rcases c2725 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u22 : ¬v27 := by
      rcases c2770 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u21 a
      · exact absurd a u1
      · exact a
    have u23 : v38 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u8
    have u24 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v3 := by
      rcases c2704 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a n1
    have u26 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v4 := by
      rcases c2720 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u26
      · exact absurd a n1
    have u28 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u7
    have u29 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u7
    have u30 : ¬v1 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u29
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
    have u31 : ¬v19 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u7
    have u32 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u31
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u7
    have u33 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u32 a
      · exact a
    have u34 : v18 := by
      rcases c2780 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd u20 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
    have u35 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u34 a
    have u36 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u34 a
    have u37 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u30
      · exact a
      · exact absurd a u10
      · exact absurd a u29
      · exact absurd a u35
    have u38 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd u37 a
      · exact a
      · exact absurd u21 a
    have u39 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u28
      · exact absurd a u36
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u38
    have u40 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd u20 a
      · exact absurd u39 a
      · exact a
    rcases c372 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd u39 a
    · exact absurd a u30
    · exact absurd a u40
    · exact absurd a u29
    · exact absurd a u33
    · exact absurd a u28
  have c2782 : ¬v11 ∨ v1 ∨ v15 ∨ ¬v24 ∨ v29 ∨ v30 ∨ v35 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n2
    have u3 : ¬v21 := by
      rcases c2039 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n3 a
    have u4 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u2 a
    have u5 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n3 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd u2 a
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n5
  have c2783 : v4 ∨ v1 ∨ v3 ∨ v10 ∨ ¬v18 ∨ v25 ∨ ¬v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n4 a
      · exact a
    have u12 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n7
    have u13 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n7
    have u14 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n7
    have u15 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n4 a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u14
    have u16 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
    have u21 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a n7
    have u22 : ¬v11 := by
      rcases c2782 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd u12 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u17
    have u23 : v27 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u14
      · exact a
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
    have u24 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u23 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u24
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u14
  have c2784 : v10 ∨ v1 ∨ v3 ∨ v4 ∨ v11 ∨ ¬v18 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v31 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : v12 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u5
    have u7 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v27 := by
      rcases c746 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v23 := by
      rcases c99 with a|a|a
      · exact absurd u8 a
      · exact absurd n6 a
      · exact a
    have u12 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u10
    have u14 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u14 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a n8
  have c2785 : ¬v18 ∨ v1 ∨ v3 ∨ v4 ∨ ¬v5 ∨ v10 ∨ v25 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n8
    have u6 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n8
    have u7 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n8
    have u8 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u7
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v31 := by
      rcases c2783 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n6
      · exact a
      · exact absurd a n8
    have u15 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : v11 := by
      rcases c2784 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
    have u17 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u18
    have u21 : v23 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u1
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u22 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u21 a
      · exact absurd u5 a
      · exact a
    have u23 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u5 a
    have u24 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u21 a
    have u25 : v29 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u26 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n8
    have u29 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u28
      · exact absurd a u23
    have u30 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd n4 a
      · exact absurd u29 a
      · exact a
    rcases c372 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd u29 a
    · exact absurd a n1
    · exact absurd a u30
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a u19
  have c2786 : v1 ∨ v3 ∨ v4 ∨ ¬v5 ∨ v10 ∨ ¬v18 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n7
    have u7 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n7
    have u8 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n7
    have u9 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u8
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : v30 := by
      rcases c2785 with a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u16 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
    have u23 : ¬v27 := by
      rcases c2413 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u10
    have u24 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u21
      · exact a
      · exact absurd a u10
      · exact absurd a u14
    have u25 : v11 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
    have u26 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd a u27
    have u29 : v23 := by
      rcases c312 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u28
    have u30 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u29 a
      · exact absurd u6 a
      · exact a
    have u31 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u6 a
    have u32 : v42 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a u30
      · exact absurd a u17
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    rcases c2608 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd a u30
    · exact absurd a u23
    · exact absurd a u31
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a n7
  have c2787 : ¬v42 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v43 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n11
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n1
  have c2788 : ¬v30 ∨ v1 ∨ ¬v4 ∨ ¬v5 ∨ v8 ∨ v13 ∨ v15 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u8 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n8
    have u9 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n8
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
    have u16 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v14 := by
      rcases c2125 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
    have u18 : ¬v42 := by
      rcases c2787 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n8
    have u19 : v22 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u20 : v28 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u18
      · exact a
    rcases c90 with a|a|a
    · exact absurd u19 a
    · exact absurd u20 a
    · exact absurd u8 a
  have c2789 : ¬v28 ∨ v2 ∨ v9 ∨ v16 ∨ ¬v24 ∨ v30 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : v31 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v37 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n5
    have u4 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    rcases c2574 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2790 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u2 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u6 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u6 a
    rcases c233 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n0
  have c2791 : v22 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v18 ∨ v25 ∨ v28 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v14 := by
      rcases c638 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    have u7 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n8
    have u8 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n8
    have u9 : v29 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v27 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u13
    have u17 : v42 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n8
      · exact a
      · exact absurd a n6
    rcases c2608 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n8
  have c2792 : v10 ∨ v1 ∨ v3 ∨ ¬v5 ∨ ¬v18 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n6
    have u8 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u9 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n6
    have u10 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u9
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v4 := by
      rcases c2786 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u14 a
    have u16 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u14 a
    have u17 : ¬v9 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
    have u18 : ¬v14 := by
      rcases c638 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    have u19 : ¬v8 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u16
    have u20 : ¬v30 := by
      rcases c2788 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd n3 a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n6
    have u21 : ¬v28 := by
      rcases c2789 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd u7 a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u22 : v22 := by
      rcases c2791 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n6
    have u23 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u22 a
    have u24 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd u22 a
      · exact absurd a u23
      · exact absurd a u21
    have u25 : v29 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u22 a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u20
    have u26 : v31 := by
      rcases c2405 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u20
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    rcases c125 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c2793 : ¬v22 ∨ ¬v4 ∨ ¬v5 ∨ v13 ∨ v15 ∨ v16 ∨ v21 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n8
    have u4 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    have u6 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v27 := by
      rcases c89 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u6
    have u10 : ¬v19 := by
      rcases c1772 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u11 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u9
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u6
    have u12 : ¬v20 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u10
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u6
    rcases c638 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u12
    · exact absurd a n6
  have c2794 : v3 ∨ v1 ∨ ¬v5 ∨ ¬v18 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n5
    have u8 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u9 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n5
    have u10 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u9
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v10 := by
      rcases c2792 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u17
    have u21 : v4 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd u14 a
      · exact absurd a u18
    have u22 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u21 a
    have u23 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd n2 a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v30 := by
      rcases c2788 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u21 a
      · exact absurd n2 a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n5
    have u25 : ¬v42 := by
      rcases c2774 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a n5
    have u26 : ¬v22 := by
      rcases c2793 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u25
      · exact absurd a n5
    have u27 : v29 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a n5
    have u28 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u27 a
      · exact a
    have u32 : ¬v27 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd a u24
      · exact absurd a u28
      · exact absurd a u29
    have u33 : ¬v28 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u32
      · exact absurd a u30
      · exact absurd a u31
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u31
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u25
    · exact absurd a u33
  have c2795 : v25 ∨ v1 ∨ ¬v5 ∨ ¬v18 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u4
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : v3 := by
      rcases c2794 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
    have u11 : v10 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u10 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u12 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u11 a
      · exact a
    rcases c2684 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd u10 a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u8
  have c2796 : ¬v10 ∨ v1 ∨ ¬v5 ∨ v21 ∨ ¬v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n5
    have u6 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u7 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u5 a
    have u9 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u5 a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v35 := by
      rcases c2491 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd n4 a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u13 : v7 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n5
    have u14 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
    rcases c372 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd u13 a
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u4
  have c2797 : ¬v7 ∨ v1 ∨ v2 ∨ ¬v5 ∨ v10 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v4 := by
      rcases c31 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u10 : v14 := by
      rcases c505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n9
    have u11 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u10 a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u7
  have c2798 : v7 ∨ v1 ∨ v8 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c638 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n10
    have u3 : v42 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n10
      · exact a
      · exact absurd a n8
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v29 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    rcases c1177 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd u7 a
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a u6
  have c2799 : v7 ∨ v1 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v14 := by
      rcases c638 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v8 := by
      rcases c1136 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u3 : v35 := by
      rcases c2798 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
    have u4 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u3 a
    rcases c2790 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n9
  have c2800 : v30 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v29 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
    have u3 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    rcases c2164 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c2801 : v1 ∨ ¬v5 ∨ ¬v18 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v25 := by
      rcases c2795 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
    have u6 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n3
    have u7 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u8 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u9 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u10 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : v7 := by
      rcases c2799 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n3
    have u17 : ¬v2 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    have u18 : ¬v4 := by
      rcases c31 with a|a|a
      · exact absurd u16 a
      · exact absurd n1 a
      · exact a
    have u19 : ¬v10 := by
      rcases c2796 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd u5 a
      · exact absurd a n3
    have u20 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
    have u21 : ¬v9 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u1
    have u22 : v13 := by
      rcases c2797 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd n1 a
      · exact absurd a u19
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
    have u23 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : v30 := by
      rcases c2800 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
    have u25 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : v42 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u26
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n3
    rcases c2608 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u25
    · exact absurd a u28
    · exact absurd a u26
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n3
  exact ⟨c2761, c2770, c2774, c2778, c2781, c2788, c2790, c2795, c2801⟩
