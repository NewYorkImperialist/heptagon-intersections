import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1500-1549 of the 2559-step refutation of ccase003: 125 core clauses and 78 earlier-derived ones give 17 more. -/
theorem CCase003_block030
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v21)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c105 : ¬v28 ∨ ¬v26 ∨ ¬v23)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
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
    (c142 : ¬v34 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c145 : v29 ∨ v30 ∨ v32 ∨ v35 ∨ v34 ∨ v31 ∨ v33)
    (c148 : ¬v39 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c169 : ¬v46 ∨ ¬v43)
    (c174 : ¬v46 ∨ ¬v44)
    (c175 : ¬v47 ∨ ¬v44)
    (c178 : ¬v46 ∨ ¬v45)
    (c179 : ¬v47 ∨ ¬v45)
    (c184 : ¬v49 ∨ ¬v46)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c216 : ¬v21 ∨ v28 ∨ v14 ∨ v27 ∨ v8 ∨ v15 ∨ v13 ∨ v20)
    (c220 : ¬v46 ∨ v32 ∨ v26 ∨ v3 ∨ v25 ∨ v24 ∨ v37 ∨ v39 ∨ v4 ∨ v2 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c226 : v29 ∨ v22 ∨ v28 ∨ v25 ∨ ¬v21 ∨ v14 ∨ v20 ∨ v18 ∨ v13 ∨ v15 ∨ v19 ∨ v11 ∨ v34 ∨ v35)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c243 : v1 ∨ v6 ∨ v49 ∨ v48 ∨ v13 ∨ ¬v7 ∨ v14 ∨ v8)
    (c261 : ¬v8 ∨ v14 ∨ v15 ∨ v2 ∨ v9 ∨ v16 ∨ v1 ∨ v7)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c280 : v14 ∨ v49 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v48 ∨ v13)
    (c283 : v43 ∨ ¬v8 ∨ v15 ∨ v44 ∨ v21 ∨ v14 ∨ v12 ∨ v1 ∨ v5 ∨ v9 ∨ v19 ∨ v13 ∨ v2 ∨ v49)
    (c288 : ¬v14 ∨ v6 ∨ v20 ∨ v21 ∨ v7 ∨ v13 ∨ v1 ∨ v8)
    (c295 : ¬v34 ∨ v41 ∨ v33 ∨ v27 ∨ v42 ∨ v49 ∨ v26 ∨ v35 ∨ v38 ∨ v32 ∨ v31 ∨ v47 ∨ v48 ∨ v24)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c299 : v29 ∨ v23 ∨ v35 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v16 ∨ v28)
    (c318 : v6 ∨ v4 ∨ v1 ∨ v19 ∨ v11 ∨ v12 ∨ v47 ∨ ¬v5 ∨ v20 ∨ v7 ∨ v18 ∨ v43 ∨ v8 ∨ v48)
    (c323 : ¬v25 ∨ v32 ∨ v33 ∨ v26 ∨ v24 ∨ v31 ∨ v17 ∨ v18)
    (c358 : v43 ∨ ¬v37 ∨ v45 ∨ v44 ∨ v30 ∨ v29 ∨ v36 ∨ v38)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c379 : ¬v46 ∨ v4 ∨ v40 ∨ v45 ∨ v38 ∨ v39 ∨ v5 ∨ v47)
    (c383 : v38 ∨ ¬v31 ∨ v3 ∨ v2 ∨ v37 ∨ v30 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v4 ∨ v24 ∨ v40 ∨ v45)
    (c394 : v36 ∨ v23 ∨ v35 ∨ v37 ∨ v42 ∨ ¬v29 ∨ v22 ∨ v30)
    (c397 : ¬v10 ∨ v16 ∨ v17 ∨ v3 ∨ v11 ∨ v2 ∨ v9 ∨ v18)
    (c417 : ¬v38 ∨ v37 ∨ v44 ∨ v31 ∨ v10 ∨ v33 ∨ v32 ∨ v45 ∨ v9 ∨ v11 ∨ v40 ∨ v39 ∨ v3 ∨ v47)
    (c431 : v36 ∨ ¬v30 ∨ v37 ∨ v31 ∨ v24 ∨ v23 ∨ v22 ∨ v29)
    (c517 : ¬v46 ∨ v39 ∨ v5 ∨ v4 ∨ v38 ∨ v3 ∨ v45 ∨ v47)
    (c518 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v44 ∨ v10 ∨ v4)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c594 : v18 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c689 : ¬v19 ∨ ¬v26 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v35)
    (c716 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v13 ∨ v15 ∨ v21)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c840 : v20 ∨ v15 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1080 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c1111 : ¬v28 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1155 : ¬v33 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41)
    (c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1232 : ¬v20 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1274 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1281 : ¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1393 : ¬v41 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c1398 : ¬v7 ∨ v1 ∨ v6 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1419 : ¬v28 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v26 ∨ v27)
    (c1464 : ¬v29 ∨ v19 ∨ ¬v22 ∨ ¬v26)
    (c1483 : ¬v22 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v34)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1501 : ¬v11 ∨ v17 ∨ v18 ∨ v21 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1503 : v28 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1513 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v27 ∨ v29 ∨ v35)
    (c1561 : ¬v15 ∨ v8 ∨ v22 ∨ v23 ∨ v28)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1590 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v39 ∨ v40)
    (c1593 : ¬v29 ∨ ¬v23 ∨ v24 ∨ v26 ∨ ¬v27)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1644 : v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1690 : v9 ∨ v2 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1730 : ¬v19 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v35)
    (c1747 : ¬v15 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32)
    (c1792 : ¬v18 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35)
    (c1816 : ¬v28 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c1820 : v6 ∨ v1 ∨ ¬v10 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1827 : v28 ∨ v1 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c1842 : ¬v6 ∨ v1 ∨ ¬v2 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c1856 : ¬v9 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17)
    (c1857 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1858 : ¬v21 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1874 : v1 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v29 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    (c1886 : ¬v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1887 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c1902 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c1913 : v22 ∨ v6 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1916 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1922 : ¬v22 ∨ ¬v26 ∨ v27 ∨ ¬v34)
    (c1923 : ¬v38 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c1925 : ¬v26 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v27 ∨ ¬v34)
    (c1927 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c1934 : ¬v19 ∨ v3 ∨ v4 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2005 : ¬v1 ∨ v47 ∨ v48 ∨ v49)
    (c2011 : ¬v26 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49)
    (c2031 : ¬v20 ∨ v22 ∨ v29 ∨ v36 ∨ v47 ∨ v48 ∨ v49)
    (c2032 : v15 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c2036 : v14 ∨ v21 ∨ v28 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c2046 : ¬v24 ∨ v47 ∨ v48 ∨ v49)
    (c2056 : ¬v2 ∨ v1 ∨ v19 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47)
    (c2065 : ¬v19 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 ∨ v47 ∨ v48 ∨ v49)
    (c2072 : v3 ∨ v1 ∨ v2 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c2073 : ¬v5 ∨ ¬v3 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c2080 : ¬v35 ∨ v47 ∨ v48 ∨ v49)
    : (v34 ∨ ¬v3 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v19 ∨ v47 ∨ v48 ∨ v49) ∧ (v21 ∨ v1 ∨ ¬v8 ∨ v15 ∨ v19 ∨ v20 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v44 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v3 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48) ∧ (¬v23 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34) ∧ (v34 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v22 ∨ ¬v26 ∨ ¬v34) ∧ (¬v28 ∨ v19 ∨ v20 ∨ ¬v26 ∨ ¬v34 ∨ v35) ∧ (¬v23 ∨ v24 ∨ ¬v26 ∨ ¬v34) ∧ (¬v26 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v28 ∨ v47 ∨ v48 ∨ v49) ∧ (v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21) ∧ (v21 ∨ v1 ∨ ¬v3 ∨ ¬v14 ∨ v44 ∨ v45) ∧ (¬v3 ∨ ¬v14 ∨ v28 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v43 ∨ v44 ∨ v45) ∧ (v47 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v15 ∨ v17 ∨ v28 ∨ v29 ∨ v30 ∨ v48 ∨ v49) := by
  have c2081 : ¬v3 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v24 := by
      rcases c2046 with a|a|a|a
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
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v25 := by
      rcases c1730 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
    have u10 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
    have u11 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u10
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n2
    have u13 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n2
    have u14 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n2
    have u15 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n4
    have u17 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u16 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u18
  have c2082 : v29 ∨ ¬v19 ∨ ¬v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n3
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
    have u9 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a n3
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v36 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    rcases c1663 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n6
  have c2083 : v26 ∨ ¬v3 ∨ ¬v19 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v24 := by
      rcases c2046 with a|a|a|a
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
    have u9 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u14 : v27 := by
      rcases c2081 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd u14 a
      · exact absurd a n3
    have u16 : v29 := by
      rcases c2082 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u14 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v25 := by
      rcases c1281 with a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a n0
    have u22 : ¬v23 := by
      rcases c1593 with a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd u14 a
    have u23 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u24 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u21
      · exact absurd a n0
    have u26 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u10
    have u27 : v36 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a u19
    have u28 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a u11
      · exact a
      · exact absurd a u19
    have u29 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u28 a
      · exact absurd n1 a
      · exact a
    have u31 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u28 a
      · exact a
    rcases c379 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u30
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a u26
    · exact absurd a u29
    · exact absurd a u31
    · exact absurd a n4
  have c2084 : ¬v27 ∨ ¬v3 ∨ ¬v19 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v26 := by
      rcases c2083 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a n3
    have u13 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
    have u14 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v11 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u17 a
      · exact absurd n1 a
      · exact a
    have u22 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    have u23 : ¬v10 := by
      rcases c1820 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n6
    have u24 : ¬v9 := by
      rcases c1856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u23
    · exact absurd a u21
  have c2085 : v34 ∨ ¬v3 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v26 := by
      rcases c2083 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v27 := by
      rcases c2084 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v28 := by
      rcases c689 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u9 a
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a u6
    have u12 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
    have u14 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n0
    have u15 : v14 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u7
      · exact absurd a u13
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    rcases c58 with a|a
    · exact absurd u15 a
    · exact absurd u14 a
  have c2087 : ¬v34 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v26 := by
      rcases c2065 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v25 := by
      rcases c323 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u10
    have u18 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u14 a
      · exact a
    have u21 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u16
    have u22 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u16
    have u23 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u16
    have u24 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u19
    have u25 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a n4
    have u26 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
    have u27 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u15
      · exact a
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u8
    have u28 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u18
    have u29 : ¬v27 := by
      rcases c1513 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u30 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u28
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u9
    have u31 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u29
    have u32 : v41 := by
      rcases c295 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u6
      · exact absurd a u29
      · exact absurd a u26
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u28
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
    have u33 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u31
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u29
    have u34 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u32 a
      · exact a
    have u35 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u32 a
      · exact a
    have u36 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u33 a
      · exact a
    have u37 : v28 := by
      rcases c2036 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u36
      · exact absurd a u12
      · exact a
      · exact absurd a u3
      · exact absurd a u28
      · exact absurd a u34
      · exact absurd a u35
      · exact absurd a u26
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u38 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u27 a
      · exact absurd u37 a
      · exact a
    have u39 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u38
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u19
      · exact a
      · exact absurd a u1
    have u40 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u39 a
      · exact absurd u30 a
      · exact a
    have u41 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u30 a
      · exact absurd u39 a
      · exact a
    rcases c379 with a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u40
    · exact absurd a u35
    · exact absurd a u18
    · exact absurd a u28
    · exact absurd a u34
    · exact absurd a u41
    · exact absurd a n2
  have c2088 : v29 ∨ ¬v19 ∨ v26 ∨ v31 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v34 := by
      rcases c2087 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v3 := by
      rcases c2085 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n6
    have u18 : v22 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v27 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a u6
    have u20 : ¬v25 := by
      rcases c1730 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u10
    have u21 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u19
    have u22 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a n2
    have u23 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a n2
    have u24 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u3
    have u25 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u12
    have u29 : v32 := by
      rcases c417 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u27
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u28
      · exact a
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a n4
    rcases c1590 with a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a n2
    · exact absurd a u28
    · exact absurd a u25
    · exact absurd a u26
  have c2089 : v31 ∨ ¬v19 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v34 := by
      rcases c2087 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v3 := by
      rcases c2085 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v29 := by
      rcases c2088 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v25 := by
      rcases c1281 with a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a n2
    have u14 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u15 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a n2
    have u16 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u1
  have c2090 : v37 ∨ v2 ∨ v3 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v31 ∨ v40 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : v38 := by
      rcases c383 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u1
    have u7 : v39 := by
      rcases c220 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n10
    rcases c157 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2091 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    rcases c358 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
  have c2092 : v26 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v34 := by
      rcases c2087 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v3 := by
      rcases c2085 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
    have u17 : v31 := by
      rcases c2089 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n4
    have u23 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
    have u24 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u25 : v22 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v27 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a u6
    have u27 : ¬v25 := by
      rcases c1730 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd a u10
    have u28 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd a u26
    have u29 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u28
      · exact a
      · exact absurd n1 a
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd a u26
    have u30 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u27
      · exact absurd a n0
    have u31 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u27
      · exact absurd a n0
    have u32 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u29 a
      · exact a
    have u33 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u30
      · exact absurd a u31
      · exact absurd a u11
    have u34 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u6
    have u35 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u31
      · exact absurd a u14
      · exact absurd a u33
      · exact absurd a u19
    have u36 : v4 := by
      rcases c2090 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u33
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd u17 a
      · exact absurd a u23
      · exact absurd u9 a
      · exact absurd a n2
    have u37 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u35 a
    have u38 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd u36 a
      · exact a
      · exact absurd u34 a
    rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u37
    · exact absurd a u11
    · exact absurd a u38
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a n4
  have c2093 : ¬v31 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u6 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n5 a
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
    have u8 : ¬v28 := by
      rcases c840 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n5 a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n8
    have u11 : v22 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n5 a
      · exact absurd u11 a
      · exact a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd u11 a
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u2
  have c2094 : v30 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v34 := by
      rcases c2087 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v26 := by
      rcases c2092 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v3 := by
      rcases c2085 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v31 := by
      rcases c2093 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u19 : v29 := by
      rcases c2065 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v28 := by
      rcases c1816 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u10
    have u23 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
    have u24 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
    have u25 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u3
    have u26 : v4 := by
      rcases c1934 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u13
      · exact a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u14
    have u27 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd u26 a
      · exact absurd u24 a
      · exact a
    rcases c243 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u30
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u28
    · exact absurd u24 a
    · exact absurd a u29
    · exact absurd a u27
  have c2095 : ¬v19 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u3 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v35 := by
      rcases c2080 with a|a|a|a
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
    have u7 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v34 := by
      rcases c2087 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
    have u13 : v30 := by
      rcases c2094 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
    have u18 : v26 := by
      rcases c2092 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v28 := by
      rcases c840 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd u18 a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u5
    have u20 : v22 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
    have u21 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd u18 a
      · exact absurd u20 a
      · exact a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd u20 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u19
  have c2096 : v21 ∨ v1 ∨ ¬v8 ∨ v15 ∨ v19 ∨ v20 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v6 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u6 a
    have u8 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u6 a
    rcases c283 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n13
  have c2097 : ¬v25 ∨ ¬v26 ∨ ¬v30 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u6 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n2 a
    have u11 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n2 a
    have u12 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n2 a
    have u13 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n5
    have u20 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u15
    have u21 : v37 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd n2 a
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
    have u22 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
    rcases c2036 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2098 : ¬v30 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u7 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v28 := by
      rcases c1816 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
    have u14 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n4
    have u18 : ¬v25 := by
      rcases c2097 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v27 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u20 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u19 a
      · exact absurd n1 a
      · exact a
    have u21 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n1 a
    have u22 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u15
    have u23 : ¬v20 := by
      rcases c2031 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u24 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : v37 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u3
    have u28 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : v21 := by
      rcases c2036 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u31 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u30 a
      · exact a
    rcases c226 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u21
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd u30 a
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u32
    · exact absurd a u26
    · exact absurd a u31
    · exact absurd a u9
    · exact absurd a u24
    · exact absurd a u4
    · exact absurd a u2
  have c2099 : v18 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v26 ∨ v28 ∨ v29 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v24 := by
      rcases c2011 with a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v30 := by
      rcases c2098 with a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n10
    have u11 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v20 := by
      rcases c2031 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v23 := by
      rcases c1827 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u13 a
    have u15 : ¬v25 := by
      rcases c101 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v34 := by
      rcases c1925 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd u13 a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u14
      · exact a
    have u17 : v31 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u3
      · exact a
    have u18 : v33 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u14
    rcases c136 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c2101 : ¬v2 ∨ ¬v3 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n6
  have c2102 : v10 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n2
    have u2 : ¬v2 := by
      rcases c2101 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n17
    have u3 : ¬v5 := by
      rcases c2073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n17
    have u4 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n1
      · exact a
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n9
    have u5 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n17
      · exact absurd a n11
    have u9 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u8 a
    have u11 : v49 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u3
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a u5
    have u12 : v46 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact a
    rcases c184 with a|a
    · exact absurd u11 a
    · exact absurd u12 a
  have c2103 : v28 ∨ ¬v15 ∨ ¬v26 ∨ v29 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c2011 with a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v30 := by
      rcases c2098 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
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
    have u16 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n7
    have u18 : v22 := by
      rcases c2099 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u20 : ¬v27 := by
      rcases c94 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd n2 a
    have u21 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n2 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd u18 a
      · exact absurd n2 a
      · exact a
    have u23 : v33 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u20
    have u24 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v38 := by
      rcases c1923 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    have u27 : v10 := by
      rcases c2102 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n6
    have u28 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u28
      · exact absurd a u14
      · exact a
      · exact absurd a u10
    have u31 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n4
    rcases c1842 with a|a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u11
    · exact absurd u30 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2104 : ¬v22 ∨ v15 ∨ ¬v26 ∨ v28 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    rcases c847 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2105 : v28 ∨ ¬v26 ∨ v29 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c2011 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v30 := by
      rcases c2098 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v19 := by
      rcases c2095 with a|a|a|a
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
    have u8 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n6
    have u13 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v15 := by
      rcases c2103 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v22 := by
      rcases c2104 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u7
    have u16 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a n2
      · exact a
      · exact absurd a u14
    have u17 : v23 := by
      rcases c1827 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u15
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v20 := by
      rcases c2031 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v21 := by
      rcases c2096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u16 a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    rcases c1365 with a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a n0
  have c2106 : v29 ∨ ¬v26 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v30 := by
      rcases c2098 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
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
    have u6 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n5
    have u10 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : v28 := by
      rcases c2105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v23 := by
      rcases c105 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u15 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u5
    have u16 : v21 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n2
      · exact a
    have u17 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v2 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u4
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u7
    have u19 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n0
      · exact a
      · exact absurd a u17
    have u20 : ¬v6 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u18 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u19 a
      · exact a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u15
    · exact absurd a n4
    · exact absurd a n2
  have c2107 : v15 ∨ ¬v6 ∨ v20 ∨ v23 ∨ v28 ∨ v30 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v2 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u2
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
    have u10 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u12 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u13 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    rcases c517 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n9
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a n11
  have c2108 : v22 ∨ ¬v3 ∨ v15 ∨ v20 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v19 := by
      rcases c2085 with a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v6 := by
      rcases c2107 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
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
      · exact absurd a n15
    have u3 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v8 := by
      rcases c2096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n15
    have u12 : v14 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n15
    have u14 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    rcases c1690 with a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a u8
  have c2109 : v47 ∨ v15 ∨ v20 ∨ v23 ∨ ¬v26 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v24 := by
      rcases c2011 with a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v30 := by
      rcases c2098 with a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v29 := by
      rcases c2106 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v22 := by
      rcases c1464 with a|a|a|a
      · exact absurd u4 a
      · exact absurd a u7
      · exact a
      · exact absurd n4 a
    have u16 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n6
    have u17 : ¬v28 := by
      rcases c1111 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n4 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
    have u18 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u19 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v36 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd u4 a
      · exact absurd a u8
      · exact a
      · exact absurd a u18
    have u21 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
    have u22 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v6 := by
      rcases c2107 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u24 : ¬v10 := by
      rcases c1820 with a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u6
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a n7
    have u25 : v27 := by
      rcases c1913 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a u17
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u25 a
      · exact absurd n4 a
      · exact a
    have u27 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u24
      · exact a
      · exact absurd a u1
      · exact absurd a u26
    have u28 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u27
    have u29 : v21 := by
      rcases c2108 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u28 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u30 : v2 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u10
    have u31 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u28 a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u30 a
      · exact absurd u28 a
      · exact a
    rcases c379 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u32
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u31
    · exact absurd a n0
  have c2110 : ¬v23 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c101 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    rcases c631 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2111 : ¬v15 ∨ v22 ∨ v23 ∨ v28 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v8 := by
      rcases c1561 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v14 := by
      rcases c2036 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c43 with a|a
    · exact absurd u2 a
    · exact absurd u4 a
  have c2112 : v34 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v30 := by
      rcases c2098 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v29 := by
      rcases c2106 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v24 := by
      rcases c2011 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v22 := by
      rcases c1464 with a|a|a|a
      · exact absurd u4 a
      · exact absurd a u7
      · exact a
      · exact absurd n1 a
    have u16 : ¬v28 := by
      rcases c1111 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n0
    have u17 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u18 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    have u20 : ¬v23 := by
      rcases c2110 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n0
    have u21 : v36 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd u4 a
      · exact absurd a u15
      · exact absurd a u3
    have u22 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
    have u23 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v15 := by
      rcases c2111 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u25 : v20 := by
      rcases c2109 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u24
      · exact a
      · exact absurd a u20
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v14 := by
      rcases c2036 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u29 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u28 a
      · exact a
    have u33 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u26
    have u34 : v2 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd a u29
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u10
    have u35 : ¬v6 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u34 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u36 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u34 a
      · exact absurd u33 a
      · exact a
    rcases c716 with a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u6
    · exact absurd a u35
    · exact absurd a u36
    · exact absurd a u32
    · exact absurd a u24
    · exact absurd a u27
  have c2113 : ¬v22 ∨ ¬v26 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v27 := by
      rcases c94 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c1922 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n2 a
  have c2114 : ¬v28 ∨ v19 ∨ v20 ∨ ¬v26 ∨ ¬v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u3 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v18 := by
      rcases c1792 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
    have u7 : v21 := by
      rcases c1419 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a u1
    have u8 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u7 a
    rcases c840 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd n3 a
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n5
  have c2115 : ¬v23 ∨ v24 ∨ ¬v26 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c101 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    rcases c1925 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n3 a
  have c2116 : ¬v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v34 := by
      rcases c2112 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v19 := by
      rcases c2095 with a|a|a|a
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
    have u6 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v22 := by
      rcases c2113 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u11 : ¬v23 := by
      rcases c2115 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd u1 a
    have u12 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u17 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n3
    have u18 : v28 := by
      rcases c1827 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v20 := by
      rcases c2031 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    rcases c2114 with a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a u6
  have c2117 : v22 ∨ ¬v23 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u14 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n9
    have u15 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n2
    have u19 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
    have u20 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u11
    rcases c29 with a|a|a
    · exact absurd u20 a
    · exact absurd u18 a
    · exact absurd u19 a
  have c2118 : v21 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v2 := by
      rcases c2056 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u5 a
      · exact absurd a n11
    have u8 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v14 := by
      rcases c2036 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u2
    have u16 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u2
      · exact a
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n9
    have u17 : ¬v17 := by
      rcases c1080 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n1
    have u18 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u17
    have u19 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u16 a
      · exact absurd u18 a
      · exact a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u19
  have c2119 : ¬v14 ∨ v2 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c57 with a|a
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
    have u5 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
    have u6 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n2
    have u7 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n10
    · exact absurd a u3
    · exact absurd a u7
  have c2120 : ¬v5 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v14 ∨ v15 ∨ v19 ∨ ¬v21 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n7 a
    have u7 : ¬v9 := by
      rcases c1856 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v8 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u8
    have u10 : v13 := by
      rcases c216 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n5
      · exact a
      · exact absurd a u6
    have u11 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v47 := by
      rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n11
    have u15 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u14 a
      · exact a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u2
  have c2121 : ¬v3 ∨ v2 ∨ v14 ∨ v15 ∨ ¬v21 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
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
    have u5 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v5 := by
      rcases c2120 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u8 a
      · exact a
    rcases c216 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u2
  have c2122 : ¬v23 ∨ v28 ∨ ¬v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u13
    have u16 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n5
    have u18 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
    have u19 : v22 := by
      rcases c2117 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n0 a
    have u21 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u19 a
    have u22 : v41 := by
      rcases c295 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
    have u23 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v2 := by
      rcases c2056 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd u7 a
      · exact absurd a n3
    have u26 : v21 := by
      rcases c2118 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u27 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u26 a
      · exact a
    have u31 : ¬v9 := by
      rcases c1856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u25
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u29
    have u32 : ¬v14 := by
      rcases c2119 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
    have u33 : ¬v3 := by
      rcases c2121 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u32
      · exact absurd a u28
      · exact absurd u26 a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u34 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u29
    have u35 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u34 a
      · exact a
    rcases c397 with a|a|a|a|a|a|a|a
    · exact absurd u34 a
    · exact absurd a u27
    · exact absurd a u29
    · exact absurd a u33
    · exact absurd a u35
    · exact absurd a u25
    · exact absurd a u31
    · exact absurd a u30
  have c2123 : v14 ∨ v1 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n19
      · exact absurd a n14
      · exact absurd a n8
    have u2 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u4 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    rcases c2072 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n16
    · exact absurd a n17
  have c2124 : ¬v34 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
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
    have u8 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v23 := by
      rcases c2122 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : v22 := by
      rcases c1827 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
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
    have u23 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v25 := by
      rcases c1747 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
    have u25 : v14 := by
      rcases c2123 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u21
    have u31 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u28
      · exact absurd a u12
      · exact a
      · exact absurd a u1
    have u32 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u31 a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u31 a
      · exact absurd u30 a
      · exact a
    rcases c288 with a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u33
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u32
    · exact absurd a u29
    · exact absurd a u6
    · exact absurd a u26
  have c2125 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v20 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
    have u2 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    rcases c716 with a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n6
  have c2126 : ¬v2 ∨ v1 ∨ ¬v3 ∨ ¬v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd n3 a
      · exact a
    rcases c2125 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd n3 a
    · exact absurd a n4
  have c2127 : v21 ∨ v1 ∨ ¬v3 ∨ ¬v14 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v2 := by
      rcases c2126 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n0
    have u7 : v4 := by
      rcases c518 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u3
      · exact a
    have u8 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u7 a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    rcases c2125 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd n3 a
    · exact absurd a n0
  have c2128 : v2 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v15 ∨ v20 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v26 := by
      rcases c2112 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v4 := by
      rcases c518 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact a
    have u10 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    have u11 : v27 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n10
    have u12 : v33 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u2
    have u13 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v22 := by
      rcases c2032 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v23 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u15 a
      · exact a
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u4
    rcases c85 with a|a|a
    · exact absurd u11 a
    · exact absurd u15 a
    · exact absurd u16 a
  have c2129 : ¬v3 ∨ ¬v14 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v26 := by
      rcases c2112 with a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v21 := by
      rcases c2127 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v2 := by
      rcases c2128 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u17 a
      · exact absurd n0 a
      · exact a
    have u19 : v27 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
    have u20 : v33 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n2
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u6
    have u21 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v22 := by
      rcases c2032 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v23 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u23 a
      · exact a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u8
    rcases c85 with a|a|a
    · exact absurd u19 a
    · exact absurd u23 a
    · exact absurd u24 a
  have c2130 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n3
    rcases c1927 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
  have c2131 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n3
    have u2 : v32 := by
      rcases c145 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n9
    have u3 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u1 a
    rcases c1590 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a u4
  have c2132 : v47 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v15 ∨ v17 ∨ v28 ∨ v29 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v34 := by
      rcases c2124 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v35 := by
      rcases c2080 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v26 := by
      rcases c2116 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v19 := by
      rcases c2095 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v22 := by
      rcases c2032 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : v23 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u8 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
    have u13 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v33 := by
      rcases c2130 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n11
    have u16 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u17 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u8 a
    have u18 : v31 := by
      rcases c2131 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u9
    have u19 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n10
    rcases c2090 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u17
    · exact absurd a u4
    · exact absurd u18 a
    · exact absurd a u20
    · exact absurd u5 a
    · exact absurd a n0
  exact ⟨c2085, c2091, c2095, c2096, c2101, c2110, c2112, c2113, c2114, c2115, c2116, c2124, c2125, c2127, c2129, c2130, c2132⟩
