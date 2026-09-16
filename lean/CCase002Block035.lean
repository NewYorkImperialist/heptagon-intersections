import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1750-1799 of the 2934-step refutation of ccase002: 125 core clauses and 98 earlier-derived ones give 10 more. -/
theorem CCase002_block035
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v13)
    (c45 : ¬v9 ∨ ¬v13)
    (c49 : ¬v10 ∨ ¬v13)
    (c52 : ¬v11 ∨ ¬v13)
    (c54 : ¬v12 ∨ ¬v13)
    (c56 : ¬v14 ∨ ¬v13)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c139 : ¬v32 ∨ ¬v35)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c143 : ¬v37 ∨ ¬v36)
    (c144 : ¬v38 ∨ ¬v36)
    (c145 : ¬v39 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c166 : ¬v43 ∨ ¬v46)
    (c171 : ¬v44 ∨ ¬v46)
    (c175 : ¬v45 ∨ ¬v46)
    (c179 : ¬v46 ∨ ¬v47)
    (c180 : ¬v48 ∨ ¬v46)
    (c181 : ¬v49 ∨ ¬v46)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c207 : ¬v31 ∨ v38 ∨ v25 ∨ v24 ∨ v37 ∨ v39 ∨ v32 ∨ v30)
    (c215 : v29 ∨ ¬v23 ∨ v30 ∨ v20 ∨ v34 ∨ v17 ∨ v22 ∨ v9 ∨ v24 ∨ v27 ∨ v28 ∨ v10 ∨ v8 ∨ v16)
    (c234 : ¬v23 ∨ v30 ∨ v26 ∨ v24 ∨ v16 ∨ v31 ∨ v25 ∨ v9 ∨ v8 ∨ v19 ∨ v10 ∨ v15 ∨ v22 ∨ v33)
    (c236 : v16 ∨ v20 ∨ v8 ∨ v19 ∨ v27 ∨ v26 ∨ v6 ∨ v2 ∨ v12 ∨ v14 ∨ v28 ∨ v9 ∨ v7 ∨ ¬v13)
    (c242 : v21 ∨ v20 ∨ v12 ∨ v5 ∨ v14 ∨ v7 ∨ v6 ∨ ¬v13)
    (c266 : v43 ∨ ¬v15 ∨ v49 ∨ v44 ∨ v1 ∨ v22 ∨ v21 ∨ v14 ∨ v17 ∨ v16 ∨ v10 ∨ v23 ∨ v8 ∨ v24)
    (c267 : ¬v38 ∨ v36 ∨ v44 ∨ v31 ∨ v45 ∨ v24 ∨ v35 ∨ v25 ∨ v39 ∨ v42 ∨ v23 ∨ v32 ∨ v37 ∨ v49)
    (c276 : v1 ∨ ¬v2 ∨ v44 ∨ v3 ∨ v9 ∨ v45 ∨ v8 ∨ v10)
    (c282 : ¬v39 ∨ v43 ∨ v33 ∨ v26 ∨ v46 ∨ v45 ∨ v32 ∨ v37 ∨ v29 ∨ v38 ∨ v25 ∨ v40 ∨ v24 ∨ v36)
    (c283 : v21 ∨ v6 ∨ v14 ∨ v20 ∨ v19 ∨ ¬v13 ∨ v7 ∨ v12)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c302 : v29 ∨ ¬v22 ∨ v15 ∨ v35 ∨ v14 ∨ v26 ∨ v8 ∨ v23 ∨ v27 ∨ v19 ∨ v33 ∨ v28 ∨ v16 ∨ v9)
    (c310 : v14 ∨ v10 ∨ v18 ∨ v45 ∨ v2 ∨ v4 ∨ v16 ∨ v17 ∨ v1 ∨ v11 ∨ v44 ∨ v7 ∨ ¬v3 ∨ v49)
    (c344 : v36 ∨ ¬v37 ∨ v45 ∨ v44 ∨ v43 ∨ v30 ∨ v38 ∨ v29)
    (c353 : ¬v46 ∨ v11 ∨ v40 ∨ v4 ∨ v39 ∨ v12 ∨ v7 ∨ v10 ∨ v3 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c367 : ¬v46 ∨ v4 ∨ v40 ∨ v38 ∨ v39 ∨ v5 ∨ v45 ∨ v47)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c376 : v43 ∨ ¬v2 ∨ v44 ∨ v45 ∨ v3 ∨ v1 ∨ v9 ∨ v8)
    (c384 : v36 ∨ v22 ∨ v37 ∨ v23 ∨ v42 ∨ v35 ∨ v30 ∨ ¬v29)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c404 : ¬v38 ∨ v31 ∨ v44 ∨ v9 ∨ v45 ∨ v33 ∨ v11 ∨ v10 ∨ v37 ∨ v39 ∨ v40 ∨ v32 ∨ v3 ∨ v47)
    (c431 : ¬v31 ∨ v38 ∨ v24 ∨ v37 ∨ v32 ∨ v30 ∨ v23 ∨ v39)
    (c497 : ¬v46 ∨ v39 ∨ v47 ∨ v38 ∨ v4 ∨ v3 ∨ v45 ∨ v5)
    (c509 : v27 ∨ v28 ∨ v17 ∨ v11 ∨ v20 ∨ v3 ∨ v21 ∨ v26 ∨ v5 ∨ v14 ∨ v10 ∨ ¬v13 ∨ v12 ∨ v6)
    (c521 : ¬v33 ∨ v40 ∨ v27 ∨ v26 ∨ v25 ∨ v32 ∨ v39 ∨ v34)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c591 : v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26)
    (c595 : ¬v19 ∨ v12 ∨ ¬v15 ∨ v25 ∨ v26 ∨ v27)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c726 : ¬v17 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c740 : ¬v21 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c872 : ¬v35 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c887 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c892 : ¬v34 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1048 : ¬v20 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1116 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1220 : ¬v18 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1224 : ¬v34 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1235 : ¬v12 ∨ ¬v16 ∨ ¬v20 ∨ v23)
    (c1239 : v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1273 : ¬v24 ∨ v17 ∨ v18 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1283 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1301 : ¬v41 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1464 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v42)
    (c1465 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v49)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1483 : v6 ∨ v5 ∨ v12 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21)
    (c1491 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1507 : ¬v32 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24)
    (c1511 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v20)
    (c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1559 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41)
    (c1570 : v39 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v33 ∨ v40)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1614 : v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ ¬v32)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1646 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c1666 : ¬v42 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v48 ∨ v49)
    (c1723 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v37)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1805 : ¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35)
    (c1807 : ¬v25 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v17)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1850 : ¬v23 ∨ v16 ∨ v17 ∨ ¬v34)
    (c1865 : v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1878 : v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ ¬v26)
    (c1894 : v33 ∨ v8 ∨ ¬v15 ∨ v19 ∨ v20 ∨ ¬v26)
    (c1912 : v17 ∨ v7 ∨ v14 ∨ v18 ∨ v21 ∨ ¬v25 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1932 : v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v15 ∨ ¬v17)
    (c1962 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v35)
    (c1974 : ¬v33 ∨ v15 ∨ v16 ∨ ¬v22)
    (c1983 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2003 : ¬v21 ∨ v8 ∨ v15 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2015 : ¬v34 ∨ v15 ∨ v21 ∨ ¬v22)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2021 : ¬v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c2037 : v8 ∨ v15 ∨ ¬v16 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c2039 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2042 : ¬v3 ∨ v4 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2055 : v45 ∨ v8 ∨ v10 ∨ v14 ∨ v15 ∨ v17 ∨ v22 ∨ v24 ∨ ¬v34 ∨ v43 ∨ v44 ∨ v49)
    (c2062 : v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v43 ∨ v44 ∨ v49)
    (c2066 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2107 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v18 ∨ v38 ∨ v45)
    (c2116 : ¬v22 ∨ v15 ∨ v16 ∨ v29 ∨ v30 ∨ v35)
    (c2141 : v9 ∨ v2 ∨ v16 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2163 : v21 ∨ v1 ∨ v15 ∨ v16 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2169 : ¬v30 ∨ v22 ∨ v23 ∨ v27 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v43 ∨ v44 ∨ v45)
    (c2171 : v41 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2176 : v26 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c2201 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49)
    (c2253 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2262 : ¬v38 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v18 ∨ v13 ∨ v19 ∨ v47 ∨ v48 ∨ v49)
    (c2312 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2316 : ¬v23 ∨ v3 ∨ v7 ∨ v10 ∨ v14 ∨ v17 ∨ v21 ∨ v34 ∨ v41 ∨ v45 ∨ v48 ∨ v49)
    (c2318 : v13 ∨ v47 ∨ v48 ∨ v49)
    (c2319 : ¬v30 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v49)
    (c2320 : ¬v7 ∨ v1 ∨ ¬v3 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2321 : v21 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    : (¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45) ∧ (¬v16 ∨ v6 ∨ v7 ∨ ¬v13 ∨ ¬v15 ∨ v21) ∧ (v15 ∨ ¬v3 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v31 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ ¬v23) ∧ (¬v5 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v15 ∨ v47 ∨ v48 ∨ v49) ∧ (v24 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v25 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v2 ∨ v3 ∨ ¬v13 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v45) ∧ (v17 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v38 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49) := by
  have c2322 : ¬v15 ∨ ¬v3 ∨ v7 ∨ ¬v13 ∨ ¬v21 ∨ v33 ∨ v40 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u6 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v26 := by
      rcases c1894 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u3
      · exact a
    have u12 : v46 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u11
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n5
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n6
    have u14 : ¬v49 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v1 := by
      rcases c1839 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u14
    have u19 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
    have u20 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    rcases c310 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a u14
  have c2323 : v35 ∨ ¬v3 ∨ v23 ∨ v24 ∨ ¬v30 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n11
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n11
    have u12 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v21 := by
      rcases c2321 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n11
    have u14 : ¬v15 := by
      rcases c2322 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd u13 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u5
      · exact a
    have u16 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v16 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u14
      · exact a
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u19
    have u21 : ¬v19 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u8
      · exact absurd a u14
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
    rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u15 a
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u1
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u7
  have c2324 : v38 ∨ ¬v3 ∨ v23 ∨ v24 ∨ ¬v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v34 := by
      rcases c892 with a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v30 := by
      rcases c2323 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v31 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u13 : v29 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n0
      · exact a
    rcases c123 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c2325 : v47 ∨ ¬v3 ∨ v15 ∨ ¬v21 ∨ ¬v22 ∨ v33 ∨ v40 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u17 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u8 a
    have u18 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n8
    have u19 : ¬v16 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u6
    have u20 : ¬v19 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u14
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
    have u21 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u22 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n6
    have u23 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n1 a
    have u24 : ¬v6 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u22 a
    have u25 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd n1 a
    have u26 : v20 := by
      rcases c236 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd u8 a
    have u27 : ¬v17 := by
      rcases c1048 with a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a u15
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
    have u28 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u26 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    rcases c310 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u28
    · exact absurd a u10
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u19
    · exact absurd a u27
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd n1 a
    · exact absurd a n8
  have c2326 : v38 ∨ ¬v3 ∨ ¬v21 ∨ v23 ∨ v24 ∨ ¬v29 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v37 := by
      rcases c2324 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v40 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n10
    have u18 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v15 := by
      rcases c2322 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd u7 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v22 := by
      rcases c2325 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd n2 a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v36 := by
      rcases c384 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd n5 a
    have u22 : ¬v39 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v16 := by
      rcases c740 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u13
      · exact absurd a u15
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
    have u24 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u11
      · exact a
    have u25 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u24 a
      · exact absurd n1 a
      · exact a
    have u26 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd n1 a
    rcases c367 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u25
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u10
    · exact absurd a n8
  have c2327 : ¬v21 ∨ v1 ∨ v8 ∨ v15 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n9
      · exact a
    have u3 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v16 := by
      rcases c2116 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c2037 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd u5 a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u4
  have c2328 : ¬v3 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v34 ∨ v35 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v29 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v37 := by
      rcases c2324 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
    have u12 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
    have u13 : v15 := by
      rcases c2327 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n9
    have u14 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact a
    have u16 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact a
    have u17 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    have u18 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u6
      · exact a
    have u19 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd n0 a
    have u20 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u18 a
      · exact absurd n0 a
      · exact a
    rcases c1511 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd a u16
  have c2329 : v12 ∨ ¬v3 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v29 ∨ v34 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v16 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v19 := by
      rcases c595 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n12 a
    have u4 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n12 a
    have u5 : v46 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n10
      · exact a
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u1 a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u1 a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v40 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v49 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a u8
    have u11 : v13 := by
      rcases c2297 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u9
    have u12 : ¬v6 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd u11 a
    · exact absurd a n2
    · exact absurd a n0
  have c2330 : v49 ∨ ¬v3 ∨ v23 ∨ v24 ∨ v34 ∨ v35 ∨ v38 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v37 := by
      rcases c2324 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u5 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v1 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n0
    have u16 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n0
    have u17 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n0
    have u18 : ¬v21 := by
      rcases c2328 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u19 : v29 := by
      rcases c2321 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n0
    have u20 : v28 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a u15
    have u21 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u20 a
    have u27 : ¬v40 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u28 : v36 := by
      rcases c384 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd u19 a
    have u29 : ¬v39 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v15 := by
      rcases c2329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd u19 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u31 : v20 := by
      rcases c2021 with a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u30
      · exact a
      · exact absurd a u18
      · exact absurd u20 a
    have u32 : ¬v16 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u25
    have u33 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u32
      · exact absurd a u1
      · exact absurd a u13
      · exact a
    have u34 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u33 a
      · exact absurd n1 a
      · exact a
    have u35 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u33 a
      · exact a
      · exact absurd n1 a
    rcases c367 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u34
    · exact absurd a u27
    · exact absurd a n6
    · exact absurd a u29
    · exact absurd a u35
    · exact absurd a u12
    · exact absurd a n7
  have c2331 : v21 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v34 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v22 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v35 := by
      rcases c1805 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact a
    have u6 : v20 := by
      rcases c2062 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u7 : v16 := by
      rcases c1962 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd u5 a
    have u8 : ¬v12 := by
      rcases c1235 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact absurd a n6
    have u9 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u11 : v13 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd u6 a
    have u12 : v10 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
    rcases c49 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c2332 : ¬v3 ∨ ¬v15 ∨ ¬v16 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u3 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v1 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u14 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v6 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a u14
      · exact absurd a u6
    have u16 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd u15 a
      · exact absurd n0 a
      · exact a
    rcases c2042 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u16
    · exact absurd u15 a
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u11
  have c2333 : v24 ∨ ¬v3 ∨ v21 ∨ v23 ∨ v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v35 := by
      rcases c2330 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u3 a
    have u16 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u18 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u19 : ¬v40 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v1 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
    have u21 : v15 := by
      rcases c2331 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd u21 a
      · exact a
    have u23 : ¬v16 := by
      rcases c2332 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u21 a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : v2 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u18
    have u25 : v22 := by
      rcases c266 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u21 a
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a u20
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n0
    have u26 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd u21 a
      · exact absurd a u23
      · exact absurd a n2
      · exact a
    have u27 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd n1 a
    have u28 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : v19 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u27
      · exact absurd a u26
      · exact a
      · exact absurd a n6
      · exact absurd a u19
    rcases c595 with a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u11
    · exact absurd u21 a
    · exact absurd a u29
    · exact absurd a u26
    · exact absurd a u28
  have c2334 : v33 ∨ ¬v3 ∨ v8 ∨ v9 ∨ v12 ∨ ¬v15 ∨ ¬v21 ∨ v23 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u4 : ¬v40 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u6 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n13
      · exact a
    have u7 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a u4
    rcases c16 with a|a|a
    · exact absurd u6 a
    · exact absurd u7 a
    · exact absurd n1 a
  have c2335 : v49 ∨ ¬v3 ∨ v23 ∨ v24 ∨ v34 ∨ v38 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v37 := by
      rcases c2324 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u5 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n0
    have u11 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n0
    have u12 : v21 := by
      rcases c2333 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u13 : v35 := by
      rcases c2330 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v40 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v15 := by
      rcases c2334 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v22 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n0
    have u20 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v16 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u18
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u23
    have u25 : ¬v19 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u7
      · exact absurd a u18
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u23
    have u26 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u9
      · exact a
    have u27 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u15
      · exact a
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a n6
      · exact absurd a u17
    rcases c16 with a|a|a
    · exact absurd u26 a
    · exact absurd u27 a
    · exact absurd n1 a
  have c2336 : ¬v21 ∨ v1 ∨ ¬v3 ∨ v7 ∨ ¬v13 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : v15 := by
      rcases c2327 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    have u5 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd u4 a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd u4 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u8 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n12
      · exact a
    have u9 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    rcases c1511 with a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u5
  have c2337 : v38 ∨ ¬v3 ∨ v23 ∨ v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v34 := by
      rcases c2335 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v37 := by
      rcases c2324 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n6
    have u16 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v21 := by
      rcases c2336 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n6
    have u18 : v28 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u7
      · exact a
      · exact absurd a n6
      · exact absurd a u14
    have u19 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v15 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u10
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a n6
    have u24 : v16 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd u23 a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
    have u25 : ¬v19 := by
      rcases c595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u23 a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u21
    have u26 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u24 a
      · exact absurd u23 a
      · exact a
    rcases c1283 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u17
    · exact absurd u18 a
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd a n6
  have c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c2042 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2339 : ¬v16 ∨ v6 ∨ v7 ∨ ¬v13 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n3 a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a u3
  have c2340 : ¬v15 ∨ ¬v3 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
    have u13 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd n0 a
      · exact a
    have u14 : ¬v6 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v16 := by
      rcases c2339 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd u1 a
      · exact absurd n0 a
      · exact absurd a n2
    have u17 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a u16
      · exact absurd a n2
      · exact a
    have u18 : v22 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u16
      · exact absurd a n2
      · exact a
    have u19 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v19 := by
      rcases c595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u19
    have u24 : v38 := by
      rcases c2337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v18 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd n0 a
      · exact a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u17
    have u26 : v5 := by
      rcases c2262 with a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a n3
    have u27 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
    have u28 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd n1 a
    rcases c310 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u25
    · exact absurd a u10
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd n1 a
    · exact absurd a n5
  have c2341 : v22 ∨ ¬v3 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c2340 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n5
    have u10 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : v28 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u14
      · exact a
      · exact absurd a n5
      · exact absurd a u12
    have u18 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a u8
      · exact absurd a u7
    have u19 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u17 a
      · exact a
    rcases c2337 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd n1 a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2342 : v21 ∨ ¬v3 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := by
      rcases c2340 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
    have u9 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v22 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd u10 a
    have u18 : v38 := by
      rcases c2337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u5
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u20
    have u25 : ¬v33 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u19
    rcases c1491 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
  have c2343 : ¬v22 ∨ ¬v3 ∨ v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v21 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v19 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u12
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
    have u19 : ¬v16 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u6
    have u20 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd n0 a
    have u21 : v38 := by
      rcases c2337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : v5 := by
      rcases c2262 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n3
    have u27 : ¬v34 := by
      rcases c2171 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
    have u28 : ¬v35 := by
      rcases c1491 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
    have u29 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u16
    have u30 : v29 := by
      rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u28
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u10
    rcases c2268 with a|a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u29
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u16
  have c2344 : v23 ∨ ¬v3 ∨ v6 ∨ v15 ∨ ¬v29 ∨ v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v22 := by
      rcases c2343 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v21 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v24 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a n0
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v20 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n3
      · exact a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
    have u10 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u9 a
    have u11 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u9 a
    rcases c2086 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u7
  have c2345 : v15 ∨ ¬v3 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
    have u11 : ¬v6 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v22 := by
      rcases c2343 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u18
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u20 : v21 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : v23 := by
      rcases c2344 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u22 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u21 a
      · exact a
    have u27 : v20 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd u20 a
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u23
    have u28 : ¬v19 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u23
    have u29 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u27 a
    rcases c234 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u15
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u29
    · exact absurd a u18
    · exact absurd a u24
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u28
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u14
  have c2346 : ¬v3 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v15 := by
      rcases c2345 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n3
    have u14 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u1 a
      · exact a
    have u15 : ¬v6 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
    have u17 : v21 := by
      rcases c2340 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u18 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u1 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u1 a
    have u20 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd u1 a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd u1 a
      · exact absurd u17 a
      · exact a
    have u22 : v5 := by
      rcases c1511 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u20
    have u23 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
    have u24 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd n0 a
    rcases c310 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd n0 a
    · exact absurd a n3
  have c2347 : ¬v31 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ ¬v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n8 a
      · exact a
    rcases c215 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n8 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n4
  have c2348 : ¬v23 ∨ v16 ∨ v17 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u5
    have u7 : ¬v34 := by
      rcases c1850 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    have u8 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v3 := by
      rcases c2346 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v31 := by
      rcases c2347 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd n0 a
    have u18 : v38 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u15
      · exact a
      · exact absurd a u17
    have u19 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v33 := by
      rcases c404 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u15
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n4
    rcases c521 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u21
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a u7
  have c2349 : ¬v38 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v49 := by
      rcases c181 with a|a
      · exact a
      · exact absurd n9 a
    have u7 : ¬v48 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n9 a
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n9 a
    have u9 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n9 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n9 a
    have u11 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u6
    have u12 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u2
    have u16 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u10
      · exact a
    have u17 : v1 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u16 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n2
    have u18 : ¬v7 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u17 a
      · exact absurd u16 a
      · exact a
    rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u6
  have c2350 : v24 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v38 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd n11 a
      · exact absurd a n12
    have u2 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n11 a
    have u3 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n11 a
    have u4 : v31 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u5 : v25 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n0
      · exact a
      · exact absurd a u2
    have u6 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1740 with a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u6
  have c2351 : v22 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v13 := by
      rcases c2297 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v3 := by
      rcases c2346 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : v24 := by
      rcases c2350 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
    have u12 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd u11 a
    have u16 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd u11 a
    have u17 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
    have u18 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u15
    have u19 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n8
    have u21 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v40 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a n7
    have u24 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u22
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u23
    have u25 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u26 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u25
    have u27 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u26 a
    rcases c344 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd u26 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a u27
    · exact absurd a u17
  have c2352 : ¬v21 ∨ ¬v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u6 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v3 := by
      rcases c2346 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v23 := by
      rcases c2348 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : v22 := by
      rcases c2351 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u14
    have u22 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : v5 := by
      rcases c2262 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a n2
    have u27 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u22
    have u28 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
    have u29 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact a
      · exact absurd a u27
      · exact absurd a u25
    have u30 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u28
    have u31 : v31 := by
      rcases c404 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u8
      · exact absurd a n2
    rcases c128 with a|a
    · exact absurd u30 a
    · exact absurd u31 a
  have c2353 : ¬v22 ∨ ¬v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v21 := by
      rcases c2352 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v3 := by
      rcases c2346 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v19 := by
      rcases c595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u20 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd n1 a
      · exact a
    have u21 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
    have u22 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u17
    have u23 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : v5 := by
      rcases c2262 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a n2
    have u28 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u23
    have u29 : ¬v34 := by
      rcases c2171 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
    have u30 : ¬v1 := by
      rcases c1839 with a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n4
    have u31 : ¬v35 := by
      rcases c1491 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
    have u32 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u15
      · exact absurd a u31
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u21
    have u33 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u32 a
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd a u33
    · exact absurd a u30
    · exact absurd u32 a
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a n4
  have c2354 : ¬v5 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2355 : ¬v7 ∨ v19 ∨ v20 ∨ v21 ∨ v39 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c2346 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n0 a
    have u15 : v38 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u12
    have u16 : v26 := by
      rcases c2262 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n1
      · exact a
      · exact absurd a n5
    have u17 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : v16 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd u3 a
      · exact absurd a n5
    have u23 : ¬v18 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd u22 a
      · exact absurd a u20
      · exact absurd a u18
    have u24 : v33 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd a u19
      · exact a
    have u25 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u24 a
    rcases c2052 with a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd u15 a
    · exact absurd a u11
    · exact absurd a u10
  have c2356 : ¬v38 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v3 := by
      rcases c2346 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v7 := by
      rcases c2355 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v28 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n7
    have u19 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
    have u24 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u2
    have u25 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u19
      · exact a
      · exact absurd a u23
      · exact absurd a u5
    have u26 : v31 := by
      rcases c404 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a n5
    have u27 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u26 a
      · exact a
    rcases c2321 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a u28
    · exact absurd a u2
    · exact absurd a n7
  have c2357 : v7 ∨ v17 ∨ v18 ∨ v21 ∨ v22 ∨ v27 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v3 := by
      rcases c2346 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v34 := by
      rcases c2107 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u7
    have u10 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v25 := by
      rcases c1912 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v23 := by
      rcases c2316 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v24 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a u7
    have u14 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v42 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n9
    have u16 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : v35 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u9
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v30 := by
      rcases c2169 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u19 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u17 a
    rcases c1273 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u20
  have c2358 : v26 ∨ v5 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v33 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n8
    have u2 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v25 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1740 with a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
  have c2359 : ¬v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd n0 a
      · exact a
    have u11 : ¬v21 := by
      rcases c2352 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v22 := by
      rcases c2353 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : v16 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
    have u14 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u13 a
      · exact absurd n0 a
      · exact a
    have u15 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u13 a
      · exact absurd n0 a
      · exact a
    have u16 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u13 a
      · exact absurd n0 a
      · exact a
    have u17 : ¬v3 := by
      rcases c2346 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u18 : ¬v38 := by
      rcases c2356 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v34 := by
      rcases c2107 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u4
    have u20 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u19
    have u21 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u22 : v7 := by
      rcases c2357 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u23 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u24 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u11
    have u25 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u22 a
    have u26 : v39 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u23
    have u27 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v26 := by
      rcases c2358 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd a n1
    have u29 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u28 a
      · exact a
    rcases c1494 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u29
    · exact absurd a u4
  have c2360 : ¬v26 ∨ v3 ∨ ¬v13 ∨ v15 ∨ v17 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v16 := by
      rcases c1116 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
    have u10 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
    rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd n5 a
    · exact absurd a n6
  have c2361 : v23 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ v14 ∨ v15 ∨ v17 ∨ v22 ∨ v26 ∨ ¬v38 ∨ ¬v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n11 a
    have u2 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n11 a
    have u3 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd n11 a
      · exact a
    have u4 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n11 a
      · exact a
    have u5 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n11 a
    have u6 : ¬v48 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n12 a
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n12 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n12 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n12 a
    have u10 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a n14
    have u11 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
    have u12 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v16 := by
      rcases c1116 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u14 : v24 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd n12 a
      · exact absurd a n13
    have u15 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v34 := by
      rcases c2171 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a u16
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n14
    have u19 : v1 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u7
    have u20 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n14
    have u21 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n14
    have u22 : v19 := by
      rcases c2262 with a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a u21
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a n13
    have u23 : ¬v21 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd u22 a
      · exact absurd a u17
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a u16
    have u24 : v7 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a n9
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a n14
    have u25 : v20 := by
      rcases c509 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a n10
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd u10 a
      · exact absurd a n5
      · exact absurd a u20
    have u26 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n14
    have u27 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u22 a
    have u28 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u26
    have u29 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd u14 a
    have u30 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u28 a
      · exact a
    rcases c404 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n11 a
    · exact absurd a u30
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u29
    · exact absurd a n1
    · exact absurd a n13
  have c2362 : ¬v38 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v15 ∨ v17 ∨ v22 ∨ v25 ∨ v26 ∨ ¬v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v23 := by
      rcases c2361 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd n0 a
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v48 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n13 a
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n13 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n13 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n13 a
    have u10 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
    have u11 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a u10
      · exact absurd a u4
    have u14 : v31 := by
      rcases c404 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n14
    have u15 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v16 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd u5 a
    have u18 : v1 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n15
    have u19 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n6
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u11
    have u20 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n15
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a n12
    · exact absurd a u19
    · exact absurd a n14
    · exact absurd a u4
  have c2363 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v25 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v23 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
    have u2 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n6
      · exact a
    have u3 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n10
    have u11 : ¬v37 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u6
    have u12 : v39 := by
      rcases c207 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u11
      · exact a
      · exact absurd a u7
      · exact absurd a u5
    have u13 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v46 := by
      rcases c282 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u4
      · exact a
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u10
    have u15 : ¬v48 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v47 := by
      rcases c179 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n10
    have u18 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n10
    have u19 : v16 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u17
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
    have u20 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u20
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
    have u23 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n4
    have u24 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u9
      · exact a
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u13
    rcases c1839 with a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd a u21
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
  have c2364 : v19 ∨ v17 ∨ v22 ∨ v25 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v3 := by
      rcases c2345 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v26 := by
      rcases c2360 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n4
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v38 := by
      rcases c2362 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n6
    have u16 : ¬v18 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u12
    have u17 : v24 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u18 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v16 := by
      rcases c1116 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u20
    have u22 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd u17 a
    have u23 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u19
    have u24 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u20
      · exact a
      · exact absurd a u22
    have u25 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
    have u26 : v1 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u24 a
      · exact a
    have u29 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
    have u30 : ¬v37 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u23
    have u31 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u30
      · exact absurd a u7
      · exact a
    have u32 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n4
      · exact a
    have u33 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u26 a
      · exact absurd u31 a
      · exact a
    have u34 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u32 a
    rcases c497 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u34
    · exact absurd a n4
    · exact absurd a u15
    · exact absurd a u33
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u29
  have c2365 : v21 ∨ v3 ∨ v8 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ ¬v24 ∨ v26 ∨ v36 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd n9 a
    have u5 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u2
    have u6 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact a
      · exact absurd a u4
    have u7 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v37 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a u5
    have u10 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u11 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n17
      · exact absurd a u10
    have u12 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u13 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a u12
    rcases c1004 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2366 : ¬v2 ∨ v3 ∨ ¬v13 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v1 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v7 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact a
    rcases c242 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd n2 a
  have c2367 : v36 ∨ v17 ∨ ¬v19 ∨ v22 ∨ ¬v24 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v3 := by
      rcases c2345 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v16 := by
      rcases c1116 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
    have u11 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u9 a
    have u20 : ¬v21 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u2
    have u21 : v18 := by
      rcases c2365 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd n2 a
    have u23 : ¬v2 := by
      rcases c2366 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u9 a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u24 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u25 : v1 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
    have u26 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n8
    have u27 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n8
    rcases c509 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a u27
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd u9 a
    · exact absurd a u15
    · exact absurd a u26
  have c2368 : v25 ∨ v17 ∨ v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v3 := by
      rcases c2345 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : v19 := by
      rcases c2364 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v26 := by
      rcases c2360 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n3
    have u16 : ¬v38 := by
      rcases c2362 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n5
    have u17 : v24 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u18 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v16 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u18
    have u22 : ¬v21 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u19
    have u23 : v36 := by
      rcases c2367 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v29 := by
      rcases c2017 with a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
    have u27 : ¬v34 := by
      rcases c2171 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u19
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u28 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u25
    have u29 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u12
      · exact absurd a u28
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u25
    have u30 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    rcases c887 with a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd u29 a
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u6
  have c2369 : v22 ∨ v17 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v3 := by
      rcases c2345 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : v25 := by
      rcases c2368 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v16 := by
      rcases c1807 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u2
      · exact a
      · exact absurd a n1
    have u20 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v34 := by
      rcases c2055 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u18
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
    have u22 : ¬v38 := by
      rcases c2361 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n4
    have u23 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u22
      · exact a
    have u24 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u23 a
      · exact a
    have u29 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a n4
    have u30 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u25
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
    have u31 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u32 : ¬v37 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u25
    have u33 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
    have u34 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u32
      · exact absurd a u7
      · exact a
    have u35 : v39 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u32
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u15
      · exact a
    have u36 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u30 a
      · exact absurd u34 a
      · exact a
    have u37 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u35 a
      · exact a
    have u38 : v21 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u36
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a u31
      · exact absurd a n4
    have u39 : v19 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u28
      · exact absurd a u33
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a u37
    have u40 : v20 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u12
      · exact a
      · exact absurd u38 a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u17
    rcases c92 with a|a|a
    · exact absurd u38 a
    · exact absurd u40 a
    · exact absurd u39 a
  have c2370 : v17 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v3 := by
      rcases c2345 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v22 := by
      rcases c2369 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : v13 := by
      rcases c2318 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u5
    have u19 : ¬v16 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u15
    have u20 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u21 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u18 a
      · exact a
    have u25 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd u7 a
    have u26 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd u7 a
      · exact absurd a u13
      · exact a
    have u27 : ¬v34 := by
      rcases c2171 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u28 : ¬v35 := by
      rcases c1491 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u29 : v31 := by
      rcases c267 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u24
      · exact absurd a u6
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a n3
    have u30 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u29 a
      · exact a
    rcases c2116 with a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u2
    · exact absurd a u19
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u28
  have c2371 : ¬v38 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v13 := by
      rcases c2176 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
    have u10 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u17 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u18 : ¬v35 := by
      rcases c1491 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v19 := by
      rcases c726 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : v5 := by
      rcases c2262 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n6
    have u21 : ¬v7 := by
      rcases c2354 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
    have u22 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u2
    have u23 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u8 a
    have u24 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u22 a
      · exact absurd u8 a
      · exact a
    have u25 : v22 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd u22 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u26 : v24 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd u8 a
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u13
      · exact a
      · exact absurd a u11
    rcases c101 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  exact ⟨c2338, c2339, c2345, c2347, c2354, c2359, c2363, c2366, c2370, c2371⟩
