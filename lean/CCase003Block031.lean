import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1550-1599 of the 2559-step refutation of ccase003: 124 core clauses and 76 earlier-derived ones give 14 more. -/
theorem CCase003_block031
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
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
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c77 : ¬v21 ∨ ¬v18)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c117 : v23 ∨ v22 ∨ v27 ∨ v26 ∨ v24 ∨ v25)
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
    (c139 : ¬v32 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c147 : ¬v38 ∨ ¬v36)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c169 : ¬v46 ∨ ¬v43)
    (c174 : ¬v46 ∨ ¬v44)
    (c178 : ¬v46 ∨ ¬v45)
    (c183 : ¬v46 ∨ ¬v48)
    (c184 : ¬v49 ∨ ¬v46)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c197 : v29 ∨ v21 ∨ v1 ∨ v34 ∨ v7 ∨ v2 ∨ v13 ∨ ¬v14 ∨ v20 ∨ v28 ∨ v8 ∨ v16 ∨ v9 ∨ v35)
    (c204 : v43 ∨ ¬v8 ∨ v4 ∨ v16 ∨ v7 ∨ v15 ∨ v1 ∨ v14 ∨ v11 ∨ v18 ∨ v9 ∨ v10 ∨ v44 ∨ v49)
    (c207 : ¬v10 ∨ v9 ∨ v18 ∨ v3 ∨ v17 ∨ v2 ∨ v11 ∨ v4)
    (c220 : ¬v46 ∨ v32 ∨ v26 ∨ v3 ∨ v25 ∨ v24 ∨ v37 ∨ v39 ∨ v4 ∨ v2 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c230 : ¬v46 ∨ v4 ∨ v40 ∨ v45 ∨ v38 ∨ v3 ∨ v39 ∨ v47)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c243 : v1 ∨ v6 ∨ v49 ∨ v48 ∨ v13 ∨ ¬v7 ∨ v14 ∨ v8)
    (c253 : ¬v32 ∨ v39 ∨ v38 ∨ v25 ∨ v26 ∨ v24 ∨ v33 ∨ v31)
    (c260 : ¬v46 ∨ v39 ∨ v5 ∨ v1 ∨ v4 ∨ v38 ∨ v36 ∨ v11 ∨ v10 ∨ v12 ∨ v43 ∨ v44 ∨ v45 ∨ v47)
    (c261 : ¬v8 ∨ v14 ∨ v15 ∨ v2 ∨ v9 ∨ v16 ∨ v1 ∨ v7)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c276 : ¬v38 ∨ v49 ∨ v24 ∨ v44 ∨ v45 ∨ v35 ∨ v25 ∨ v32 ∨ v31 ∨ v37 ∨ v42 ∨ v36 ∨ v39 ∨ v23)
    (c280 : v14 ∨ v49 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v48 ∨ v13)
    (c293 : v4 ∨ v6 ∨ v11 ∨ ¬v5 ∨ v13 ∨ v12 ∨ v47 ∨ v48)
    (c311 : v43 ∨ ¬v16 ∨ v44 ∨ v23 ∨ v9 ∨ v24 ∨ v2 ∨ v15 ∨ v11 ∨ v18 ∨ v17 ∨ v8 ∨ v25 ∨ v45)
    (c318 : v6 ∨ v4 ∨ v1 ∨ v19 ∨ v11 ∨ v12 ∨ v47 ∨ ¬v5 ∨ v20 ∨ v7 ∨ v18 ∨ v43 ∨ v8 ∨ v48)
    (c343 : ¬v11 ∨ v12 ∨ v3 ∨ v18 ∨ v4 ∨ v17 ∨ v10 ∨ v19)
    (c352 : ¬v11 ∨ v19 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v18 ∨ v10)
    (c359 : v43 ∨ ¬v42 ∨ v48 ∨ v35 ∨ v34 ∨ v36 ∨ v49 ∨ v41)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c382 : v29 ∨ ¬v21 ∨ v28 ∨ v24 ∨ v15 ∨ v8 ∨ v27 ∨ v14 ∨ v34 ∨ v16 ∨ v20 ∨ v17 ∨ v10 ∨ v35)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c394 : v36 ∨ v23 ∨ v35 ∨ v37 ∨ v42 ∨ ¬v29 ∨ v22 ∨ v30)
    (c414 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v9 ∨ v17 ∨ v8)
    (c417 : ¬v38 ∨ v37 ∨ v44 ∨ v31 ∨ v10 ∨ v33 ∨ v32 ∨ v45 ∨ v9 ∨ v11 ∨ v40 ∨ v39 ∨ v3 ∨ v47)
    (c432 : v16 ∨ v11 ∨ v17 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v2)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c517 : ¬v46 ∨ v39 ∨ v5 ∨ v4 ∨ v38 ∨ v3 ∨ v45 ∨ v47)
    (c518 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v44 ∨ v10 ∨ v4)
    (c557 : ¬v31 ∨ v38 ∨ v24 ∨ v30 ∨ v32 ∨ v37 ∨ v25 ∨ v23)
    (c566 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c568 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c598 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ v27 ∨ v28)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c636 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c637 : ¬v11 ∨ v4 ∨ v5 ∨ v10 ∨ v17 ∨ v18 ∨ v19)
    (c671 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v27)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c679 : v26 ∨ ¬v25 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c785 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v24)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c809 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c859 : ¬v10 ∨ ¬v21 ∨ v22 ∨ v28)
    (c887 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c906 : ¬v32 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c986 : v31 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1080 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c1155 : ¬v33 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41)
    (c1156 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v48)
    (c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1242 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26)
    (c1279 : ¬v30 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1281 : ¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1379 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1393 : ¬v41 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c1398 : ¬v7 ∨ v1 ∨ v6 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1446 : v12 ∨ v6 ∨ ¬v11 ∨ v19 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c1465 : ¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1503 : v28 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1573 : v39 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31 ∨ v38)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1590 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v39 ∨ v40)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1644 : v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1690 : v9 ∨ v2 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1715 : v6 ∨ ¬v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1748 : v28 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35)
    (c1856 : ¬v9 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17)
    (c1887 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c1902 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c1903 : ¬v31 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v41 ∨ v47 ∨ v48)
    (c1914 : v37 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v27 ∨ v35 ∨ v36 ∨ v41 ∨ v44)
    (c1916 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1927 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c1930 : ¬v40 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v32 ∨ v33 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1948 : ¬v38 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c1952 : ¬v30 ∨ v23 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38)
    (c1987 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v25 ∨ v27 ∨ v40 ∨ v41 ∨ v47)
    (c1995 : ¬v42 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    (c1999 : v26 ∨ v3 ∨ v5 ∨ v10 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v34 ∨ v41 ∨ v45 ∨ v47 ∨ v48)
    (c2005 : ¬v1 ∨ v47 ∨ v48 ∨ v49)
    (c2032 : v15 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c2046 : ¬v24 ∨ v47 ∨ v48 ∨ v49)
    (c2071 : ¬v2 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c2074 : ¬v12 ∨ v4 ∨ v5 ∨ v18 ∨ v19 ∨ v20)
    (c2080 : ¬v35 ∨ v47 ∨ v48 ∨ v49)
    (c2085 : v34 ∨ ¬v3 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49)
    (c2095 : ¬v19 ∨ v47 ∨ v48 ∨ v49)
    (c2096 : v21 ∨ v1 ∨ ¬v8 ∨ v15 ∨ v19 ∨ v20 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2112 : v34 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49)
    (c2116 : ¬v26 ∨ v47 ∨ v48 ∨ v49)
    (c2124 : ¬v34 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c2125 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c2129 : ¬v3 ∨ ¬v14 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c2130 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v43 ∨ v44 ∨ v45)
    (c2132 : v47 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v15 ∨ v17 ∨ v28 ∨ v29 ∨ v30 ∨ v48 ∨ v49)
    : (¬v6 ∨ ¬v3 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49) ∧ (v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11) ∧ (v28 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v33 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49) ∧ (v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v34 ∨ v41 ∨ v48) ∧ (v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45) ∧ (v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v29 ∨ v15 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28) ∧ (v22 ∨ v1 ∨ v8 ∨ v15 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v3 ∨ v14 ∨ v15 ∨ v34 ∨ v47 ∨ v48 ∨ v49) ∧ (v38 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31 ∨ v37) ∧ (v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45) ∧ (v47 ∨ v8 ∨ v12 ∨ v14 ∨ v15 ∨ v27 ∨ v34 ∨ v48 ∨ v49) := by
  have c2133 : v30 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v15 ∨ v17 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v29 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n6
    have u10 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c1927 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u3
  have c2134 : ¬v21 ∨ v2 ∨ v3 ∨ v10 ∨ v12 ∨ v13 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v9 := by
      rcases c1856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
    have u14 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : v5 := by
      rcases c1999 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v33 := by
      rcases c2130 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u21 : ¬v27 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u11
    have u22 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n8
    have u23 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v11 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u2
    have u25 : v30 := by
      rcases c2133 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u26 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u26
      · exact absurd a u4
    have u29 : ¬v40 := by
      rcases c1930 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u30 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u28 a
      · exact a
    rcases c417 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u31
    · exact absurd a u16
    · exact absurd a u26
    · exact absurd a n3
    · exact absurd a u20
    · exact absurd a u27
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u24
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a n2
    · exact absurd a n7
  have c2135 : ¬v38 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n0 a
      · exact a
    rcases c417 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n11
  have c2136 : ¬v30 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c134 with a|a
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
    have u6 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v24 := by
      rcases c2046 with a|a|a|a
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
    have u9 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v38 := by
      rcases c2135 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
    have u14 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u1
      · exact a
    have u15 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v25 := by
      rcases c1080 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u7
      · exact a
    rcases c1279 with a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd u16 a
    · exact absurd a u6
  have c2137 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v23 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n4
    have u4 : v25 := by
      rcases c1080 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact a
    have u5 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v26 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u7 : v29 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    rcases c1281 with a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd u4 a
    · exact absurd a u6
  have c2138 : v15 ∨ v2 ∨ v3 ∨ ¬v5 ∨ v10 ∨ v13 ∨ v17 ∨ v21 ∨ v28 ∨ v30 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v4 := by
      rcases c2133 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u1 a
    have u7 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v14 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v8 := by
      rcases c2125 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd u10 a
      · exact absurd a n7
    rcases c43 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c2139 : v31 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u2
    have u10 : ¬v21 := by
      rcases c2134 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v30 := by
      rcases c2136 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v17 := by
      rcases c2137 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n0
    have u14 : ¬v33 := by
      rcases c2130 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u15 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u13
    have u16 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v32 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
    have u19 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u17
    have u20 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v25 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u3
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
    have u22 : v15 := by
      rcases c2138 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd u19 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u11
    have u25 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd u24 a
      · exact absurd u21 a
      · exact a
    rcases c799 with a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u3
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a n0
  have c2140 : v17 ∨ ¬v14 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v3 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u5
    have u19 : v31 := by
      rcases c2139 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v5 := by
      rcases c1903 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v21 := by
      rcases c2134 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v15 := by
      rcases c2138 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd u22 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v27 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u9
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a n2
    have u28 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a n4
      · exact absurd a u7
    have u29 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u28 a
    rcases c197 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u29
    · exact absurd a u18
    · exact absurd a u6
    · exact absurd n1 a
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a u9
  have c2141 : ¬v14 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v17 := by
      rcases c2140 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u15 : v23 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u12
      · exact a
      · exact absurd a u9
    have u16 : v25 := by
      rcases c1080 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u9
      · exact a
    have u17 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd u15 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd u16 a
      · exact absurd a u6
    have u19 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd u16 a
      · exact absurd a u6
    rcases c1356 with a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a n4
  have c2142 : ¬v17 ∨ v10 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v14 := by
      rcases c2141 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v8 := by
      rcases c2096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u10
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u20 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u20 a
    have u22 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u20 a
    have u23 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u20 a
    have u24 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u20 a
    have u25 : ¬v9 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u1
    have u26 : ¬v12 := by
      rcases c2074 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    have u27 : ¬v11 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a n1
    have u28 : v25 := by
      rcases c1080 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u27
      · exact absurd a u2
      · exact absurd a u11
      · exact a
    have u29 : v23 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u27
      · exact absurd a u1
      · exact a
      · exact absurd a u11
    have u30 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd u28 a
      · exact absurd a u8
    have u31 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd u28 a
      · exact absurd a u8
    have u32 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd u29 a
      · exact absurd u28 a
      · exact a
    rcases c1356 with a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a n5
  have c2143 : v21 ∨ v3 ∨ v28 ∨ ¬v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c2141 with a|a|a|a|a
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
    have u3 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n2
    have u8 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u10 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    rcases c1948 with a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd u2 a
    · exact absurd a n4
  have c2144 : v31 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v9 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n7
    have u3 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v46 := by
      rcases c986 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n17
      · exact absurd a n18
      · exact a
    have u8 : v23 := by
      rcases c1914 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v49 := by
      rcases c184 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n8 a
    have u11 : ¬v14 := by
      rcases c2141 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a u9
    have u12 : v21 := by
      rcases c2143 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd u2 a
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a u9
    have u13 : ¬v32 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v4 := by
      rcases c220 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u16 : v30 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n17
      · exact absurd a n18
    have u17 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v8 := by
      rcases c382 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u12 a
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n5
      · exact a
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n15
    have u19 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a u14
      · exact absurd a n20
      · exact absurd a n14
    rcases c887 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd u15 a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a u9
  have c2145 : v48 ∨ v3 ∨ v10 ∨ v15 ∨ v28 ∨ v31 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v17 := by
      rcases c2142 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u2 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u3 : ¬v14 := by
      rcases c2141 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u4 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u5 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u7 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u8 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u9 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u10 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
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
    have u14 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u1
    have u15 : ¬v33 := by
      rcases c2130 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u16 : v21 := by
      rcases c2143 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u14 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u17 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v27 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
    have u20 : v22 := by
      rcases c1365 with a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u3
      · exact a
      · exact absurd a u19
      · exact absurd a n4
    have u21 : v2 := by
      rcases c2144 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd u20 a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n0
    have u22 : v9 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a u8
    have u23 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u22 a
    rcases c598 with a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u3
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n4
  have c2146 : v6 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v14 := by
      rcases c2141 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v19 := by
      rcases c2095 with a|a|a|a
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
    have u6 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v1 := by
      rcases c2005 with a|a|a|a
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
    have u9 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v13 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n6
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v21 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v17 := by
      rcases c2142 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u18 a
    have u25 : v4 := by
      rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd u19 a
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n6
    have u26 : v29 := by
      rcases c382 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u6
    have u27 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u26 a
      · exact a
    rcases c2145 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u27
    · exact absurd a u15
    · exact absurd a u22
    · exact absurd a n2
    · exact absurd a u28
    · exact absurd a n5
    · exact absurd a n7
  have c2147 : v3 ∨ v10 ∨ v15 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v14 := by
      rcases c2141 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v17 := by
      rcases c2142 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
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
      · exact absurd u3 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v33 := by
      rcases c2130 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u14 : v31 := by
      rcases c2145 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    have u15 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v22 := by
      rcases c2032 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v23 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u18 a
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u7
    have u20 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    have u22 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v2 := by
      rcases c2071 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : v6 := by
      rcases c2146 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u25 : v4 := by
      rcases c2133 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u24 a
    have u28 : v21 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u26
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u29 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u27
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u20
    have u30 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u29 a
    rcases c382 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u28 a
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u32
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u7
  have c2148 : ¬v6 ∨ ¬v3 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u7 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u3
  have c2149 : v40 ∨ ¬v3 ∨ v28 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c2148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v14 := by
      rcases c2141 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
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
    have u8 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v21 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v27 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
    have u17 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u2
    have u18 : ¬v4 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v5 := by
      rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n4
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a n5
    rcases c809 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u22
    · exact absurd a u1
    · exact absurd a u21
    · exact absurd u17 a
    · exact absurd a u3
    · exact absurd a u15
  have c2150 : v33 ∨ ¬v3 ∨ v15 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
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
    have u6 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v40 := by
      rcases c2149 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v32 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v22 := by
      rcases c2032 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v25 := by
      rcases c253 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u12
    have u16 : v23 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u14 a
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u4
    rcases c83 with a|a|a
    · exact absurd u16 a
    · exact absurd u15 a
    · exact absurd u14 a
  have c2151 : v6 ∨ v1 ∨ v10 ∨ v14 ∨ v15 ∨ v17 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v13 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
    have u3 : v21 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u3 a
    rcases c382 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd u3 a
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n12
  have c2152 : v15 ∨ v10 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v14 := by
      rcases c2141 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : v3 := by
      rcases c2147 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v17 := by
      rcases c2142 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v33 := by
      rcases c2150 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v22 := by
      rcases c2032 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v23 := by
      rcases c1465 with a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n0
      · exact absurd u17 a
      · exact a
      · exact absurd a n2
    have u19 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u18 a
    have u20 : v6 := by
      rcases c2151 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u20 a
    have u22 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v5 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u20 a
    have u24 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u20 a
    have u25 : v21 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v9 := by
      rcases c1856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd a u14
    have u29 : ¬v11 := by
      rcases c637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a u4
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u21
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u24
  have c2153 : v10 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u12 : v15 := by
      rcases c2152 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v14 := by
      rcases c2141 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n1
    have u20 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u21 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u22 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u23 : v12 := by
      rcases c1999 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
    rcases c2074 with a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a u16
  have c2155 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v16 := by
      rcases c432 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n1
    have u2 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u1 a
      · exact a
    rcases c207 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n3
  have c2156 : v4 ∨ v3 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v10 := by
      rcases c2153 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u16 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u17 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u18 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u12
    have u19 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
    have u20 : v17 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd u2 a
      · exact absurd a u13
    have u21 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v27 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a n2
    have u26 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u27 : ¬v31 := by
      rcases c1903 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u28 : ¬v38 := by
      rcases c1948 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd u5 a
      · exact absurd a n3
    have u29 : v39 := by
      rcases c517 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd a u28
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n3
    have u30 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd a u30
    have u32 : v25 := by
      rcases c1987 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u4
      · exact a
      · exact absurd a u25
      · exact absurd a u30
      · exact absurd a u9
      · exact absurd a n3
    have u33 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u31 a
      · exact a
    have u35 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u31 a
    rcases c1748 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd u32 a
    · exact absurd a u3
    · exact absurd a u25
    · exact absurd a u33
    · exact absurd a u34
    · exact absurd a u27
    · exact absurd a u35
    · exact absurd a u8
  have c2157 : v6 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v10 := by
      rcases c2153 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
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
    have u7 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v7 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a u7
    have u12 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : v21 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u15 : v27 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
    have u16 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v22 := by
      rcases c859 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u14 a
      · exact a
      · exact absurd a n1
    have u19 : v33 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n1
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
    have u20 : v23 := by
      rcases c1465 with a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u16
      · exact absurd u18 a
      · exact a
      · exact absurd a n1
    rcases c85 with a|a|a
    · exact absurd u15 a
    · exact absurd u18 a
    · exact absurd u20 a
  have c2158 : v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v6 := by
      rcases c2157 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v10 := by
      rcases c2153 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v4 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v3 := by
      rcases c2156 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v5 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u1 a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd u1 a
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u4
  have c2159 : ¬v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v5 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u5 : v14 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n3
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u3
  have c2160 : ¬v33 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1356 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
  have c2161 : v34 ∨ v5 ∨ v8 ∨ v12 ∨ v15 ∨ ¬v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c2112 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v42 := by
      rcases c1995 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v31 := by
      rcases c1903 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n5 a
    have u13 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n5 a
    have u14 : ¬v33 := by
      rcases c2160 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n8
    have u15 : v40 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u14
      · exact a
    have u16 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v30 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
    have u20 : v29 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u13
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    rcases c394 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd u20 a
    · exact absurd a u13
    · exact absurd a u19
  have c2162 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n7
  have c2163 : v47 ∨ ¬v3 ∨ ¬v10 ∨ v14 ∨ v15 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v19 := by
      rcases c2085 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v26 := by
      rcases c2112 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v6 := by
      rcases c2159 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v27 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n6
    have u10 : v5 := by
      rcases c2161 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd u10 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n6
  have c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v37 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
    rcases c1941 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2165 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    rcases c1663 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2166 : ¬v3 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v10 ∨ v14 ∨ v15 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v16 := by
      rcases c636 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v4 := by
      rcases c204 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd n3 a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v2 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
    rcases c14 with a|a|a
    · exact absurd u7 a
    · exact absurd n0 a
    · exact absurd u6 a
  have c2167 : ¬v3 ∨ v6 ∨ v12 ∨ v14 ∨ v15 ∨ ¬v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c2085 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v10 := by
      rcases c2163 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v26 := by
      rcases c2112 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n5 a
    have u14 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n5 a
    have u15 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u7 a
      · exact absurd n5 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u2
      · exact a
      · exact absurd a u9
      · exact absurd a u15
    have u19 : ¬v8 := by
      rcases c2166 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u17
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
    have u20 : ¬v33 := by
      rcases c2160 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n9
    have u21 : v29 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
    have u22 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u25 : v36 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd u21 a
      · exact absurd a u14
      · exact absurd a u23
    have u26 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u26
    have u28 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u27 a
      · exact absurd n0 a
      · exact a
    have u29 : ¬v2 := by
      rcases c15 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u27 a
    have u30 : v9 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u11
    have u31 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : v16 := by
      rcases c1856 with a|a|a|a|a|a
      · exact absurd u30 a
      · exact absurd a u6
      · exact absurd a u29
      · exact absurd a n4
      · exact a
      · exact absurd a u18
    have u33 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u3
    have u34 : v20 := by
      rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u31
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd u27 a
      · exact a
      · exact absurd a u17
      · exact absurd a u33
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a n8
    rcases c69 with a|a
    · exact absurd u32 a
    · exact absurd u34 a
  have c2168 : v14 ∨ ¬v3 ∨ v12 ∨ v15 ∨ ¬v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v10 := by
      rcases c2163 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v6 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u7 : v13 := by
      rcases c2159 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u9 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u7 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u8
  have c2169 : v47 ∨ ¬v3 ∨ v14 ∨ v15 ∨ ¬v27 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c2085 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
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
    have u11 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n4 a
    have u12 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n4 a
    have u13 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v12 := by
      rcases c2168 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v29 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u18 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u7
    have u19 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : v2 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u21 a
      · exact absurd n1 a
      · exact a
    have u23 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u21 a
      · exact absurd n1 a
      · exact a
    rcases c1578 with a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd u14 a
    · exact absurd a u1
  have c2170 : ¬v29 ∨ v15 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v25 := by
      rcases c679 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
    have u8 : v23 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u7
    have u9 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
    have u10 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n1
  have c2171 : ¬v8 ∨ ¬v3 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v26 := by
      rcases c2112 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v19 := by
      rcases c2085 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v6 := by
      rcases c2159 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c2162 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n5
  have c2172 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v29 := by
      rcases c2170 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
    rcases c2165 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2173 : ¬v2 ∨ v1 ∨ ¬v3 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v36 ∨ v41 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd n12 a
      · exact a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n12 a
      · exact a
    have u6 : v40 := by
      rcases c1987 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n13
    have u7 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u6 a
    rcases c260 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n12 a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n13
  have c2174 : v25 ∨ v1 ∨ ¬v3 ∨ v6 ∨ v8 ∨ v10 ∨ v12 ∨ v14 ∨ v15 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v34 ∨ v35 ∨ v36 ∨ v41 ∨ ¬v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v11 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n20
    have u2 : v13 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n20
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n18 a
      · exact a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd n18 a
      · exact a
    have u5 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n5
      · exact a
      · exact absurd a n11
      · exact absurd a n0
    have u6 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v16 := by
      rcases c414 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u8 : ¬v2 := by
      rcases c2173 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd n18 a
      · exact absurd a n19
    have u9 : v37 := by
      rcases c1914 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a u4
    have u10 : v4 := by
      rcases c518 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact a
    have u11 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u10 a
    have u14 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n17
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n12
    · exact absurd a u13
    · exact absurd a n19
    · exact absurd a n9
    · exact absurd a u14
    · exact absurd a u12
  have c2175 : ¬v3 ∨ v12 ∨ v14 ∨ v15 ∨ v34 ∨ v36 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c2169 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v8 := by
      rcases c2171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v10 := by
      rcases c2163 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v19 := by
      rcases c2095 with a|a|a|a
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
    have u7 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
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
    have u14 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v42 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u14
    have u16 : v22 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n8
    have u17 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u16 a
      · exact absurd u8 a
      · exact a
    have u18 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u16 a
      · exact absurd u8 a
      · exact a
    have u19 : v6 := by
      rcases c2174 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u19 a
    have u21 : v13 := by
      rcases c2159 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u19 a
    have u23 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u21 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a u22
  have c2176 : ¬v12 ∨ ¬v3 ∨ v25 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u7 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v6 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u15
  have c2177 : ¬v3 ∨ v14 ∨ v15 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v28 := by
      rcases c2158 with a|a|a|a
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
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v27 := by
      rcases c2169 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v8 := by
      rcases c2171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v22 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u16 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u15 a
      · exact absurd u5 a
      · exact a
    have u17 : ¬v12 := by
      rcases c2176 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v10 := by
      rcases c2163 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v36 := by
      rcases c2175 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u11
    have u24 : ¬v32 := by
      rcases c906 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u21
    have u25 : ¬v6 := by
      rcases c2148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u21
    have u27 : ¬v2 := by
      rcases c2071 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u28 : v13 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u25
      · exact absurd a u17
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n5
    have u29 : ¬v11 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u25
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n5
    have u30 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u26 a
      · exact absurd n0 a
      · exact a
    have u31 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u28 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u27
    · exact absurd a u31
    · exact absurd a u29
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a u30
  have c2179 : v38 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n4 a
      · exact a
    rcases c557 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n1
  have c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v31 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u1
    have u3 : v37 := by
      rcases c2179 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u2 a
      · exact a
    have u4 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u3 a
    rcases c1573 with a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u2 a
    · exact absurd a n0
  have c2181 : v27 ∨ v8 ∨ v10 ∨ v12 ∨ v14 ∨ v15 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v3 := by
      rcases c2177 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v22 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n9
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
    have u17 : v38 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u9
    have u18 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u15
    have u19 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v33 := by
      rcases c2130 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u24 : ¬v32 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u20
    have u25 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u23
      · exact absurd a u20
    have u26 : v31 := by
      rcases c276 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u24
      · exact a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u16
    have u27 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v2 := by
      rcases c2071 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u29 : v4 := by
      rcases c220 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u19
      · exact a
      · exact absurd a u28
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u30 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u25 a
      · exact absurd u29 a
      · exact a
    have u31 : v13 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u30
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n8
    have u32 : ¬v11 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u30
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n8
    have u33 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v18 := by
      rcases c1242 with a|a|a|a|a|a
      · exact absurd u31 a
      · exact absurd a u18
      · exact a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u2
    have u35 : ¬v16 := by
      rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u33
      · exact absurd a u8
      · exact absurd a u28
      · exact absurd a n5
      · exact absurd a u32
      · exact absurd a u34
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u9
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u35
    · exact absurd a u33
    · exact absurd a u10
    · exact absurd a u28
    · exact absurd a u27
  have c2182 : ¬v38 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v22 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v49 := by
      rcases c184 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v48 := by
      rcases c183 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n8 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd n8 a
      · exact a
    have u9 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v27 := by
      rcases c96 with a|a|a
      · exact absurd n4 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u12 : ¬v32 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u2
    rcases c220 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a u12
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n9
  have c2183 : v39 ∨ v2 ∨ v3 ∨ v4 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v38 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : v10 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
    have u4 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v17 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a u5
    have u7 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v40 := by
      rcases c230 with a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n11
    have u9 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v31 := by
      rcases c2179 with a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u10
    have u12 : v30 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n1
      · exact a
    rcases c1952 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n9
  have c2184 : v47 ∨ v8 ∨ v12 ∨ v14 ∨ v15 ∨ v27 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v3 := by
      rcases c2177 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v28 := by
      rcases c2158 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
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
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v22 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
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
    have u17 : v10 := by
      rcases c2181 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u18
    have u22 : v6 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n7
    have u23 : ¬v4 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u24 : v17 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd u17 a
      · exact absurd a u19
    have u25 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v38 := by
      rcases c2182 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a n0
    have u27 : v39 := by
      rcases c2183 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd u4 a
      · exact absurd a n0
    have u28 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v31 := by
      rcases c2179 with a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u15
      · exact a
      · exact absurd a u29
    have u31 : v30 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u29
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u21
      · exact a
    rcases c1952 with a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a u30
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u26
  exact ⟨c2148, c2155, c2158, c2159, c2160, c2162, c2164, c2165, c2170, c2172, c2177, c2179, c2180, c2184⟩
