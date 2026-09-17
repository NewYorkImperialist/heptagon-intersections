import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1700-1749 of the 2559-step refutation of ccase003: 114 core clauses and 79 earlier-derived ones give 20 more. -/
theorem CCase003_block034
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
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
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v14)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
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
    (c80 : ¬v20 ∨ ¬v21)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c123 : v23 ∨ v27 ∨ v24 ∨ v28 ∨ v25 ∨ v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c127 : ¬v29 ∨ ¬v33)
    (c129 : ¬v29 ∨ ¬v35)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c146 : ¬v37 ∨ ¬v36)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c170 : ¬v47 ∨ ¬v43)
    (c175 : ¬v47 ∨ ¬v44)
    (c179 : ¬v47 ∨ ¬v45)
    (c182 : ¬v47 ∨ ¬v46)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c199 : v43 ∨ v49 ∨ ¬v7 ∨ v48 ∨ v1 ∨ v13 ∨ v6 ∨ v14)
    (c218 : v43 ∨ ¬v36 ∨ v44 ∨ v42 ∨ v35 ∨ v37 ∨ v30 ∨ v29)
    (c243 : v1 ∨ v6 ∨ v49 ∨ v48 ∨ v13 ∨ ¬v7 ∨ v14 ∨ v8)
    (c261 : ¬v8 ∨ v14 ∨ v15 ∨ v2 ∨ v9 ∨ v16 ∨ v1 ∨ v7)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c280 : v14 ∨ v49 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v48 ∨ v13)
    (c299 : v29 ∨ v23 ∨ v35 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v16 ∨ v28)
    (c360 : ¬v47 ∨ v40 ∨ v4 ∨ v6 ∨ v5 ∨ v39 ∨ v46 ∨ v48)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c407 : ¬v39 ∨ v32 ∨ v40 ∨ v45 ∨ v33 ∨ v46 ∨ v38 ∨ v31)
    (c422 : ¬v47 ∨ v40 ∨ v5 ∨ v33 ∨ v36 ∨ v32 ∨ v6 ∨ v43 ∨ v46 ∨ v34 ∨ v39 ∨ v1 ∨ v48 ∨ v49)
    (c446 : ¬v33 ∨ v40 ∨ v26 ∨ v34 ∨ v25 ∨ v41 ∨ v27 ∨ v32)
    (c452 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v16 ∨ v2 ∨ v21 ∨ v1)
    (c463 : ¬v25 ∨ v24 ∨ v26 ∨ v18 ∨ v31 ∨ v32 ∨ v19 ∨ v17)
    (c470 : ¬v4 ∨ v3 ∨ v45 ∨ v46 ∨ v10 ∨ v11 ∨ v12 ∨ v5)
    (c484 : ¬v47 ∨ v40 ∨ v5 ∨ v46 ∨ v39 ∨ v4 ∨ v41 ∨ v48)
    (c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c600 : ¬v25 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ ¬v21 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c637 : ¬v11 ∨ v4 ∨ v5 ∨ v10 ∨ v17 ∨ v18 ∨ v19)
    (c638 : ¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c648 : ¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c671 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v27)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c771 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v26 ∨ v30 ∨ v31)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c869 : ¬v25 ∨ v15 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c986 : v31 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1050 : ¬v25 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c1165 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1279 : ¬v30 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1281 : ¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1379 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1382 : v14 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1455 : v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1465 : ¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1501 : ¬v11 ∨ v17 ∨ v18 ∨ v21 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1503 : v28 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1518 : ¬v11 ∨ ¬v1 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1560 : v16 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1583 : v15 ∨ v7 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c1601 : ¬v25 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1644 : v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1674 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v49)
    (c1679 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1747 : ¬v15 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32)
    (c1748 : v28 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35)
    (c1772 : ¬v19 ∨ ¬v22 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v35)
    (c1852 : ¬v37 ∨ ¬v22 ∨ ¬v26 ∨ v28 ∨ v29 ∨ v35 ∨ v43 ∨ v44)
    (c1921 : ¬v10 ∨ v3 ∨ v4 ∨ v16 ∨ v17 ∨ v18)
    (c1927 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c1934 : ¬v19 ∨ v3 ∨ v4 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1947 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1952 : ¬v30 ∨ v23 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38)
    (c1974 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2039 : ¬v21 ∨ ¬v22 ∨ ¬v24)
    (c2155 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2158 : v28 ∨ v47 ∨ v48 ∨ v49)
    (c2160 : ¬v33 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2198 : v15 ∨ v47 ∨ v48 ∨ v49)
    (c2203 : v32 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v35 ∨ v36 ∨ ¬v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c2218 : ¬v10 ∨ v2 ∨ v3 ∨ v16 ∨ v17 ∨ v18)
    (c2221 : ¬v42 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2222 : v47 ∨ v48 ∨ v49)
    (c2224 : ¬v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2234 : v20 ∨ ¬v3 ∨ v10 ∨ v19 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c2240 : v4 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v10 ∨ v14 ∨ v15 ∨ v16 ∨ v18 ∨ v43 ∨ v44 ∨ v49)
    (c2249 : v28 ∨ v1 ∨ ¬v3 ∨ v21 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2259 : ¬v1 ∨ ¬v3 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2266 : v15 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v9 ∨ v10 ∨ v14 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v35)
    (c2272 : v1 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49)
    (c2276 : v24 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c2277 : ¬v4 ∨ ¬v1 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c2284 : ¬v6 ∨ ¬v1 ∨ v5 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2286 : v25 ∨ ¬v33 ∨ v48 ∨ v49)
    : (¬v41 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48) ∧ (v4 ∨ v3 ∨ ¬v10 ∨ ¬v20) ∧ (v15 ∨ v1 ∨ v8 ∨ ¬v25 ∨ ¬v33 ∨ v43 ∨ v49) ∧ (¬v15 ∨ v1 ∨ ¬v3 ∨ ¬v25 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49) ∧ (v28 ∨ v1 ∨ ¬v3 ∨ ¬v8 ∨ v10 ∨ v15 ∨ v35 ∨ v42 ∨ v48 ∨ v49) ∧ (v1 ∨ ¬v33 ∨ v48 ∨ v49) ∧ (¬v28 ∨ v3 ∨ v10 ∨ ¬v25 ∨ v29 ∨ v31 ∨ v35 ∨ v38 ∨ v45) ∧ (v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v23 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45) ∧ (v22 ∨ ¬v1 ∨ v8 ∨ v10 ∨ v15 ∨ v23 ∨ ¬v25 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v33 ∨ v48 ∨ v49) ∧ (¬v17 ∨ ¬v22 ∨ ¬v25 ∨ v30 ∨ v35) ∧ (¬v35 ∨ ¬v22 ∨ ¬v25) ∧ (¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v22 ∨ ¬v25 ∨ v31 ∨ v48 ∨ v49) ∧ (v28 ∨ ¬v22 ∨ v23 ∨ ¬v30 ∨ v31 ∨ v48 ∨ v49) ∧ (¬v4 ∨ v1 ∨ ¬v3 ∨ v32 ∨ v34 ∨ v36 ∨ v39 ∨ v40 ∨ v48 ∨ v49) ∧ (v24 ∨ v17 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v36 ∨ v38 ∨ v40 ∨ v41 ∨ v48 ∨ v49) ∧ (¬v17 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49) ∧ (¬v10 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49) := by
  have c2287 : ¬v41 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd n4 a
      · exact a
    rcases c360 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n5
  have c2288 : v4 ∨ v3 ∨ ¬v10 ∨ ¬v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd n3 a
      · exact a
    rcases c1921 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c2290 : ¬v27 ∨ v3 ∨ v4 ∨ ¬v25 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v43 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u2 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u3 : ¬v26 := by
      rcases c113 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v19 := by
      rcases c1934 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
    have u5 : v32 := by
      rcases c1601 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
    have u8 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v10 := by
      rcases c2288 with a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd u7 a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n4
    · exact absurd a u8
  have c2291 : ¬v1 ∨ v3 ∨ ¬v10 ∨ ¬v25 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
    have u11 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
    have u12 : ¬v6 := by
      rcases c2284 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v20 := by
      rcases c2288 with a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
    have u14 : ¬v41 := by
      rcases c2287 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd u6 a
      · exact absurd a n8
    have u15 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u4
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n5
    rcases c2290 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n8
    · exact absurd a n9
  have c2292 : v15 ∨ v1 ∨ v8 ∨ ¬v25 ∨ ¬v33 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v22 := by
      rcases c2160 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v27 := by
      rcases c92 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v26 := by
      rcases c91 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    rcases c1748 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd n3 a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u4
  have c2293 : v3 ∨ ¬v10 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : v25 := by
      rcases c2286 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
    have u14 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
    have u15 : ¬v1 := by
      rcases c2291 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v15 := by
      rcases c2292 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd u8 a
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a n4
    have u17 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u2
    have u18 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u16 a
      · exact a
    rcases c2218 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u20
  have c2294 : ¬v15 ∨ v1 ∨ ¬v3 ∨ ¬v25 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v28 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u3 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u1
  have c2295 : v28 ∨ v1 ∨ ¬v3 ∨ ¬v8 ∨ v10 ∨ v15 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v21 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v6 := by
      rcases c2224 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v7 := by
      rcases c199 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n9
      · exact a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u3
    have u13 : v2 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u12
    have u14 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact a
    rcases c2240 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n9
  have c2296 : ¬v3 ∨ v1 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v25 := by
      rcases c2286 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v15 := by
      rcases c2294 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u11 : v8 := by
      rcases c2292 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a n4
    have u12 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : v28 := by
      rcases c2295 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u6 a
    have u15 : ¬v26 := by
      rcases c114 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u6 a
    rcases c1050 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd u13 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u4
  have c2297 : v15 ∨ v1 ∨ v3 ∨ v10 ∨ ¬v25 ∨ ¬v33 ∨ v37 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v8 := by
      rcases c2292 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n10
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n1
    have u11 : ¬v21 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v22 := by
      rcases c2266 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u13 : v16 := by
      rcases c452 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n1
    have u14 : ¬v26 := by
      rcases c91 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n4 a
    have u15 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd u12 a
      · exact absurd n4 a
      · exact a
    have u16 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u13 a
      · exact a
    rcases c463 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u18
    · exact absurd a u16
  have c2298 : v1 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v25 := by
      rcases c2272 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u13 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u3
    have u14 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u10
    have u15 : ¬v3 := by
      rcases c2296 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v10 := by
      rcases c2293 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u17 : v15 := by
      rcases c2297 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n3
    have u18 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u19
    have u21 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u20 a
    have u22 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u1 a
    have u23 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u20 a
    have u24 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u9
    have u25 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a u8
      · exact a
      · exact absurd a u5
    rcases c361 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u26 a
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd a n0
  have c2299 : ¬v15 ∨ ¬v1 ∨ v3 ∨ v10 ∨ ¬v25 ∨ ¬v33 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u2
    have u10 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u9 a
    have u11 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n4 a
    have u12 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n4 a
    have u13 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u9 a
    have u14 : v8 := by
      rcases c1560 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
    have u15 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n10
    have u18 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a n8
      · exact a
      · exact absurd a u5
    rcases c5 with a|a|a
    · exact absurd n1 a
    · exact absurd u18 a
    · exact absurd u17 a
  have c2301 : v7 ∨ v9 ∨ v13 ∨ v14 ∨ v22 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n5
    have u2 : v27 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v23 := by
      rcases c1583 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v24 := by
      rcases c918 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd u7 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    rcases c99 with a|a|a
    · exact absurd u2 a
    · exact absurd u8 a
    · exact absurd u7 a
  have c2302 : ¬v7 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v25 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v41 := by
      rcases c2287 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd u5 a
      · exact absurd a n11
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v27 := by
      rcases c2290 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n6
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a n11
    · exact absurd a n8
  have c2303 : v28 ∨ ¬v1 ∨ v9 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v7 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v22 := by
      rcases c2301 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v23 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    rcases c83 with a|a|a
    · exact absurd u3 a
    · exact absurd n7 a
    · exact absurd u2 a
  have c2304 : ¬v8 ∨ ¬v1 ∨ v15 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n12
    have u12 : v28 := by
      rcases c2303 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n2
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
    have u13 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n3 a
    have u14 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n3 a
    have u15 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n3 a
    have u16 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n6
      · exact a
    rcases c1214 with a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd u12 a
    · exact absurd a n4
    · exact absurd a n8
  have c2305 : ¬v28 ∨ v3 ∨ v10 ∨ ¬v25 ∨ v29 ∨ v31 ∨ v35 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u2 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u4 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n5
      · exact a
    rcases c1214 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n6
  have c2306 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v16 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c753 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
  have c2307 : ¬v23 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v24 := by
      rcases c2276 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c97 with a|a|a
    · exact absurd n0 a
    · exact absurd n4 a
    · exact absurd u1 a
  have c2308 : v9 ∨ ¬v1 ∨ v8 ∨ v10 ∨ v22 ∨ v23 ∨ ¬v25 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v3 := by
      rcases c1974 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n15
    have u7 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n15
    have u8 : v2 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u9 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n15
    have u10 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v6 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
    have u12 : ¬v41 := by
      rcases c2287 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd u2 a
      · exact absurd a n14
    have u13 : ¬v27 := by
      rcases c2290 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n15
    have u14 : v14 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
    have u15 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact a
      · exact absurd a n14
      · exact absurd a n10
    have u17 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : v26 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd u16 a
      · exact absurd a u19
      · exact a
      · exact absurd a u13
      · exact absurd a n7
    have u22 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n12
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u17
    rcases c771 with a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd u21 a
    · exact absurd a n8
    · exact absurd a n9
  have c2309 : v22 ∨ ¬v1 ∨ v8 ∨ v10 ∨ v15 ∨ v23 ∨ ¬v25 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v3 := by
      rcases c1974 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n15
    have u7 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n15
    have u8 : v9 := by
      rcases c2308 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v4 := by
      rcases c470 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u7
    have u14 : ¬v6 := by
      rcases c2284 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n14
      · exact absurd a n15
    have u15 : ¬v41 := by
      rcases c2287 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n14
    have u16 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n7
    have u17 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
    rcases c2302 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd n1 a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd n6 a
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
  have c2310 : v22 ∨ ¬v1 ∨ v8 ∨ v10 ∨ v15 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n14
    have u7 : ¬v23 := by
      rcases c2307 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u5
    have u8 : ¬v28 := by
      rcases c2305 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u5
    rcases c2309 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd n5 a
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c2311 : ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v1 := by
      rcases c2298 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
    have u14 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u15 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
    have u16 : v25 := by
      rcases c2286 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v10 := by
      rcases c2293 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u18 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u12
    have u19 : ¬v28 := by
      rcases c2305 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u12
    have u20 : ¬v15 := by
      rcases c2299 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n2
    have u21 : ¬v8 := by
      rcases c2304 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u20
      · exact absurd u16 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
    have u22 : v22 := by
      rcases c2310 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd u16 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
    have u23 : v23 := by
      rcases c1465 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u20
      · exact absurd u22 a
      · exact a
      · exact absurd a u19
    rcases c83 with a|a|a
    · exact absurd u23 a
    · exact absurd u16 a
    · exact absurd u22 a
  have c2312 : ¬v17 ∨ ¬v22 ∨ ¬v25 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u5 : ¬v26 := by
      rcases c91 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u5
    rcases c847 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n4
  have c2313 : ¬v25 ∨ v10 ∨ ¬v22 ∨ v30 ∨ v31 ∨ v35 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v26 := by
      rcases c91 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v17 := by
      rcases c2312 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n5
    have u6 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u5
    have u13 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u14 : v21 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd u12 a
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v29 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    rcases c1281 with a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u16
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u3
  have c2314 : ¬v35 ∨ ¬v22 ∨ ¬v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u6 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v26 := by
      rcases c91 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v15 := by
      rcases c1747 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u5
    rcases c869 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
  have c2315 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    rcases c986 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2316 : v29 ∨ ¬v22 ∨ ¬v25 ∨ v30 ∨ v31 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v27 := by
      rcases c92 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v26 := by
      rcases c91 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v35 := by
      rcases c2314 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u6 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u7 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u5
    have u9 : v32 := by
      rcases c1748 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u5
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u18 : ¬v38 := by
      rcases c2315 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u19 : v10 := by
      rcases c2313 with a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v2 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u24 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u6
    have u25 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd u23 a
    · exact absurd a u25
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u26
    · exact absurd a u20
    · exact absurd a u21
  have c2317 : v30 ∨ ¬v22 ∨ ¬v25 ∨ v31 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v26 := by
      rcases c91 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v35 := by
      rcases c2314 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u13 : ¬v38 := by
      rcases c2315 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u14 : v29 := by
      rcases c2316 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v18 := by
      rcases c1281 with a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a u3
    have u16 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v10 := by
      rcases c2313 with a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
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
    have u22 : v2 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u23 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u5
    have u24 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u23 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u22 a
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u25
    · exact absurd a u19
    · exact absurd a u20
  have c2318 : ¬v22 ∨ ¬v25 ∨ v31 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v26 := by
      rcases c91 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v35 := by
      rcases c2314 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u5 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u6 : v30 := by
      rcases c2317 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v18 := by
      rcases c1279 with a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u3
    have u9 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u8 a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u5
  have c2319 : ¬v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v33 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u6 : ¬v38 := by
      rcases c2203 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v37 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u5
      · exact a
      · exact absurd a u6
    have u8 : ¬v26 := by
      rcases c1852 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v27 := by
      rcases c123 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u8
    have u10 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u9 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u1
    have u11 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u8
    have u12 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u11 a
      · exact a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n4
  have c2320 : ¬v37 ∨ v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v11 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
    have u11 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u9
    have u12 : ¬v1 := by
      rcases c2277 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n13
    have u13 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd u11 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v5 := by
      rcases c31 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u11 a
    rcases c422 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a n12
    · exact absurd a n13
  have c2321 : ¬v7 ∨ v1 ∨ v8 ∨ ¬v10 ∨ v17 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v6 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a n2
    have u7 : ¬v3 := by
      rcases c2224 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u6 a
    have u9 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u6 a
    rcases c2155 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd n3 a
    · exact absurd a u3
  have c2322 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    rcases c407 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n1
  have c2323 : v39 ∨ v1 ∨ ¬v7 ∨ v10 ∨ v14 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u5 a
    have u7 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u5 a
    have u8 : ¬v11 := by
      rcases c637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a n0
  have c2324 : v1 ∨ ¬v7 ∨ v8 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v3 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v10 := by
      rcases c2321 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v14 := by
      rcases c2323 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n11
    have u12 : v5 := by
      rcases c470 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact a
    rcases c31 with a|a|a
    · exact absurd n1 a
    · exact absurd u12 a
    · exact absurd u11 a
  have c2325 : ¬v7 ∨ v1 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v8 := by
      rcases c2324 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
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
    have u6 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n10
    have u9 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
    rcases c32 with a|a|a
    · exact absurd u8 a
    · exact absurd n0 a
    · exact absurd u9 a
  have c2326 : v1 ∨ v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v7 := by
      rcases c2325 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v14 := by
      rcases c638 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n14
    · exact absurd a n12
    · exact absurd a n8
  have c2327 : v21 ∨ v15 ∨ v19 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v16 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n5
    have u2 : ¬v33 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v37 := by
      rcases c2320 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v38 := by
      rcases c2315 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v39 := by
      rcases c2322 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
    have u16 : v1 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n12
    have u18 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u15
    have u19 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u18 a
    have u21 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u16 a
      · exact absurd a u19
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n12
    have u22 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u12
      · exact absurd a n5
    rcases c43 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c2328 : v28 ∨ ¬v22 ∨ v23 ∨ ¬v30 ∨ v31 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u12 : v24 := by
      rcases c2319 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n6
    have u13 : ¬v21 := by
      rcases c2039 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u12 a
    have u14 : ¬v19 := by
      rcases c1772 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
    have u15 : v15 := by
      rcases c2327 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u15 a
      · exact a
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd u12 a
    · exact absurd a u2
  have c2329 : v7 ∨ ¬v4 ∨ ¬v10 ∨ v14 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
    have u4 : v5 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u2
    rcases c30 with a|a|a
    · exact absurd u4 a
    · exact absurd n1 a
    · exact absurd u3 a
  have c2330 : v24 ∨ v10 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v31 ∨ v34 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v3 := by
      rcases c2234 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n7
    · exact absurd a n2
  have c2331 : v48 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n14
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n14
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v10 := by
      rcases c2330 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
    have u7 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n11
    have u11 : ¬v39 := by
      rcases c2322 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u4
    have u12 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a u11
    have u13 : v7 := by
      rcases c2329 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
    rcases c32 with a|a|a
    · exact absurd u12 a
    · exact absurd u13 a
    · exact absurd u10 a
  have c2332 : ¬v10 ∨ v19 ∨ ¬v20 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    rcases c671 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
  have c2333 : ¬v4 ∨ v1 ∨ ¬v3 ∨ v32 ∨ v34 ∨ v36 ∨ v39 ∨ v40 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    rcases c422 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n9
  have c2334 : v40 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v36 ∨ v38 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v33 := by
      rcases c446 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n10
    have u8 : v20 := by
      rcases c2331 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u9 : ¬v10 := by
      rcases c2332 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u8 a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
    have u11 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n17
    have u12 : ¬v4 := by
      rcases c2333 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
    have u13 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u14 : v5 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n15
      · exact absurd a n16
    rcases c15 with a|a|a
    · exact absurd u10 a
    · exact absurd u13 a
    · exact absurd u14 a
  have c2335 : v49 ∨ v17 ∨ v18 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v36 ∨ v38 ∨ v40 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v33 := by
      rcases c446 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n0
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n9
    have u8 : v19 := by
      rcases c2334 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd a n2
      · exact a
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
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
    have u9 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u5
    have u12 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
    have u14 : v1 := by
      rcases c2333 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u13 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n0
    rcases c1674 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd u14 a
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n0
  have c2336 : v24 ∨ v17 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v36 ∨ v38 ∨ v40 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v18 := by
      rcases c2335 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
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
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u4
    rcases c2234 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u10 a
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n13
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n14
  have c2337 : ¬v17 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v10 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v13 := by
      rcases c662 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v26 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
    have u8 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n6
    have u11 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u11
    have u13 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u10 a
    rcases c2329 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd u12 a
    · exact absurd u3 a
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2338 : ¬v10 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n6
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
    have u8 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u5 a
    rcases c2329 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u7 a
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  exact ⟨c2287, c2288, c2292, c2294, c2295, c2298, c2305, c2306, c2307, c2309, c2311, c2312, c2314, c2315, c2318, c2328, c2333, c2336, c2337, c2338⟩
