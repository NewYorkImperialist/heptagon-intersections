import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2100-2149 of the 2559-step refutation of ccase003: 114 core clauses and 85 earlier-derived ones give 18 more. -/
theorem CCase003_block042
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
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
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c102 : ¬v27 ∨ ¬v25 ∨ ¬v23)
    (c103 : ¬v23 ∨ ¬v28 ∨ ¬v25)
    (c120 : v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v24)
    (c122 : v22 ∨ v27 ∨ v26 ∨ v24 ∨ v28 ∨ v25)
    (c123 : v23 ∨ v27 ∨ v24 ∨ v28 ∨ v25 ∨ v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
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
    (c150 : ¬v41 ∨ ¬v36)
    (c155 : ¬v41 ∨ ¬v37)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c166 : ¬v41 ∨ ¬v42)
    (c171 : ¬v48 ∨ ¬v43)
    (c176 : ¬v48 ∨ ¬v44)
    (c180 : ¬v48 ∨ ¬v45)
    (c183 : ¬v46 ∨ ¬v48)
    (c185 : ¬v47 ∨ ¬v48)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c214 : ¬v31 ∨ v38 ∨ v24 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v25)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c251 : ¬v25 ∨ v18 ∨ v33 ∨ v26 ∨ v17 ∨ v19 ∨ v24 ∨ v32)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c270 : ¬v5 ∨ v6 ∨ v46 ∨ v4 ∨ v13 ∨ v11 ∨ v12 ∨ v47)
    (c299 : v29 ∨ v23 ∨ v35 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v16 ∨ v28)
    (c300 : ¬v48 ∨ v6 ∨ v40 ∨ v49 ∨ v7 ∨ v47 ∨ v5 ∨ v41)
    (c305 : v27 ∨ ¬v19 ∨ v11 ∨ v26 ∨ v13 ∨ v12 ∨ v18 ∨ v20)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c372 : v43 ∨ v49 ∨ ¬v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14)
    (c375 : v22 ∨ v16 ∨ v31 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v15 ∨ v30)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c401 : v10 ∨ ¬v11 ∨ v17 ∨ v47 ∨ v18 ∨ v45 ∨ v8 ∨ v4 ∨ v1 ∨ v9 ∨ v12 ∨ v5 ∨ v46 ∨ v15)
    (c414 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v9 ∨ v17 ∨ v8)
    (c446 : ¬v33 ∨ v40 ∨ v26 ∨ v34 ∨ v25 ∨ v41 ∨ v27 ∨ v32)
    (c450 : ¬v31 ∨ v38 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v39 ∨ v32)
    (c475 : v29 ∨ v15 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v22)
    (c481 : ¬v12 ∨ v19 ∨ v5 ∨ v18 ∨ v20 ∨ v4 ∨ v13 ∨ v11)
    (c488 : v36 ∨ ¬v35 ∨ v42 ∨ v15 ∨ v24 ∨ v28 ∨ v30 ∨ v29 ∨ v27 ∨ v31 ∨ v34 ∨ v20 ∨ v21 ∨ v38)
    (c496 : ¬v48 ∨ v41 ∨ v40 ∨ v38 ∨ v3 ∨ v7 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c501 : ¬v48 ∨ v6 ∨ v35 ∨ v37 ∨ v2 ∨ v7 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v43 ∨ v44 ∨ v47 ∨ v49)
    (c503 : ¬v48 ∨ v41 ∨ v40 ∨ v49 ∨ v5 ∨ v6 ∨ v47 ∨ v42)
    (c505 : v43 ∨ v6 ∨ v20 ∨ v10 ∨ v1 ∨ ¬v7 ∨ v3 ∨ v2 ∨ v15 ∨ v14 ∨ v21 ∨ v13 ∨ v45 ∨ v49)
    (c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c594 : v18 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c638 : ¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c648 : ¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c728 : v17 ∨ ¬v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v29 ∨ v30 ∨ v32 ∨ v33)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1224 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1279 : ¬v30 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1280 : ¬v21 ∨ v22 ∨ ¬v23 ∨ ¬v25)
    (c1281 : ¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1391 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1455 : v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1513 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v27 ∨ v29 ∨ v35)
    (c1515 : v11 ∨ ¬v1 ∨ v18 ∨ v25 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1518 : ¬v11 ∨ ¬v1 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1593 : ¬v29 ∨ ¬v23 ∨ v24 ∨ v26 ∨ ¬v27)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1662 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v15 ∨ v21)
    (c1674 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v49)
    (c1730 : ¬v19 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v35)
    (c1748 : v28 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35)
    (c1801 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1809 : ¬v1 ∨ ¬v4 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49)
    (c1921 : ¬v10 ∨ v3 ∨ v4 ∨ v16 ∨ v17 ∨ v18)
    (c1947 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1952 : ¬v30 ∨ v23 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38)
    (c1974 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2074 : ¬v12 ∨ v4 ∨ v5 ∨ v18 ∨ v19 ∨ v20)
    (c2125 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2165 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2170 : ¬v29 ∨ v15 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2193 : v9 ∨ v2 ∨ v8 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2218 : ¬v10 ∨ v2 ∨ v3 ∨ v16 ∨ v17 ∨ v18)
    (c2223 : ¬v41 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33)
    (c2230 : v28 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c2259 : ¬v1 ∨ ¬v3 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2307 : ¬v23 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c2312 : ¬v17 ∨ ¬v22 ∨ ¬v25 ∨ v30 ∨ v35)
    (c2314 : ¬v35 ∨ ¬v22 ∨ ¬v25)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2356 : v5 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v18)
    (c2452 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2470 : v3 ∨ v1 ∨ v8 ∨ v9 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2475 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c2494 : ¬v15 ∨ v1 ∨ v8 ∨ v9 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v43 ∨ v44 ∨ v49)
    (c2543 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v16 ∨ v17)
    (c2553 : v39 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2574 : ¬v37 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2595 : v48 ∨ v49)
    (c2608 : ¬v42 ∨ v22 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v43 ∨ v45 ∨ v49)
    (c2610 : ¬v1 ∨ ¬v19 ∨ v24 ∨ v31 ∨ v49)
    (c2655 : ¬v26 ∨ v49)
    (c2661 : ¬v32 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v49)
    (c2670 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47)
    (c2684 : ¬v5 ∨ ¬v3 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47)
    (c2685 : v22 ∨ v23 ∨ v24 ∨ v49)
    (c2687 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c2688 : ¬v5 ∨ ¬v3 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c2690 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39)
    (c2693 : ¬v29 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v39 ∨ v46 ∨ v47)
    (c2695 : ¬v40 ∨ v5 ∨ v6 ∨ v7 ∨ v49)
    (c2696 : ¬v25 ∨ v1 ∨ v8 ∨ v24 ∨ v31 ∨ ¬v33 ∨ v49)
    (c2699 : ¬v19 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c2700 : v10 ∨ ¬v3 ∨ v23 ∨ v24 ∨ v31 ∨ v49)
    (c2701 : v33 ∨ ¬v3 ∨ v19 ∨ v23 ∨ v24 ∨ v31 ∨ v49)
    : (¬v5 ∨ ¬v3 ∨ v49) ∧ (v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v31 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v45 ∨ v46 ∨ v47) ∧ (v28 ∨ ¬v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v31) ∧ (¬v5 ∨ v3 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v4 ∨ ¬v5 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v49) ∧ (v23 ∨ v24 ∨ v49) ∧ (v32 ∨ ¬v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v30 ∨ v31) ∧ (v10 ∨ ¬v5 ∨ v17 ∨ v24 ∨ v31 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v25 ∨ v24 ∨ v49) ∧ (¬v1 ∨ v5 ∨ v24 ∨ v49) ∧ (v22 ∨ v1 ∨ v8 ∨ v15 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v36 ∨ v43) ∧ (¬v35 ∨ v15 ∨ v20 ∨ v21 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v36 ∨ v38 ∨ v42) ∧ (v31 ∨ v5 ∨ ¬v19 ∨ v24 ∨ v49) ∧ (¬v19 ∨ v5 ∨ v24 ∨ v49) ∧ (v28 ∨ ¬v4 ∨ v5 ∨ v8 ∨ v10 ∨ v24 ∨ v27 ∨ ¬v31 ∨ v49) ∧ (¬v14 ∨ ¬v4 ∨ v5 ∨ v21 ∨ v49) ∧ (v12 ∨ v5 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v40 ∨ v47) := by
  have c2702 : v19 ∨ ¬v3 ∨ v23 ∨ v24 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v10 := by
      rcases c2700 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v22 := by
      rcases c2685 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u3 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n5
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v1 := by
      rcases c1974 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u15 : ¬v5 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v32 := by
      rcases c2661 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n5
    have u17 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u16
      · exact a
      · exact absurd a u9
      · exact absurd a u13
    have u18 : ¬v29 := by
      rcases c2693 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
    have u19 : v33 := by
      rcases c2701 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v34 := by
      rcases c142 with a|a
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
    have u23 : ¬v25 := by
      rcases c2696 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u19 a
      · exact absurd a n5
    have u24 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u13
    have u25 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u24 a
    have u26 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u24 a
      · exact absurd n1 a
      · exact a
    have u27 : ¬v40 := by
      rcases c2695 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a n5
    have u28 : v41 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a n5
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u15
      · exact a
    have u29 : v27 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a u23
      · exact absurd a u3
      · exact a
      · exact absurd u19 a
    have u30 : v28 := by
      rcases c2230 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd u29 a
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u21
    rcases c96 with a|a|a
    · exact absurd u2 a
    · exact absurd u30 a
    · exact absurd u29 a
  have c2703 : v31 ∨ ¬v3 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v22 := by
      rcases c2685 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v10 := by
      rcases c2700 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u4 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v19 := by
      rcases c2702 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u8 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v25 := by
      rcases c1493 with a|a|a|a
      · exact absurd u3 a
      · exact absurd u7 a
      · exact a
      · exact absurd a u2
    have u11 : v27 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
    rcases c92 with a|a|a
    · exact absurd u1 a
    · exact absurd u11 a
    · exact absurd u10 a
  have c2704 : ¬v5 ∨ ¬v3 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n2
    have u2 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v10 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u7 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u6 a
      · exact a
    rcases c2684 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u4
  have c2705 : ¬v3 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v5 := by
      rcases c2704 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
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
    have u9 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n3
    have u10 : v31 := by
      rcases c2703 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u17 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd a u8
    have u18 : v38 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
    have u19 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u7
    have u20 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v6 := by
      rcases c503 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u20
    have u23 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u22 a
    have u24 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u22 a
    have u25 : ¬v19 := by
      rcases c2699 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u5
    have u26 : v10 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u23
      · exact absurd a u24
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u27 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u19
    rcases c50 with a|a
    · exact absurd u26 a
    · exact absurd u27 a
  have c2706 : ¬v12 ∨ v3 ∨ v5 ∨ v19 ∨ ¬v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v4 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v20 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v6 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
    have u11 : v18 := by
      rcases c481 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u1
    have u12 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v29 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd n4 a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n9
    have u17 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u16 a
      · exact a
    rcases c2193 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c2707 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n3
  have c2708 : ¬v31 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v40 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u1
      · exact a
    have u5 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    rcases c2670 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
  have c2709 : v10 ∨ v3 ∨ ¬v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v35 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v17 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v25 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n4
      · exact a
    have u6 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd u5 a
      · exact absurd a n5
    have u7 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd u5 a
      · exact absurd a n5
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd n2 a
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u7
  have c2710 : v5 ∨ v19 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v49 := by
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
    have u3 : ¬v3 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u4 : v22 := by
      rcases c2685 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
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
    have u10 : ¬v27 := by
      rcases c92 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v35 := by
      rcases c2314 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n4 a
    have u12 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n4 a
    have u13 : ¬v12 := by
      rcases c2706 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v31 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
    have u15 : v10 := by
      rcases c2709 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
    have u16 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v32 := by
      rcases c2661 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n5
    have u19 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u18
      · exact a
      · exact absurd a u5
      · exact absurd a u9
    have u20 : ¬v29 := by
      rcases c2693 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u8
    have u21 : v30 := by
      rcases c1748 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u20
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u11
    have u22 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v40 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u23
      · exact a
    rcases c2670 with a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a u8
  have c2711 : v32 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v29 ∨ v31 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u2 : ¬v35 := by
      rcases c2314 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n5 a
    have u3 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u1 a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c2712 : v29 ∨ v2 ∨ v9 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v33 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v35 := by
      rcases c2314 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n7 a
    have u2 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n7 a
    have u3 : v32 := by
      rcases c2711 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v16 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u1
    rcases c60 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  have c2713 : v31 ∨ ¬v5 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v3 := by
      rcases c2704 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
    have u2 : v22 := by
      rcases c2685 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u3 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n5
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v27 := by
      rcases c92 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v35 := by
      rcases c2314 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n4 a
    have u7 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : v10 := by
      rcases c2709 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u13 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v1 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u18 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u7
    have u19 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u14
    have u20 : ¬v33 := by
      rcases c2696 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n5
    have u21 : v29 := by
      rcases c2712 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v18 := by
      rcases c1281 with a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u3
    have u24 : v16 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c67 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c2714 : ¬v25 ∨ v19 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v22 := by
      rcases c2685 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n4
    have u3 : ¬v35 := by
      rcases c2314 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
    have u5 : v5 := by
      rcases c2710 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
    have u6 : v31 := by
      rcases c2713 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v17 := by
      rcases c2312 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u3
    have u12 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u3
    have u13 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u12 a
      · exact a
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u10
  have c2715 : v28 ∨ ¬v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u5 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : v27 := by
      rcases c123 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u8 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n5
    have u9 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u8 a
      · exact a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u2
  have c2716 : ¬v10 ∨ v3 ∨ ¬v5 ∨ v16 ∨ v17 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v2 := by
      rcases c2218 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v4 := by
      rcases c1921 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c18 with a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd u2 a
  have c2717 : ¬v5 ∨ v3 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v10 := by
      rcases c2716 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v4 := by
      rcases c2553 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u4 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u5 : ¬v9 := by
      rcases c2543 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a u4
    · exact absurd a n8
  have c2718 : ¬v15 ∨ v3 ∨ v23 ∨ v25 ∨ ¬v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n5
    have u12 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u13 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u16
    have u19 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u20 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
    have u21 : ¬v5 := by
      rcases c2717 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u17
    have u22 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u20
    have u23 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : v4 := by
      rcases c2074 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    rcases c998 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u24 a
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u16
  have c2719 : v5 ∨ v19 ∨ v23 ∨ v24 ∨ ¬v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v25 := by
      rcases c2714 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u3 : ¬v3 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u4 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n5
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v12 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u4
    have u12 : v4 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    rcases c998 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u12 a
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u7
  have c2720 : ¬v4 ∨ ¬v5 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    rcases c501 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n8
  have c2721 : ¬v31 ∨ v19 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u5 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v25 := by
      rcases c2714 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v3 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n4
    have u10 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u5
      · exact a
      · exact absurd a u11
      · exact absurd a u15
    have u17 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u19 : v38 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u7
    have u20 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v15 := by
      rcases c2718 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a n4
    have u22 : v5 := by
      rcases c2719 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
    have u23 : ¬v4 := by
      rcases c2720 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n4
    have u24 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u15
    have u25 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u15
    have u26 : ¬v1 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
    have u27 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u27
    have u30 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u17
      · exact a
      · exact absurd a u27
      · exact absurd a u12
      · exact absurd a u29
      · exact absurd a u2
    have u31 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u28
      · exact a
      · exact absurd a n3
      · exact absurd a u7
    rcases c414 with a|a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u21
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u31
    · exact absurd a u24
  have c2722 : ¬v5 ∨ v19 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v3 := by
      rcases c2704 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
    have u2 : ¬v31 := by
      rcases c2721 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v25 := by
      rcases c2714 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n4
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
    have u12 : v10 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u6
    have u13 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v1 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
    have u20 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
    have u21 : v30 := by
      rcases c2470 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u22 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u24
      · exact a
      · exact absurd a u6
      · exact absurd a u10
    have u26 : v4 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
    have u27 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u9
    have u28 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u26 a
    have u29 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd n0 a
      · exact absurd u26 a
      · exact a
    have u30 : v41 := by
      rcases c496 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u27
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u31 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u30 a
      · exact a
    rcases c1952 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u11
  have c2723 : v19 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v3 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
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
    have u8 : ¬v31 := by
      rcases c2721 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u10 : ¬v25 := by
      rcases c2714 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : v10 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u4
    have u12 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v5 := by
      rcases c2722 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v4 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v32 := by
      rcases c2661 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n3
    have u18 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u17
      · exact a
      · exact absurd a u4
      · exact absurd a u7
    rcases c1455 with a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u7
  have c2724 : v25 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v22 := by
      rcases c2685 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v19 := by
      rcases c2723 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n3
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u5 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u3
    have u10 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u3
    have u11 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u3
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v3 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u18 : v31 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u16
    have u19 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v27 := by
      rcases c1513 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact a
      · exact absurd a u19
      · exact absurd a u21
    have u24 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u25 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u13
      · exact a
      · exact absurd a u20
    have u26 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u22
      · exact a
      · exact absurd a u12
      · exact absurd a u16
    have u27 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u16
    have u28 : v1 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u25 a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
      · exact a
    rcases c1674 with a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n3
  have c2725 : v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v22 := by
      rcases c2685 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v19 := by
      rcases c2723 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u4 : v25 := by
      rcases c2724 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u5 : ¬v35 := by
      rcases c2314 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
    have u6 : ¬v27 := by
      rcases c92 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u4 a
    rcases c1730 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u5
  have c2726 : ¬v19 ∨ ¬v23 ∨ v24 ∨ ¬v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
    have u7 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u5
  have c2727 : ¬v35 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
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
    have u6 : v25 := by
      rcases c122 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n5
      · exact a
    have u7 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
    have u8 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v23 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    rcases c120 with a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n2
  have c2728 : v32 ∨ ¬v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c102 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u2 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v28 := by
      rcases c103 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v35 := by
      rcases c2727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
    have u5 : v29 := by
      rcases c1748 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u4
    have u6 : v18 := by
      rcases c1281 with a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
    have u7 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u6 a
      · exact a
    rcases c375 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd n1 a
    · exact absurd a u8
    · exact absurd a n5
  have c2729 : ¬v10 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v32 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u6 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n8
    have u7 : v5 := by
      rcases c2661 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n8
    have u8 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n4
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v1 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u13 : v6 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd u9 a
      · exact absurd a u12
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
    rcases c33 with a|a|a
    · exact absurd u7 a
    · exact absurd u9 a
    · exact absurd u13 a
  have c2730 : v30 ∨ v24 ∨ ¬v25 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v23 := by
      rcases c2725 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v27 := by
      rcases c102 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u6 : v32 := by
      rcases c2728 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n3
    have u7 : ¬v28 := by
      rcases c103 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v19 := by
      rcases c2726 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
    have u9 : ¬v35 := by
      rcases c2727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u7
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n4
    have u17 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u18 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n3
    have u19 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n4
    have u20 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v10 := by
      rcases c2729 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a n4
    have u22 : v3 := by
      rcases c2307 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd n2 a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u10
    have u23 : ¬v5 := by
      rcases c2688 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u24 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n4
    have u25 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u14
      · exact a
      · exact absurd a u20
    have u26 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u25 a
      · exact a
    rcases c2661 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u23
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u8
    · exact absurd a n4
  have c2731 : ¬v12 ∨ v15 ∨ v17 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v31 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n10
    have u6 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n10
    have u7 : ¬v35 := by
      rcases c2727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : v1 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u13 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    rcases c1391 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd u12 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u11
  have c2732 : v10 ∨ ¬v5 ∨ v17 ∨ v24 ∨ v31 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c2688 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2733 : v31 ∨ v19 ∨ v22 ∨ v24 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n7
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n7
    have u3 : ¬v35 := by
      rcases c2727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
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
    have u7 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : v30 := by
      rcases c2730 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n7
    have u10 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v18 := by
      rcases c1279 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u1
    have u15 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n7
    have u16 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u7
    have u20 : ¬v12 := by
      rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n7
    have u21 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u19
    have u22 : v10 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u23 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : v1 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    rcases c1947 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd u24 a
    · exact absurd a u23
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n7
  have c2734 : ¬v10 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v31 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n7
    have u8 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n7
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v5 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n7
    have u16 : ¬v1 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u17 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u1
      · exact a
    rcases c2494 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u16
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n7
  have c2735 : ¬v1 ∨ ¬v5 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v4 := by
      rcases c8 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v8 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u11 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n6
    have u12 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u10 a
      · exact a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u8
  have c2736 : ¬v5 ∨ v10 ∨ v15 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v3 := by
      rcases c2704 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n11
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n11
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
    have u6 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n11
    have u7 : ¬v1 := by
      rcases c2735 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
    have u8 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n2
    have u9 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u7
    have u13 : v7 := by
      rcases c1662 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n6
    have u14 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd n0 a
      · exact absurd u13 a
      · exact a
    rcases c505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd u13 a
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a n11
  have c2737 : ¬v25 ∨ v24 ∨ v49 := by
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
    have u7 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v27 := by
      rcases c102 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u10 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v28 := by
      rcases c103 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v21 := by
      rcases c1280 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u3 a
      · exact absurd n0 a
    have u13 : ¬v19 := by
      rcases c2726 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u1
    have u14 : ¬v35 := by
      rcases c2727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u11
    have u15 : v31 := by
      rcases c2733 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n2
    have u16 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v17 := by
      rcases c728 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
    have u21 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n2
    have u22 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v10 := by
      rcases c2734 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a n2
    have u26 : ¬v5 := by
      rcases c2736 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n2
    have u27 : v12 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u26
      · exact a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
    have u28 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : v4 := by
      rcases c2074 with a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u24
    have u31 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u21
      · exact a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u28
      · exact absurd a u23
    rcases c1674 with a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd u31 a
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n2
  have c2738 : ¬v17 ∨ ¬v1 ∨ v5 ∨ v12 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v13 := by
      rcases c662 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u3
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
    have u9 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u12 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n5
    have u13 : v32 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
    rcases c2661 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n5
  have c2739 : v12 ∨ ¬v1 ∨ v5 ∨ v19 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n5
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
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
    have u9 : ¬v31 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n5
    have u11 : ¬v17 := by
      rcases c2738 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v10 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u13 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
    have u16 : ¬v32 := by
      rcases c2661 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n5
    rcases c1515 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd n1 a
    · exact absurd a u15
    · exact absurd a u1
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u7
  have c2740 : v19 ∨ ¬v1 ∨ v5 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
    have u7 : v12 := by
      rcases c2739 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v6 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd u7 a
      · exact absurd a n0
    rcases c2452 with a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd n1 a
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n4
  have c2741 : ¬v1 ∨ v5 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v19 := by
      rcases c2740 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n3
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u5 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u3
    have u6 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u3
    have u8 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u3
    have u9 : v31 := by
      rcases c2610 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v3 := by
      rcases c1974 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
    have u16 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
    have u17 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u9 a
      · exact a
    have u18 : v11 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
    have u19 : v12 := by
      rcases c2356 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd u18 a
      · exact a
      · exact absurd a u6
    rcases c53 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c2742 : ¬v11 ∨ v1 ∨ v4 ∨ v5 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v17 ∨ v18 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    rcases c401 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n12
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n7
  have c2743 : v4 ∨ v5 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v17 ∨ v18 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v1 := by
      rcases c2741 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n9
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
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
    have u9 : ¬v11 := by
      rcases c2742 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u10 : v32 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u13 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u14 : v39 := by
      rcases c2690 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u12
      · exact a
    have u15 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u16 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact a
    rcases c503 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a u17
  have c2744 : ¬v27 ∨ v1 ∨ v8 ∨ v15 ∨ ¬v23 ∨ v24 ∨ v26 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
  have c2745 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v29 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v28 := by
      rcases c122 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    rcases c2170 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd u2 a
  have c2746 : ¬v35 ∨ v15 ∨ v20 ∨ v21 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v36 ∨ v38 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
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
    rcases c488 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n0 a
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n9
  have c2747 : v31 ∨ v5 ∨ ¬v19 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v23 := by
      rcases c2725 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v1 := by
      rcases c2741 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n4
    have u10 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u11 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u9
    have u12 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u9
    have u13 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u9
    have u14 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u10 a
    have u18 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u10 a
    have u19 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
    have u20 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
    have u21 : v4 := by
      rcases c2743 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u22 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u21 a
    have u23 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u21 a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v14 := by
      rcases c638 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
    have u25 : ¬v40 := by
      rcases c2695 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n4
    have u26 : v41 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a n1
      · exact a
    have u27 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v27 := by
      rcases c2744 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u28
      · exact absurd a u16
    have u30 : v22 := by
      rcases c2745 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u16
    have u31 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd u6 a
    have u32 : v35 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u27
      · exact absurd a u31
    rcases c2746 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u29
    · exact absurd a u31
    · exact absurd a n0
    · exact absurd a u28
    · exact absurd a u20
    · exact absurd a u27
  have c2748 : ¬v19 ∨ v5 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v31 := by
      rcases c2747 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : v23 := by
      rcases c2725 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n3
    have u11 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u12 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u10
    have u17 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u11 a
      · exact a
    have u19 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u11 a
      · exact a
    have u20 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u11 a
    have u21 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u11 a
    have u22 : v22 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a u13
      · exact a
    have u23 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u20
    have u24 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u25 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u8 a
    have u26 : ¬v27 := by
      rcases c1513 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact a
      · exact absurd a u12
      · exact absurd a u14
    have u27 : v38 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u9
    have u28 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u26
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u21
    have u29 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u26
    have u30 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u29
      · exact a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u26
    have u31 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u27 a
    have u32 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u16
      · exact absurd a u29
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u20
    have u33 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u30 a
      · exact a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u32
    · exact absurd a u14
    · exact absurd a u33
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u31
    · exact absurd a u25
  have c2749 : v28 ∨ ¬v4 ∨ v5 ∨ v8 ∨ v10 ∨ v24 ∨ v27 ∨ ¬v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v25 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
    have u6 : ¬v19 := by
      rcases c2748 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
    have u7 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n8
    have u8 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n8
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v12 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a u13
    have u16 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u17 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : v38 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u5
    have u21 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
    have u22 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n0
    have u23 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u20 a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a n8
    · exact absurd a u23
    · exact absurd a n0
  have c2750 : ¬v14 ∨ ¬v4 ∨ v5 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
    have u12 : ¬v1 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u13 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
    rcases c2125 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a n3
  have c2751 : v12 ∨ v5 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n6
    have u2 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
    rcases c446 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u3
  exact ⟨c2704, c2707, c2708, c2715, c2717, c2720, c2725, c2728, c2732, c2737, c2741, c2745, c2746, c2747, c2748, c2749, c2750, c2751⟩
