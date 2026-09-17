import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2050-2099 of the 2559-step refutation of ccase003: 123 core clauses and 80 earlier-derived ones give 17 more. -/
theorem CCase003_block041
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
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
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c118 : v23 ∨ v22 ∨ v28 ∨ v26 ∨ v25 ∨ v24)
    (c120 : v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v24)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c171 : ¬v48 ∨ ¬v43)
    (c176 : ¬v48 ∨ ¬v44)
    (c180 : ¬v48 ∨ ¬v45)
    (c183 : ¬v46 ∨ ¬v48)
    (c185 : ¬v47 ∨ ¬v48)
    (c186 : ¬v49 ∨ ¬v47)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c222 : ¬v48 ∨ v41 ∨ v7 ∨ v6 ∨ v47 ∨ v42 ∨ v5 ∨ v49)
    (c251 : ¬v25 ∨ v18 ∨ v33 ∨ v26 ∨ v17 ∨ v19 ∨ v24 ∨ v32)
    (c253 : ¬v32 ∨ v39 ∨ v38 ∨ v25 ∨ v26 ∨ v24 ∨ v33 ∨ v31)
    (c270 : ¬v5 ∨ v6 ∨ v46 ∨ v4 ∨ v13 ∨ v11 ∨ v12 ∨ v47)
    (c274 : ¬v40 ∨ v41 ∨ v39 ∨ v46 ∨ v32 ∨ v33 ∨ v47 ∨ v34)
    (c300 : ¬v48 ∨ v6 ∨ v40 ∨ v49 ∨ v7 ∨ v47 ∨ v5 ∨ v41)
    (c323 : ¬v25 ∨ v32 ∨ v33 ∨ v26 ∨ v24 ∨ v31 ∨ v17 ∨ v18)
    (c324 : ¬v30 ∨ v23 ∨ v38 ∨ v37 ∨ v31 ∨ v24 ∨ v22 ∨ v29)
    (c345 : ¬v34 ∨ v41 ∨ v33 ∨ v27 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c346 : v23 ∨ v22 ∨ v3 ∨ v15 ∨ v10 ∨ v19 ∨ v5 ∨ v24 ∨ v2 ∨ v12 ∨ v8 ∨ ¬v9 ∨ v11 ∨ v16)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c362 : v23 ∨ v22 ∨ v21 ∨ ¬v15 ∨ v14 ∨ v8 ∨ v16 ∨ v9)
    (c372 : v43 ∨ v49 ∨ ¬v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c401 : v10 ∨ ¬v11 ∨ v17 ∨ v47 ∨ v18 ∨ v45 ∨ v8 ∨ v4 ∨ v1 ∨ v9 ∨ v12 ∨ v5 ∨ v46 ∨ v15)
    (c446 : ¬v33 ∨ v40 ∨ v26 ∨ v34 ∨ v25 ∨ v41 ∨ v27 ∨ v32)
    (c450 : ¬v31 ∨ v38 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v39 ∨ v32)
    (c455 : ¬v40 ∨ v42 ∨ v41 ∨ v13 ∨ v47 ∨ v33 ∨ v5 ∨ v46 ∨ v34 ∨ v12 ∨ v35 ∨ v11 ∨ v39 ∨ v49)
    (c463 : ¬v25 ∨ v24 ∨ v26 ∨ v18 ∨ v31 ∨ v32 ∨ v19 ∨ v17)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c503 : ¬v48 ∨ v41 ∨ v40 ∨ v49 ∨ v5 ∨ v6 ∨ v47 ∨ v42)
    (c512 : v30 ∨ v19 ∨ v17 ∨ v32 ∨ v24 ∨ v3 ∨ ¬v10 ∨ v4 ∨ v31 ∨ v12 ∨ v16 ∨ v11 ∨ v9 ∨ v5)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c636 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c667 : ¬v11 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v34)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c734 : v20 ∨ v7 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c758 : v22 ∨ ¬v14 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c785 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v24)
    (c809 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c859 : ¬v10 ∨ ¬v21 ∨ v22 ∨ v28)
    (c1050 : ¬v25 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c1136 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1224 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1235 : ¬v39 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1279 : ¬v30 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1281 : ¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1455 : v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1513 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v27 ∨ v29 ∨ v35)
    (c1518 : ¬v11 ∨ ¬v1 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1601 : ¬v25 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1658 : ¬v21 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35)
    (c1690 : v9 ∨ v2 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1717 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v44)
    (c1730 : ¬v19 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v35)
    (c1748 : v28 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35)
    (c1809 : ¬v1 ∨ ¬v4 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49)
    (c1857 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1858 : ¬v21 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1895 : ¬v31 ∨ v24 ∨ ¬v25 ∨ v26 ∨ ¬v27)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1947 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1952 : ¬v30 ∨ v23 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38)
    (c1974 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2017 : ¬v36 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c2127 : v21 ∨ v1 ∨ ¬v3 ∨ ¬v14 ∨ v44 ∨ v45)
    (c2160 : ¬v33 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2193 : v9 ∨ v2 ∨ v8 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2223 : ¬v41 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33)
    (c2230 : v28 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c2231 : ¬v15 ∨ v8 ∨ v12 ∨ v14 ∨ v19 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v35)
    (c2242 : v15 ∨ ¬v2 ∨ ¬v3 ∨ v10 ∨ v16 ∨ v18 ∨ v22 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2259 : ¬v1 ∨ ¬v3 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2288 : v4 ∨ v3 ∨ ¬v10 ∨ ¬v20)
    (c2292 : v15 ∨ v1 ∨ v8 ∨ ¬v25 ∨ ¬v33 ∨ v43 ∨ v49)
    (c2305 : ¬v28 ∨ v3 ∨ v10 ∨ ¬v25 ∨ v29 ∨ v31 ∨ v35 ∨ v38 ∨ v45)
    (c2312 : ¬v17 ∨ ¬v22 ∨ ¬v25 ∨ v30 ∨ v35)
    (c2314 : ¬v35 ∨ ¬v22 ∨ ¬v25)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2384 : v30 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v37 ∨ v44)
    (c2385 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2412 : ¬v17 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34)
    (c2452 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2466 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v30 ∨ v31 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c2529 : ¬v10 ∨ ¬v3 ∨ v23 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2553 : v39 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2574 : ¬v37 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2595 : v48 ∨ v49)
    (c2608 : ¬v42 ∨ v22 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v43 ∨ v45 ∨ v49)
    (c2610 : ¬v1 ∨ ¬v19 ∨ v24 ∨ v31 ∨ v49)
    (c2625 : ¬v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c2633 : v25 ∨ ¬v26 ∨ v49)
    (c2638 : ¬v42 ∨ v4 ∨ v6 ∨ v7 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v49)
    (c2649 : ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v49)
    (c2650 : v30 ∨ ¬v26 ∨ v32 ∨ v49)
    (c2651 : v1 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v31 ∨ v34 ∨ v35 ∨ v49)
    : (¬v26 ∨ v49) ∧ (¬v32 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v49) ∧ (¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v35 ∨ v49) ∧ (¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47) ∧ (¬v19 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v10 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43) ∧ (¬v5 ∨ ¬v3 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47) ∧ (v22 ∨ v23 ∨ v24 ∨ v49) ∧ (v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v5 ∨ ¬v3 ∨ v10 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39) ∧ (¬v29 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v39 ∨ v46 ∨ v47) ∧ (¬v40 ∨ v5 ∨ v6 ∨ v7 ∨ v49) ∧ (¬v25 ∨ v1 ∨ v8 ∨ v24 ∨ v31 ∨ ¬v33 ∨ v49) ∧ (¬v19 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44) ∧ (v10 ∨ ¬v3 ∨ v23 ∨ v24 ∨ v31 ∨ v49) ∧ (v33 ∨ ¬v3 ∨ v19 ∨ v23 ∨ v24 ∨ v31 ∨ v49) := by
  have c2652 : v10 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c2610 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n8
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
    have u8 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u9 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n8
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
    have u11 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n6
      · exact a
    have u12 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n8
    have u18 : v9 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
    have u24 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
    have u25 : v2 := by
      rcases c346 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u24
      · exact absurd a n4
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a u12
    have u26 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v42 := by
      rcases c2638 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n8
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a n7
    · exact absurd a u22
    · exact absurd a u15
    · exact absurd a n8
    · exact absurd a u27
    · exact absurd a n5
  have c2653 : v32 ∨ ¬v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v25 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n2
    have u3 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u7 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : v30 := by
      rcases c2650 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    have u14 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
    have u19 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n2
    have u20 : v1 := by
      rcases c2651 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n2
    have u21 : v37 := by
      rcases c324 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u3
      · exact absurd a u18
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u16
    have u22 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v10 := by
      rcases c2652 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n2
    have u25 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
    have u27 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
    rcases c503 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a n2
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u11
    · exact absurd a u19
  have c2654 : ¬v10 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
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
    have u5 : ¬v16 := by
      rcases c2625 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n11
    have u7 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
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
    have u12 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    rcases c2164 with a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c2655 : ¬v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n1
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
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v32 := by
      rcases c2653 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    have u7 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u13 : v25 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    have u14 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n0 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u13 a
    have u16 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u13 a
    have u17 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u13 a
    have u18 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u13 a
    have u19 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n1
    have u20 : v1 := by
      rcases c2651 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n1
    have u21 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n1
    have u22 : ¬v19 := by
      rcases c2610 with a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n1
    have u23 : ¬v10 := by
      rcases c2654 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a n1
    have u24 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u8
      · exact a
    have u25 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a n1
    have u30 : v9 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u23
      · exact absurd a u29
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u15
    have u31 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u30 a
    have u33 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u30 a
      · exact a
    have u34 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u32
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n1
    have u35 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u33
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a n1
    have u36 : v2 := by
      rcases c346 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u27
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u34
      · exact absurd a u15
      · exact a
      · exact absurd a u31
      · exact absurd a u32
      · exact absurd u30 a
      · exact absurd a u29
      · exact absurd a u25
    rcases c5 with a|a|a
    · exact absurd u20 a
    · exact absurd u36 a
    · exact absurd u35 a
  have c2656 : v10 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c2610 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
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
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n6
    have u10 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u12 : v25 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u4
    have u13 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact a
    have u14 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd u12 a
      · exact absurd a u2
    have u20 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n6
    have u21 : v9 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
    have u22 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u27 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u28 : v2 := by
      rcases c346 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u26
      · exact absurd a n4
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd u21 a
      · exact absurd a u20
      · exact absurd a u14
    have u29 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v42 := by
      rcases c2638 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n6
    have u31 : v41 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a u30
      · exact absurd a u26
      · exact absurd a n6
    have u32 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd a u7
      · exact absurd a u1
      · exact a
      · exact absurd a u32
    have u34 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u33 a
    have u35 : ¬v28 := by
      rcases c2305 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd u12 a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u34
      · exact absurd a u11
      · exact absurd a u4
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u34
    · exact absurd a u25
    · exact absurd a u17
    · exact absurd a n6
    · exact absurd a u30
    · exact absurd a u35
  have c2657 : v35 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v49 := by
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
    have u3 : v25 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a n4
    have u4 : v27 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n5
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
    have u8 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n6
    have u11 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u12 : ¬v31 := by
      rcases c1895 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd u4 a
    have u13 : ¬v19 := by
      rcases c2610 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n6
    have u14 : v10 := by
      rcases c2656 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n6
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
    have u19 : ¬v16 := by
      rcases c2625 with a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u21 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u22 : ¬v20 := by
      rcases c2288 with a|a|a|a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd u14 a
      · exact a
    have u23 : v34 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a n5
    have u24 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : v17 := by
      rcases c512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u13
      · exact a
      · exact absurd a u25
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u20
    have u28 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u26
    rcases c71 with a|a
    · exact absurd u28 a
    · exact absurd u27 a
  have c2658 : v28 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v49 := by
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
    have u3 : v25 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a n4
    have u4 : v27 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n0
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
    have u8 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n5
    have u11 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u12 : v35 := by
      rcases c2657 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u13 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v19 := by
      rcases c2610 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n5
    have u19 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u16
    have u20 : v10 := by
      rcases c2656 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n5
    have u21 : ¬v17 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u15
    have u22 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u20 a
      · exact a
    have u27 : v5 := by
      rcases c512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd u20 a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u25
      · exact a
    rcases c1947 with a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd n1 a
    · exact absurd a u23
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n5
  have c2659 : ¬v35 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v10 ∨ v12 ∨ v16 ∨ v19 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : v17 := by
      rcases c512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
    have u8 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n9
    have u9 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
    have u10 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v25 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n8
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
    have u15 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u4
      · exact a
      · exact absurd a u11
      · exact absurd a u13
    rcases c1455 with a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u13
  have c2660 : v32 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v12 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n13
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n13
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
    have u11 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u10
    have u12 : v2 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u13 : v25 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
    have u14 : v1 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a u2
    have u15 : ¬v35 := by
      rcases c2659 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
    have u16 : v17 := by
      rcases c512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
    have u17 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v22 := by
      rcases c2312 with a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u13 a
      · exact absurd a n11
      · exact absurd a u15
    have u19 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n10
      · exact absurd u13 a
      · exact absurd a u4
    have u20 : v28 := by
      rcases c2658 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u21 : v27 := by
      rcases c1214 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u18
      · exact a
      · exact absurd u20 a
      · exact absurd a u19
      · exact absurd a u15
    rcases c115 with a|a|a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd u13 a
  have c2661 : ¬v32 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n6
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u6 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v40 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u2
      · exact a
    have u9 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u8 a
    rcases c455 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a n6
  have c2662 : v31 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c2610 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
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
    have u9 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n5
    have u10 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u11 : v28 := by
      rcases c2658 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v10 := by
      rcases c2656 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u13 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v16 := by
      rcases c2625 with a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    have u19 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    have u20 : ¬v32 := by
      rcases c2661 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a n5
    have u21 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u20
      · exact a
      · exact absurd a u4
      · exact absurd a u8
    have u22 : v25 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u8
    have u23 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u22 a
    have u24 : v30 := by
      rcases c2660 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd u12 a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
    have u25 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u24 a
    rcases c1050 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u23
    · exact absurd u11 a
    · exact absurd a u26
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u27
    · exact absurd a u25
  have c2663 : ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
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
    have u5 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v31 := by
      rcases c2662 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u12 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a u6
    have u13 : v38 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
    have u14 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u13 a
    rcases c2649 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a n4
  have c2664 : ¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n7
    have u6 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v15 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n7
    have u9 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u8 a
      · exact a
    rcases c362 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd u8 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u2
  have c2665 : v8 ∨ v1 ∨ v14 ∨ v19 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c2664 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n9
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v15 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n9
    rcases c2231 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2666 : v19 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v33 ∨ v35 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v1 := by
      rcases c2663 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
    have u2 : ¬v12 := by
      rcases c2664 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
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
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
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
    have u9 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
    have u11 : ¬v14 := by
      rcases c758 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u12 : v8 := by
      rcases c2665 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
    have u13 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u6
    have u16 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u15 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u1
    rcases c15 with a|a|a
    · exact absurd u16 a
    · exact absurd u15 a
    · exact absurd u10 a
  have c2667 : ¬v31 ∨ v22 ∨ v23 ∨ v24 ∨ v49 := by
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
    have u6 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u7 : ¬v1 := by
      rcases c2663 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u11 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
    have u14 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : v38 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u5
    have u16 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v19 := by
      rcases c2666 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a n4
    have u19 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n4
    have u24 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u7
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u9
    have u25 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u24 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u7
    rcases c2242 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd u24 a
    · exact absurd u27 a
    · exact absurd a u26
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n4
  have c2668 : ¬v8 ∨ v1 ∨ ¬v2 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v24 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v7 := by
      rcases c1136 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u4 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n5
    rcases c17 with a|a|a
    · exact absurd n2 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2669 : ¬v19 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u5 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v1 := by
      rcases c2663 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u7 : ¬v31 := by
      rcases c2667 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u8 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n6
    have u9 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
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
    have u15 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
    have u17 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u11
    have u18 : ¬v8 := by
      rcases c2668 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u17 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u10
    have u19 : ¬v33 := by
      rcases c2160 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n6
    have u20 : v29 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n6
    have u21 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v25 := by
      rcases c1281 with a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a u8
    have u24 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
    have u25 : ¬v11 := by
      rcases c667 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u22
    have u26 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u23
      · exact absurd a u8
    have u27 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u24
    have u28 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u23
      · exact absurd a u8
    rcases c1717 with a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u6
    · exact absurd u27 a
    · exact absurd a u18
    · exact absurd a u26
    · exact absurd a u28
    · exact absurd a u12
    · exact absurd a u11
  have c2670 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n0 a
    rcases c274 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n3
  have c2671 : v19 ∨ v1 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n12
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n12
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
    have u8 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
    have u10 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u4
    have u11 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n5
    have u12 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u11 a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v4 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
    have u15 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    rcases c1578 with a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd u15 a
    · exact absurd a n0
  have c2672 : ¬v29 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : v25 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact a
    have u3 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    rcases c678 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd u2 a
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2673 : v22 ∨ v10 ∨ v15 ∨ v19 ∨ v23 ∨ v24 ∨ ¬v29 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v1 := by
      rcases c2663 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u6 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n8
    have u7 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n8
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u13 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u14 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v17 := by
      rcases c2672 with a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
    have u16 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u15
    have u17 : v16 := by
      rcases c2671 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n8
    have u18 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v9 := by
      rcases c636 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v25 := by
      rcases c463 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u15
    have u21 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u12
    have u24 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u6
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u14
    rcases c24 with a|a|a
    · exact absurd u24 a
    · exact absurd u16 a
    · exact absurd u23 a
  have c2674 : v40 ∨ v1 ∨ v8 ∨ ¬v10 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v43 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n8
      · exact a
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n0
    have u5 : v2 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n13
    have u6 : ¬v3 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u4 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd u5 a
    · exact absurd a u6
    · exact absurd a n14
    · exact absurd a n13
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
  have c2675 : v8 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v29 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v1 := by
      rcases c2663 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u6 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n7
    have u7 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n7
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
    have u14 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
    have u16 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v14 := by
      rcases c758 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u18 : ¬v10 := by
      rcases c2674 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u19 : v15 := by
      rcases c2673 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : v9 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd u19 a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u20
      · exact a
    have u25 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u21
    have u26 : ¬v25 := by
      rcases c463 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u21
    have u27 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u24 a
      · exact a
    have u29 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u12
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u13
    have u30 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u6
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u16
    rcases c24 with a|a|a
    · exact absurd u30 a
    · exact absurd u25 a
    · exact absurd u29 a
  have c2676 : v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c2663 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u2 : ¬v19 := by
      rcases c2669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v31 := by
      rcases c2667 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u11 : ¬v29 := by
      rcases c2675 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u13 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n0
      · exact a
    have u14 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v14 := by
      rcases c2665 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v3 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u1
      · exact a
      · exact absurd u16 a
      · exact absurd a u6
      · exact absurd a u5
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u14
  have c2677 : v35 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v49 := by
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
    have u3 : ¬v31 := by
      rcases c2667 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u4 : ¬v1 := by
      rcases c2663 with a|a|a|a|a
      · exact a
      · exact absurd a n1
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
    have u10 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v19 := by
      rcases c2669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u12 : v8 := by
      rcases c2676 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u13 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u6
    have u20 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u21 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u19 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u4
    have u22 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u19 a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u21 a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v4 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u4
      · exact a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
    have u25 : ¬v17 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n3
    have u26 : ¬v32 := by
      rcases c2661 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a n5
    have u27 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
    have u28 : v25 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a u11
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u9
    have u29 : v18 := by
      rcases c463 with a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u25
    have u30 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u29 a
    rcases c1136 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u4
    · exact absurd a u22
    · exact absurd a u15
    · exact absurd a u30
    · exact absurd a u20
    · exact absurd a u31
  have c2678 : v10 ∨ v1 ∨ ¬v8 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v43 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
    have u4 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n11
    have u5 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd u3 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n1
    rcases c15 with a|a|a
    · exact absurd u5 a
    · exact absurd u3 a
    · exact absurd u4 a
  have c2679 : v19 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c2663 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v31 := by
      rcases c2667 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u3 : v35 := by
      rcases c2677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n6
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u6 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u9
      · exact a
      · exact absurd a u10
      · exact absurd a u14
    have u17 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
    have u18 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u19 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
    have u20 : ¬v8 := by
      rcases c2678 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u21 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u20
      · exact a
    have u22 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u22
    have u26 : ¬v25 := by
      rcases c251 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u9
    have u27 : v4 := by
      rcases c2553 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
    have u28 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd u25 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u29 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u27 a
    have u30 : v9 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u20
      · exact a
      · exact absurd a u28
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u31 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u29
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u19
    rcases c46 with a|a
    · exact absurd u30 a
    · exact absurd u31 a
  have c2680 : ¬v19 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u4 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u2
    have u7 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n9
    have u8 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v7 := by
      rcases c1136 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
    have u12 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u7 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n1
    rcases c17 with a|a|a
    · exact absurd u7 a
    · exact absurd u12 a
    · exact absurd u11 a
  have c2681 : v30 ∨ v22 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c2667 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v1 := by
      rcases c2663 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
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
    have u7 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u8 : v35 := by
      rcases c2677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u9 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u11 : ¬v19 := by
      rcases c2680 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : v10 := by
      rcases c2679 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u13 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u12 a
      · exact a
    rcases c2466 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n4
  have c2682 : ¬v10 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact a
    have u5 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u4 a
      · exact a
    rcases c362 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u2
  have c2683 : v8 ∨ v22 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c2667 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v30 := by
      rcases c2681 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n4
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u2 a
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
    have u14 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a u13
    have u15 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
    have u16 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u17 : ¬v1 := by
      rcases c2663 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : v37 := by
      rcases c324 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u5
    have u19 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n0
      · exact a
    have u23 : ¬v10 := by
      rcases c2682 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u11
    have u24 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u24
    have u28 : ¬v25 := by
      rcases c323 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u24
      · exact absurd a u25
    have u29 : v4 := by
      rcases c2553 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
    have u30 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u29 a
      · exact absurd u27 a
      · exact a
    have u31 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u29 a
    rcases c503 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u12
    · exact absurd a u21
  have c2684 : ¬v5 ∨ ¬v3 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : v6 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    rcases c27 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd u2 a
  have c2685 : v22 ∨ v23 ∨ v24 ∨ v49 := by
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
    have u3 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c176 with a|a
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
    have u7 : v8 := by
      rcases c2683 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u14 : ¬v17 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
    have u15 : ¬v31 := by
      rcases c2667 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u17 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v5 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
    have u19 : v30 := by
      rcases c2681 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u20 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u22
      · exact a
      · exact absurd a u3
      · exact absurd a u6
    have u24 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u5
    have u25 : v19 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u5
      · exact a
      · exact absurd a u21
      · exact absurd a u24
    have u26 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : v25 := by
      rcases c1491 with a|a|a|a
      · exact absurd u7 a
      · exact absurd u25 a
      · exact a
      · exact absurd a u1
    rcases c323 with a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u26
  have c2686 : ¬v19 ∨ v1 ∨ v5 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ ¬v22 ∨ v23 ∨ v24 ∨ v26 ∨ v31 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
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
    have u7 : v4 := by
      rcases c401 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u3
      · exact absurd a n17
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n16
      · exact absurd a u2
    have u8 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : v30 := by
      rcases c2193 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v25 := by
      rcases c1279 with a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u4
      · exact absurd a n10
      · exact a
      · exact absurd a n11
    have u13 : ¬v27 := by
      rcases c1513 with a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    rcases c574 with a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a n11
    · exact absurd a u13
  have c2687 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u1
  have c2688 : ¬v5 ∨ ¬v3 ∨ v10 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c15 with a|a|a
    · exact absurd n1 a
    · exact absurd u2 a
    · exact absurd n0 a
  have c2689 : ¬v39 ∨ v5 ∨ v6 ∨ v7 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u4 : v47 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a u2
    rcases c185 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2690 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    rcases c253 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n4
  have c2691 : v25 ∨ v4 ∨ v11 ∨ v24 ∨ v26 ∨ v31 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v32 := by
      rcases c2690 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
    have u3 : v19 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n9
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v47 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact a
    have u6 : ¬v49 := by
      rcases c186 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v48 := by
      rcases c185 with a|a
      · exact absurd u5 a
      · exact a
    rcases c2595 with a|a
    · exact absurd a u7
    · exact absurd a u6
  have c2692 : ¬v32 ∨ v5 ∨ v6 ∨ v7 ∨ v11 ∨ v12 ∨ v19 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v13 := by
      rcases c2661 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n10
    have u5 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u6 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u5 a
      · exact a
    rcases c809 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd u4 a
    · exact absurd a u6
    · exact absurd a u7
  have c2693 : ¬v29 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v39 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v40 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u3
      · exact a
    rcases c2670 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2694 : v11 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v23 ∨ v24 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v22 := by
      rcases c2685 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n9
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
    have u6 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v39 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
    have u9 : v25 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u10 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v27 := by
      rcases c92 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v35 := by
      rcases c2314 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u9 a
    have u13 : ¬v19 := by
      rcases c1730 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u12
    have u14 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u13
    have u15 : ¬v29 := by
      rcases c2693 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v32 := by
      rcases c2692 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n9
    have u17 : v30 := by
      rcases c1748 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u15
      · exact a
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a u12
    have u18 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v40 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u19
      · exact a
    rcases c2670 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c2695 : ¬v40 ∨ v5 ∨ v6 ∨ v7 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    rcases c222 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n4
  have c2696 : ¬v25 ∨ v1 ∨ v8 ∨ v24 ∨ v31 ∨ ¬v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n6
    have u7 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v15 := by
      rcases c2292 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n5 a
      · exact absurd a u8
      · exact absurd a n6
    have u10 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v27 := by
      rcases c1601 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u3
    have u12 : v28 := by
      rcases c1748 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u3
    rcases c1050 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd u12 a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u3
  have c2697 : v4 ∨ ¬v3 ∨ v10 ∨ v23 ∨ v24 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v22 := by
      rcases c2685 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
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
    have u9 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u10 : ¬v5 := by
      rcases c2688 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u11 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n6
    have u12 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u13 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    have u14 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    have u15 : ¬v40 := by
      rcases c2695 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n6
    have u16 : v41 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u10
      · exact a
    have u17 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v30 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u12
    have u21 : v11 := by
      rcases c2694 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v19 := by
      rcases c2686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd u21 a
      · exact absurd a u24
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
    have u26 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u25
      · exact a
      · exact absurd a u15
    have u27 : ¬v29 := by
      rcases c2693 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u7
    have u28 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u26 a
    have u31 : ¬v25 := by
      rcases c2696 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u26 a
      · exact absurd a n6
    have u32 : v27 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u31
      · exact absurd a u2
      · exact a
      · exact absurd u26 a
    have u33 : v28 := by
      rcases c2230 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u31
      · exact absurd a u2
      · exact absurd u32 a
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a u30
      · exact absurd a u28
      · exact absurd a u29
    rcases c96 with a|a|a
    · exact absurd u1 a
    · exact absurd u33 a
    · exact absurd u32 a
  have c2698 : ¬v33 ∨ v7 ∨ v14 ∨ v21 ∨ ¬v22 ∨ v39 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n8
    have u5 : v28 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n7
      · exact a
    have u6 : ¬v27 := by
      rcases c96 with a|a|a
      · exact absurd n4 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd n4 a
      · exact absurd u5 a
      · exact a
    have u8 : v41 := by
      rcases c446 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a u3
    rcases c2223 with a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd n0 a
  have c2699 : ¬v19 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    rcases c2384 with a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
  have c2700 : v10 ∨ ¬v3 ∨ v23 ∨ v24 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v22 := by
      rcases c2685 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
    have u9 : ¬v5 := by
      rcases c2688 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u10 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n5
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u12 : v4 := by
      rcases c2697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u12 a
    have u14 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact a
    have u15 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u16 : ¬v40 := by
      rcases c2695 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
    have u17 : v41 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u9
      · exact a
    have u18 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v30 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u11
    have u23 : ¬v19 := by
      rcases c2699 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u5
    have u24 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u5
    have u25 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u26 : ¬v33 := by
      rcases c2698 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n5
    have u27 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u16
    have u28 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : v17 := by
      rcases c2193 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u15
      · exact absurd a u28
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u31 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u20
      · exact a
      · exact absurd a u29
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u22
    rcases c66 with a|a
    · exact absurd u31 a
    · exact absurd u30 a
  have c2701 : v33 ∨ ¬v3 ∨ v19 ∨ v23 ∨ v24 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v10 := by
      rcases c2700 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v22 := by
      rcases c2685 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u3 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n6
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v1 := by
      rcases c1974 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    have u17 : ¬v5 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
    have u19 : ¬v32 := by
      rcases c2661 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n6
    have u20 : v40 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n0
      · exact a
    have u21 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u19
      · exact a
      · exact absurd a u11
      · exact absurd a u15
    have u22 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : ¬v29 := by
      rcases c2693 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u14
    have u27 : v34 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u19
      · exact absurd a n0
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u14
    have u28 : ¬v30 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u18
    have u29 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v28 := by
      rcases c2529 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n6
    have u31 : v27 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u23
      · exact absurd a n0
      · exact a
      · exact absurd a u24
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u3
    have u32 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a u30
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u29
    have u33 : ¬v21 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u31 a
      · exact absurd a u30
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u29
    have u34 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u32 a
    have u35 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u10
      · exact absurd a u33
      · exact absurd a n6
      · exact absurd a u24
      · exact absurd a u30
    have u36 : v2 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u7
      · exact absurd a u34
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u37 : v6 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd u35 a
      · exact absurd a u16
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u10
    rcases c23 with a|a|a
    · exact absurd u36 a
    · exact absurd u35 a
    · exact absurd u37 a
  exact ⟨c2655, c2661, c2664, c2670, c2680, c2682, c2684, c2685, c2687, c2688, c2690, c2693, c2695, c2696, c2699, c2700, c2701⟩
