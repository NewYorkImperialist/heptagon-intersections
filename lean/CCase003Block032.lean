import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1600-1649 of the 2559-step refutation of ccase003: 125 core clauses and 87 earlier-derived ones give 16 more. -/
theorem CCase003_block032
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
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
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c77 : ¬v21 ∨ ¬v18)
    (c80 : ¬v20 ∨ ¬v21)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c103 : ¬v23 ∨ ¬v28 ∨ ¬v25)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c118 : v23 ∨ v22 ∨ v28 ∨ v26 ∨ v25 ∨ v24)
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
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c147 : ¬v38 ∨ ¬v36)
    (c148 : ¬v39 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c169 : ¬v46 ∨ ¬v43)
    (c170 : ¬v47 ∨ ¬v43)
    (c174 : ¬v46 ∨ ¬v44)
    (c175 : ¬v47 ∨ ¬v44)
    (c178 : ¬v46 ∨ ¬v45)
    (c179 : ¬v47 ∨ ¬v45)
    (c182 : ¬v47 ∨ ¬v46)
    (c183 : ¬v46 ∨ ¬v48)
    (c184 : ¬v49 ∨ ¬v46)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c228 : ¬v25 ∨ v24 ∨ v18 ∨ v26 ∨ v31 ∨ v33 ∨ v32 ∨ v19)
    (c253 : ¬v32 ∨ v39 ∨ v38 ∨ v25 ∨ v26 ∨ v24 ∨ v33 ∨ v31)
    (c260 : ¬v46 ∨ v39 ∨ v5 ∨ v1 ∨ v4 ∨ v38 ∨ v36 ∨ v11 ∨ v10 ∨ v12 ∨ v43 ∨ v44 ∨ v45 ∨ v47)
    (c261 : ¬v8 ∨ v14 ∨ v15 ∨ v2 ∨ v9 ∨ v16 ∨ v1 ∨ v7)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c264 : ¬v47 ∨ v41 ∨ v5 ∨ v40 ∨ v46 ∨ v6 ∨ v4 ∨ v48)
    (c276 : ¬v38 ∨ v49 ∨ v24 ∨ v44 ∨ v45 ∨ v35 ∨ v25 ∨ v32 ∨ v31 ∨ v37 ∨ v42 ∨ v36 ∨ v39 ∨ v23)
    (c278 : v43 ∨ ¬v28 ∨ v42 ∨ v35 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v20 ∨ v19 ∨ v21 ∨ v33 ∨ v48 ∨ v49)
    (c280 : v14 ∨ v49 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v48 ∨ v13)
    (c282 : v29 ∨ v23 ∨ v35 ∨ v30 ∨ ¬v15 ∨ v26 ∨ v21 ∨ v22 ∨ v19 ∨ v8 ∨ v16 ∨ v12 ∨ v20 ∨ v14)
    (c295 : ¬v34 ∨ v41 ∨ v33 ∨ v27 ∨ v42 ∨ v49 ∨ v26 ∨ v35 ∨ v38 ∨ v32 ∨ v31 ∨ v47 ∨ v48 ∨ v24)
    (c311 : v43 ∨ ¬v16 ∨ v44 ∨ v23 ∨ v9 ∨ v24 ∨ v2 ∨ v15 ∨ v11 ∨ v18 ∨ v17 ∨ v8 ∨ v25 ∨ v45)
    (c318 : v6 ∨ v4 ∨ v1 ∨ v19 ∨ v11 ∨ v12 ∨ v47 ∨ ¬v5 ∨ v20 ∨ v7 ∨ v18 ∨ v43 ∨ v8 ∨ v48)
    (c325 : ¬v33 ∨ v40 ∨ v34 ∨ v32 ∨ v41 ∨ v25 ∨ v39 ∨ v26)
    (c341 : v29 ∨ v8 ∨ v1 ∨ v7 ∨ ¬v9 ∨ v31 ∨ v23 ∨ v2 ∨ v10 ∨ v21 ∨ v16 ∨ v14 ∨ v30 ∨ v17)
    (c359 : v43 ∨ ¬v42 ∨ v48 ∨ v35 ∨ v34 ∨ v36 ∨ v49 ∨ v41)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c362 : v23 ∨ v22 ∨ v21 ∨ ¬v15 ∨ v14 ∨ v8 ∨ v16 ∨ v9)
    (c372 : v43 ∨ v49 ∨ ¬v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14)
    (c377 : v16 ∨ v8 ∨ v17 ∨ v3 ∨ v1 ∨ v2 ∨ v10 ∨ ¬v9)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c397 : ¬v10 ∨ v16 ∨ v17 ∨ v3 ∨ v11 ∨ v2 ∨ v9 ∨ v18)
    (c414 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v9 ∨ v17 ∨ v8)
    (c418 : ¬v12 ∨ v11 ∨ v6 ∨ v19 ∨ v20 ∨ v13 ∨ v18 ∨ v5)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c492 : v29 ∨ ¬v28 ∨ v27 ∨ v35 ∨ v15 ∨ v22 ∨ v21 ∨ v20)
    (c518 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v44 ∨ v10 ∨ v4)
    (c538 : ¬v33 ∨ v40 ∨ v34 ∨ v39 ∨ v25 ∨ v27 ∨ v26 ∨ v32)
    (c566 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c636 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c671 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v27)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c758 : v22 ∨ ¬v14 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c785 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v24)
    (c795 : v18 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c867 : v4 ∨ v10 ∨ v15 ∨ v19 ∨ ¬v20 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c986 : v31 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c1080 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1174 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1279 : ¬v30 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1281 : ¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1363 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1393 : ¬v41 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c1398 : ¬v7 ∨ v1 ∨ v6 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1554 : ¬v8 ∨ v1 ∨ v6 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v20 ∨ v22 ∨ v29 ∨ v30 ∨ v35)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1588 : v16 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23)
    (c1590 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v39 ∨ v40)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1644 : v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1662 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v15 ∨ v21)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1680 : ¬v3 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1682 : v22 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v23 ∨ v24 ∨ v26 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v49)
    (c1696 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v49)
    (c1700 : ¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ v35 ∨ v36 ∨ v40 ∨ v41)
    (c1718 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24)
    (c1747 : ¬v15 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32)
    (c1750 : v24 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1789 : v30 ∨ v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v32)
    (c1801 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1856 : ¬v9 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17)
    (c1858 : ¬v21 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1887 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c1914 : v37 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v27 ∨ v35 ∨ v36 ∨ v41 ∨ v44)
    (c1927 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c1930 : ¬v40 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v32 ∨ v33 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1974 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1976 : v26 ∨ v4 ∨ v5 ∨ v6 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v47)
    (c1999 : v26 ∨ v3 ∨ v5 ∨ v10 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v34 ∨ v41 ∨ v45 ∨ v47 ∨ v48)
    (c2005 : ¬v1 ∨ v47 ∨ v48 ∨ v49)
    (c2031 : ¬v20 ∨ v22 ∨ v29 ∨ v36 ∨ v47 ∨ v48 ∨ v49)
    (c2046 : ¬v24 ∨ v47 ∨ v48 ∨ v49)
    (c2056 : ¬v2 ∨ v1 ∨ v19 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47)
    (c2058 : v14 ∨ v1 ∨ v8 ∨ v10 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c2059 : ¬v27 ∨ v1 ∨ v2 ∨ v24 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c2073 : ¬v5 ∨ ¬v3 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c2080 : ¬v35 ∨ v47 ∨ v48 ∨ v49)
    (c2091 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2095 : ¬v19 ∨ v47 ∨ v48 ∨ v49)
    (c2101 : ¬v2 ∨ ¬v3 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c2116 : ¬v26 ∨ v47 ∨ v48 ∨ v49)
    (c2127 : v21 ∨ v1 ∨ ¬v3 ∨ ¬v14 ∨ v44 ∨ v45)
    (c2130 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v43 ∨ v44 ∨ v45)
    (c2148 : ¬v6 ∨ ¬v3 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c2158 : v28 ∨ v47 ∨ v48 ∨ v49)
    (c2159 : ¬v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c2160 : ¬v33 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c2162 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v34 ∨ v41 ∨ v48)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2165 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2170 : ¬v29 ∨ v15 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28)
    (c2172 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2177 : ¬v3 ∨ v14 ∨ v15 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c2179 : v38 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31 ∨ v37)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2184 : v47 ∨ v8 ∨ v12 ∨ v14 ∨ v15 ∨ v27 ∨ v34 ∨ v48 ∨ v49)
    : (v9 ∨ v2 ∨ v8 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45) ∧ (v15 ∨ v47 ∨ v48 ∨ v49) ∧ (v30 ∨ v3 ∨ v10 ∨ v23 ∨ v47 ∨ v48 ∨ v49) ∧ (v32 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v35 ∨ v36 ∨ ¬v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v10 ∨ v2 ∨ v3 ∨ v16 ∨ v17 ∨ v18) ∧ (¬v42 ∨ v35 ∨ v43 ∨ v48 ∨ v49) ∧ (v47 ∨ v48 ∨ v49) ∧ (¬v41 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33) ∧ (¬v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49) ∧ (v23 ∨ ¬v3 ∨ ¬v10 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v33 ∨ v48 ∨ v49) ∧ (v28 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35) ∧ (¬v15 ∨ v8 ∨ v12 ∨ v14 ∨ v19 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v35) ∧ (v23 ∨ ¬v3 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v27 ∨ ¬v33 ∨ v48 ∨ v49) ∧ (¬v15 ∨ ¬v3 ∨ v10 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48) ∧ (v20 ∨ ¬v3 ∨ v10 ∨ v19 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48) ∧ (v21 ∨ ¬v3 ∨ v10 ∨ v15 ∨ v17 ∨ v19 ∨ ¬v22 ∨ v23 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48) := by
  have c2185 : v47 ∨ v8 ∨ v14 ∨ v15 ∨ v27 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c2177 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v22 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u15 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u14 a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u14 a
      · exact absurd u6 a
      · exact a
    have u17 : v12 := by
      rcases c2184 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u2
    have u22 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u19
    have u23 : v38 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u9
    have u24 : ¬v17 := by
      rcases c1080 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u15
    have u25 : ¬v16 := by
      rcases c414 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a n1
    have u26 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u23 a
      · exact a
    rcases c1914 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u27
    · exact absurd a u12
    · exact absurd a u10
  have c2186 : ¬v8 ∨ ¬v6 ∨ v14 ∨ v15 ∨ v25 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v3 := by
      rcases c2177 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u6
    have u13 : ¬v17 := by
      rcases c1080 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
    have u14 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
    have u19 : v5 := by
      rcases c1999 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd n1 a
    have u21 : v21 := by
      rcases c1662 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u22 : v16 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a u20
    rcases c70 with a|a
    · exact absurd u22 a
    · exact absurd u21 a
  have c2187 : v27 ∨ v14 ∨ v15 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c2177 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u14 : v8 := by
      rcases c2185 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u5
    have u21 : v6 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n5
    have u22 : v25 := by
      rcases c2186 with a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v23 := by
      rcases c103 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u22 a
    have u24 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u22 a
    have u25 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u8
    have u26 : ¬v29 := by
      rcases c2170 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u6 a
    have u27 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u24
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a u7
    have u28 : ¬v17 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u8
    have u29 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u30 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u8
      · exact absurd u22 a
      · exact absurd a u2
    have u31 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    rcases c1914 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a u25
    · exact absurd a u28
    · exact absurd a u23
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u29
    · exact absurd a u12
    · exact absurd a u10
  have c2188 : v10 ∨ v1 ∨ v3 ∨ v15 ∨ v24 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n6 a
    have u2 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd n7 a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n6 a
    have u4 : v38 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n12
    have u5 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u2
    have u6 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v33 := by
      rcases c2130 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v32 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : v31 := by
      rcases c276 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u1
    have u13 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u13
      · exact a
      · exact absurd a n3
    have u16 : v2 := by
      rcases c2059 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd n7 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u17 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u15 a
      · exact a
    rcases c361 with a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd u16 a
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a n1
  have c2189 : v14 ∨ v15 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v3 := by
      rcases c2177 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v27 := by
      rcases c2187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u13 a
    have u15 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u13 a
    have u16 : v10 := by
      rcases c2188 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd u13 a
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u17 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u6
    have u20 : v29 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u21 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u18
    have u22 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u20 a
      · exact a
    rcases c2164 with a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd a u22
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
  have c2190 : v3 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v24 ∨ v26 ∨ ¬v28 ∨ v35 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n1
    have u2 : ¬v27 := by
      rcases c2188 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v22 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u4 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u3 a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u3 a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u4
    have u7 : ¬v16 := by
      rcases c414 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n2
    have u8 : v38 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n14
    have u9 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v30 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a u1
      · exact a
    have u11 : v36 := by
      rcases c1914 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n13
    have u12 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u10 a
    rcases c1663 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n15
  have c2191 : v34 ∨ v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u13 : v14 := by
      rcases c2189 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : v3 := by
      rcases c2190 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u20 : ¬v6 := by
      rcases c2159 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : v21 := by
      rcases c2127 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u19 a
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u18
      · exact a
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a n0
    have u25 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u24 a
    have u26 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u5 a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u24 a
    have u28 : v29 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u27
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u29 : ¬v33 := by
      rcases c2160 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a n4
    have u30 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u28 a
      · exact a
    have u32 : ¬v40 := by
      rcases c1930 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u33 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u26
      · exact absurd a u31
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    rcases c758 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd u13 a
    · exact absurd a u2
    · exact absurd a u25
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u31
    · exact absurd a u29
    · exact absurd a u33
    · exact absurd a u32
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n2
  have c2192 : v22 ∨ ¬v3 ∨ v15 ∨ v23 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v34 := by
      rcases c2191 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n6
    have u11 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u13 : ¬v20 := by
      rcases c2031 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u10 a
      · exact a
    have u18 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u10 a
      · exact a
    have u19 : ¬v6 := by
      rcases c2159 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u5
    rcases c1554 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a u21
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u4
  have c2193 : v9 ∨ v2 ∨ v8 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c1718 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c2164 with a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2194 : v10 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v8 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v40 ∨ v43 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v9 := by
      rcases c2193 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n9
      · exact a
      · exact absurd a n17
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u8 a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u8 a
      · exact absurd n3 a
      · exact a
    have u11 : v46 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact a
    have u12 : ¬v49 := by
      rcases c184 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v48 := by
      rcases c183 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v7 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u6
    have u15 : v20 := by
      rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n17
      · exact absurd u8 a
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a u13
    have u16 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u15 a
    rcases c1856 with a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u1
  have c2195 : v23 ∨ ¬v3 ∨ v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v34 := by
      rcases c2191 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u19 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n5
    have u20 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
    have u21 : v22 := by
      rcases c2192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u21 a
      · exact absurd u6 a
      · exact a
    have u23 : ¬v27 := by
      rcases c96 with a|a|a
      · exact absurd u21 a
      · exact absurd u6 a
      · exact a
    have u24 : v41 := by
      rcases c295 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
    have u25 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v6 := by
      rcases c2148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u28 : ¬v2 := by
      rcases c2056 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd u4 a
      · exact absurd a n3
    have u29 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u28
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u15
    have u30 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
    have u31 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u27
      · exact absurd a u30
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u32 : ¬v8 := by
      rcases c1662 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a n2
      · exact absurd a u29
    have u33 : v10 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u28
      · exact absurd n1 a
      · exact absurd a u32
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n3
    have u34 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u33 a
      · exact a
    have u35 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u33 a
      · exact a
    have u36 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u33 a
      · exact a
    have u37 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u34
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u26
    have u38 : ¬v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd a u36
      · exact absurd a u30
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u23
    have u39 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u1
    have u40 : v4 := by
      rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u35
      · exact absurd a u34
      · exact absurd a n3
      · exact absurd u37 a
      · exact absurd a u38
      · exact absurd a u31
      · exact absurd a u39
      · exact absurd a u16
      · exact absurd a u32
      · exact absurd a n4
    rcases c24 with a|a|a
    · exact absurd u37 a
    · exact absurd n1 a
    · exact absurd u40 a
  have c2196 : ¬v23 ∨ v24 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c106 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v22 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v15 := by
      rcases c492 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    rcases c60 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  have c2197 : ¬v10 ∨ v1 ∨ v3 ∨ v15 ∨ v19 ∨ v24 ∨ v26 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v23 := by
      rcases c2196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v22 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
    have u7 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
    have u8 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u6 a
      · exact absurd n7 a
      · exact a
    have u9 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n9
    have u10 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n6
    have u11 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u9 a
      · exact a
    rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd u9 a
    · exact absurd a n13
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a n14
  have c2198 : v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v34 := by
      rcases c2191 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v23 := by
      rcases c2196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u3
    have u18 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u19 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
    have u20 : ¬v3 := by
      rcases c2195 with a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u21 : ¬v10 := by
      rcases c2197 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd u7 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
    have u22 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u14
      · exact a
    have u23 : v25 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u4
      · exact a
      · exact absurd a u8
    have u24 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u22 a
    rcases c228 with a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u4
    · exact absurd a u24
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u2
  have c2199 : ¬v9 ∨ v3 ∨ ¬v22 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u18 : v2 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u9
      · exact a
      · exact absurd a u4
      · exact absurd n0 a
    have u19 : ¬v33 := by
      rcases c2130 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u20 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a n3
    have u21 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u18 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v4 := by
      rcases c18 with a|a|a
      · exact absurd u18 a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u20 a
    rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd u20 a
    · exact absurd a u14
    · exact absurd a u23
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a n6
  have c2200 : v3 ∨ v10 ∨ ¬v22 ∨ v23 ∨ v30 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd n2 a
      · exact absurd u4 a
      · exact a
    have u11 : v38 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u7
    have u12 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v9 := by
      rcases c2199 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u8
      · exact a
      · exact absurd a n4
    rcases c361 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u16 a
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u15
    · exact absurd a u3
  have c2201 : v3 ∨ v10 ∨ v23 ∨ v25 ∨ v30 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c2200 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
    have u15 : v38 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u11
    have u16 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v33 := by
      rcases c2130 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v14 := by
      rcases c758 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
    have u19 : v8 := by
      rcases c2058 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
    have u20 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u12
    rcases c361 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd u21 a
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd a u6
  have c2202 : v30 ∨ v3 ∨ v10 ∨ v23 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v22 := by
      rcases c2200 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v25 := by
      rcases c2201 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd u13 a
      · exact absurd a u3
    have u16 : v34 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u2 a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact a
      · exact absurd a u9
    have u17 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u16 a
      · exact a
    rcases c278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u2 a
    · exact absurd a u17
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a n5
    · exact absurd a n6
  have c2203 : v32 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v35 ∨ v36 ∨ ¬v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n7 a
      · exact a
    rcases c276 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n11
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
  have c2205 : ¬v30 ∨ v10 ∨ v23 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v25 := by
      rcases c1747 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u13
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u6
    have u16 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u10 a
      · exact a
    have u20 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u10 a
      · exact a
    have u21 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u10 a
      · exact a
    have u22 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u10 a
      · exact a
    have u23 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v40 := by
      rcases c1930 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n5
    have u26 : ¬v38 := by
      rcases c2203 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u25
      · exact a
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n5
    have u27 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u19
    have u28 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd u27 a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
    have u29 : ¬v6 := by
      rcases c2148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u30 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
    have u31 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u20
    have u32 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u31
      · exact a
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u4
    have u33 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u32 a
    have u34 : v8 := by
      rcases c2058 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u20
      · exact absurd a u33
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n5
    have u35 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u34 a
      · exact a
    have u36 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u34 a
      · exact a
    have u37 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u34 a
      · exact a
    have u38 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u36
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u24
    have u39 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u38 a
      · exact absurd u27 a
      · exact a
    have u40 : ¬v2 := by
      rcases c15 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u38 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u40
    · exact absurd a u37
    · exact absurd a u35
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a n1
    · exact absurd a u39
  have c2206 : ¬v39 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ v35 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n4
      · exact a
      · exact absurd a u1
    rcases c1700 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c2207 : v29 ∨ v1 ∨ v4 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v35 ∨ v42 ∨ ¬v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n15 a
      · exact a
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd n15 a
      · exact a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n15 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n17
    have u5 : ¬v39 := by
      rcases c2206 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n16
    have u6 : v38 := by
      rcases c260 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n15 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n16
    have u7 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n8
      · exact a
      · exact absurd a u7
    have u10 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u9 a
    rcases c325 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a n11
    · exact absurd a u5
    · exact absurd a n12
  have c2208 : v22 ∨ v1 ∨ ¬v3 ∨ v10 ∨ ¬v15 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v35 ∨ v42 ∨ ¬v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v48 := by
      rcases c183 with a|a
      · exact absurd n13 a
      · exact a
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n13 a
      · exact a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd n13 a
      · exact a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n13 a
      · exact a
    have u5 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n15
    have u9 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
    have u10 : v8 := by
      rcases c2058 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n15
    have u11 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u3
    have u14 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact a
    have u15 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact a
    have u17 : v29 := by
      rcases c2207 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n15
    have u18 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
    have u23 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a n15
    have u24 : v40 := by
      rcases c1976 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u22
      · exact a
      · exact absurd a u23
      · exact absurd a n14
    rcases c1930 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a n11
    · exact absurd a u23
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a u1
    · exact absurd a n15
  have c2209 : v27 ∨ ¬v3 ∨ v23 ∨ v25 ∨ ¬v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u17 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v2 := by
      rcases c2101 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n6
    have u19 : ¬v5 := by
      rcases c2073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n6
    have u20 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u12
      · exact a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u2
    have u21 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u3
    have u24 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u23 a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n7
    · exact absurd a u19
    · exact absurd u23 a
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a n6
    · exact absurd a u21
  have c2210 : v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
    have u2 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v2 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u4 : v46 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n8
    have u6 : ¬v49 := by
      rcases c184 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u6
    have u12 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u6
    have u13 : ¬v7 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u10
    have u14 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u11 a
      · exact a
    rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n13
    · exact absurd u1 a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n14
  have c2211 : ¬v3 ∨ v23 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c2148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd n0 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u15 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u8
    have u17 : v12 := by
      rcases c2210 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n0 a
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v5 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u9
      · exact a
    have u21 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u12
      · exact a
      · exact absurd a n2
    rcases c15 with a|a|a
    · exact absurd n0 a
    · exact absurd u21 a
    · exact absurd u20 a
  have c2212 : v25 ∨ ¬v3 ∨ v23 ∨ v27 ∨ v30 ∨ v33 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v29 := by
      rcases c2209 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n9
    have u14 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : v40 := by
      rcases c2211 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v31 := by
      rcases c2179 with a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a u14
    have u20 : v32 := by
      rcases c1930 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c253 with a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u19
  have c2213 : v42 ∨ v10 ∨ v23 ∨ v25 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a n3
    have u10 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v30 := by
      rcases c2205 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : v3 := by
      rcases c2202 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd u17 a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
    have u19 : v22 := by
      rcases c2208 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n6
    have u20 : ¬v27 := by
      rcases c96 with a|a|a
      · exact absurd u19 a
      · exact absurd u6 a
      · exact a
    have u21 : v33 := by
      rcases c2212 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u17 a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v41 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v2 := by
      rcases c2101 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a n5
    have u27 : v9 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u26
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u28 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u22
    have u31 : v7 := by
      rcases c341 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u29
      · exact absurd a u5
      · exact a
      · exact absurd u27 a
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u9
    rcases c29 with a|a|a
    · exact absurd u17 a
    · exact absurd u31 a
    · exact absurd u30 a
  have c2214 : ¬v25 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v26 ∨ ¬v28 ∨ v35 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n0 a
    have u3 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n6
    have u4 : v34 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n7 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a n4
    have u5 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u4 a
      · exact a
    rcases c278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n7 a
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a n11
  have c2215 : v23 ∨ ¬v3 ∨ v33 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v25 := by
      rcases c2214 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v10 := by
      rcases c2213 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : v22 := by
      rcases c1588 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
    have u24 : ¬v27 := by
      rcases c96 with a|a|a
      · exact absurd u23 a
      · exact absurd u6 a
      · exact a
    have u25 : v30 := by
      rcases c2212 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u24
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v41 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u29 : ¬v40 := by
      rcases c1930 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u27
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u28
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u30 : v6 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a n5
    rcases c2148 with a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u29
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2216 : ¬v3 ∨ v33 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v23 := by
      rcases c2215 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v27 := by
      rcases c106 with a|a|a
      · exact absurd u1 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v25 := by
      rcases c103 with a|a|a
      · exact absurd u1 a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v22 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u1 a
    have u12 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u18 : v29 := by
      rcases c278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u9
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u24 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u15
    have u25 : ¬v41 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v5 := by
      rcases c2073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a n4
    have u27 : ¬v40 := by
      rcases c1930 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u28 : ¬v4 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a n4
    have u29 : v6 := by
      rcases c1976 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u28
      · exact absurd a u26
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a n3
    rcases c2148 with a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u27
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2217 : ¬v10 ∨ v2 ∨ v3 ∨ v9 ∨ v16 ∨ v17 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    rcases c397 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
  have c2218 : ¬v10 ∨ v2 ∨ v3 ∨ v16 ∨ v17 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2217 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2219 : ¬v23 ∨ v33 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v3 := by
      rcases c2216 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v46 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v22 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u10 : ¬v27 := by
      rcases c106 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u18 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u19 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u20 : v29 := by
      rcases c278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u10
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u25 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u17
    have u26 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u12
    have u27 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : v2 := by
      rcases c2218 with a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd u29 a
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u5
    · exact absurd a u27
    · exact absurd a u28
  have c2220 : v42 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v46 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v25 := by
      rcases c2214 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v23 := by
      rcases c2219 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v10 := by
      rcases c2213 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v3 := by
      rcases c2216 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u21
    rcases c2218 with a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u11
  have c2221 : ¬v42 ∨ v35 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v29 := by
      rcases c1642 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    rcases c359 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u2
  have c2222 : v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v15 := by
      rcases c2198 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u3 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u12 : v46 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u13 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v25 := by
      rcases c2214 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
    have u18 : v33 := by
      rcases c2220 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u19 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u24 : ¬v41 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u25 : ¬v23 := by
      rcases c2196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u1 a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u9
    have u26 : v10 := by
      rcases c2213 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u27 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u28
      · exact absurd a u14
      · exact a
      · exact absurd a u22
    have u31 : v22 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a u28
    have u32 : v3 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u30 a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u27
      · exact absurd a u28
    have u33 : ¬v27 := by
      rcases c96 with a|a|a
      · exact absurd u31 a
      · exact absurd u1 a
      · exact a
    rcases c2101 with a|a|a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd u32 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u33
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a n1
  have c2223 : ¬v41 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n4 a
    rcases c538 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u4
  have c2224 : ¬v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
  have c2225 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v33 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd n8 a
    have u2 : ¬v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n8 a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u3
  have c2226 : ¬v22 ∨ v1 ∨ v6 ∨ v14 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v28 := by
      rcases c96 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v23 := by
      rcases c85 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1644 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
  have c2227 : v23 ∨ ¬v3 ∨ ¬v10 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v6 := by
      rcases c2224 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n8
    have u14 : ¬v1 := by
      rcases c1974 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u15 : ¬v7 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n8
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v27 := by
      rcases c2225 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u17 : ¬v22 := by
      rcases c2226 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd u16 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v28 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u12
    have u19 : v24 := by
      rcases c1682 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    rcases c112 with a|a|a
    · exact absurd u19 a
    · exact absurd u18 a
    · exact absurd u16 a
  have c2228 : v9 ∨ ¬v3 ∨ v10 ∨ v23 ∨ v25 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v32 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n6 a
    have u2 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n6 a
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a n4
    have u5 : ¬v16 := by
      rcases c636 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u10 : ¬v1 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u11 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u6
      · exact a
      · exact absurd a n9
    have u12 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u14 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u16 : v8 := by
      rcases c1682 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u17 : v39 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n10
      · exact a
      · exact absurd a u8
    have u18 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u17 a
    rcases c264 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a n12
  have c2229 : ¬v21 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v24 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    have u6 : ¬v22 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    rcases c118 with a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u5
  have c2230 : v28 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v21 := by
      rcases c2229 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : v20 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n5 a
      · exact absurd a n11
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
    have u3 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v22 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
    have u6 : ¬v24 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    rcases c118 with a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u6
  have c2231 : ¬v15 ∨ v8 ∨ v12 ∨ v14 ∨ v19 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n0 a
      · exact a
    rcases c282 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n3
  have c2232 : v23 ∨ ¬v3 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v27 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : ¬v10 := by
      rcases c2227 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v28 := by
      rcases c2230 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
    have u11 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n5 a
    have u15 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n5 a
    have u16 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
    have u17 : ¬v1 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u18 : v2 := by
      rcases c2059 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u17
      · exact a
      · exact absurd a u15
      · exact absurd u10 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u19 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u18 a
      · exact absurd n1 a
      · exact a
    have u20 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u18 a
      · exact absurd n1 a
      · exact a
    have u22 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
      · exact a
      · exact absurd a n2
    have u23 : v9 := by
      rcases c2228 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd u10 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : v15 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u24
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    rcases c2231 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u4
  have c2233 : ¬v15 ∨ ¬v3 ∨ v10 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v24 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u8 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v2 := by
      rcases c2101 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
    have u10 : ¬v13 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v4 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n9
    rcases c25 with a|a|a
    · exact absurd u11 a
    · exact absurd n1 a
    · exact absurd u12 a
  have c2234 : v20 ∨ ¬v3 ∨ v10 ∨ v19 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v2 := by
      rcases c2101 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
    have u2 : v4 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u4 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n6
  have c2235 : v21 ∨ ¬v3 ∨ v10 ∨ v15 ∨ v17 ∨ v19 ∨ ¬v22 ∨ v23 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v20 := by
      rcases c2234 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v38 := by
      rcases c986 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n14
      · exact a
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v4 := by
      rcases c867 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
    have u6 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
    have u7 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a u3
      · exact a
      · exact absurd a n17
      · exact absurd a u6
      · exact absurd a n10
    rcases c1856 with a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n4
  exact ⟨c2193, c2198, c2202, c2203, c2218, c2221, c2222, c2223, c2224, c2227, c2230, c2231, c2232, c2233, c2234, c2235⟩
