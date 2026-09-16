import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1450-1499 of the 2934-step refutation of ccase002: 122 core clauses and 71 earlier-derived ones give 18 more. -/
theorem CCase002_block029
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c98 : v15 ∨ v20 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
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
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c138 : ¬v34 ∨ ¬v32)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c150 : ¬v39 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c165 : ¬v45 ∨ ¬v43)
    (c166 : ¬v43 ∨ ¬v46)
    (c170 : ¬v45 ∨ ¬v44)
    (c171 : ¬v44 ∨ ¬v46)
    (c175 : ¬v45 ∨ ¬v46)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c202 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v37 ∨ v30 ∨ v32 ∨ v39)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c212 : ¬v46 ∨ v3 ∨ v40 ∨ v25 ∨ v26 ∨ v24 ∨ v32 ∨ v2 ∨ v37 ∨ v4 ∨ v39 ∨ v44 ∨ v45 ∨ v47)
    (c230 : ¬v45 ∨ v3 ∨ v30 ∨ v42 ∨ v31 ∨ v38 ∨ v7 ∨ v39 ∨ v43 ∨ v32 ∨ v2 ∨ v44 ∨ v46 ∨ v49)
    (c233 : ¬v28 ∨ v35 ∨ v20 ∨ v21 ∨ v15 ∨ v34 ∨ v27 ∨ v22)
    (c235 : ¬v46 ∨ v39 ∨ v3 ∨ v47 ∨ v40 ∨ v5 ∨ v4 ∨ v45)
    (c263 : ¬v42 ∨ v36 ∨ v43 ∨ v29 ∨ v48 ∨ v35 ∨ v41 ∨ v49)
    (c273 : v15 ∨ v21 ∨ v1 ∨ v19 ∨ v49 ∨ v14 ∨ v5 ∨ v44 ∨ v12 ∨ v9 ∨ v13 ∨ v43 ∨ v2 ∨ ¬v8)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c284 : v13 ∨ v47 ∨ v4 ∨ v48 ∨ v6 ∨ ¬v5 ∨ v12 ∨ v11)
    (c348 : v43 ∨ ¬v2 ∨ v1 ∨ v3 ∨ v9 ∨ v44 ∨ v45 ∨ v10)
    (c353 : ¬v46 ∨ v11 ∨ v40 ∨ v4 ∨ v39 ∨ v12 ∨ v7 ∨ v10 ∨ v3 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c359 : v13 ∨ v49 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v8 ∨ v43)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c371 : v15 ∨ v48 ∨ v19 ∨ v46 ∨ v20 ∨ v1 ∨ v4 ∨ v47 ∨ ¬v12 ∨ v13 ∨ v5 ∨ v8 ∨ v14 ∨ v11)
    (c373 : ¬v16 ∨ v22 ∨ v24 ∨ v23 ∨ v15 ∨ v9 ∨ v10 ∨ v17)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c480 : ¬v8 ∨ v15 ∨ v21 ∨ v7 ∨ v2 ∨ v9 ∨ v14 ∨ v1)
    (c494 : v43 ∨ v29 ∨ v21 ∨ v23 ∨ ¬v22 ∨ v30 ∨ v34 ∨ v20 ∨ v36 ∨ v15 ∨ v27 ∨ v28 ∨ v44 ∨ v49)
    (c497 : ¬v46 ∨ v39 ∨ v47 ∨ v38 ∨ v4 ∨ v3 ∨ v45 ∨ v5)
    (c498 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ ¬v3 ∨ v9 ∨ v10)
    (c511 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v2 ∨ v44 ∨ v3 ∨ v4)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c679 : ¬v6 ∨ ¬v11 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c706 : ¬v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c742 : ¬v12 ∨ v4 ∨ v5 ∨ v13 ∨ v18 ∨ v19 ∨ v20)
    (c791 : v27 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1046 : v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v26 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1116 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1165 : ¬v17 ∨ ¬v16 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49)
    (c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c1203 : v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1227 : v17 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28)
    (c1235 : ¬v12 ∨ ¬v16 ∨ ¬v20 ∨ v23)
    (c1239 : v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1292 : v29 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ ¬v34 ∨ v38 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1297 : ¬v2 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1316 : ¬v16 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1326 : v20 ∨ v7 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1464 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v42)
    (c1465 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v49)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1533 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1570 : v39 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v33 ∨ v40)
    (c1582 : v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1646 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c1666 : ¬v42 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v48 ∨ v49)
    (c1697 : ¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v47 ∨ v48 ∨ v49)
    (c1701 : v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1730 : ¬v9 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v44 ∨ v49)
    (c1745 : v39 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35)
    (c1770 : ¬v6 ∨ ¬v1 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1773 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1785 : v21 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v13 ∨ v15 ∨ v18 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1796 : ¬v19 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1805 : ¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35)
    (c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1817 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1848 : ¬v1 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1906 : v8 ∨ v4 ∨ v7 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v21 ∨ ¬v22 ∨ v25 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1936 : v33 ∨ ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1961 : ¬v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1982 : ¬v36 ∨ v29 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1983 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2005 : v16 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2010 : ¬v14 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2011 : v22 ∨ v1 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v28 ∨ ¬v45 ∨ v46 ∨ v48 ∨ v49)
    (c2012 : v8 ∨ v21 ∨ v28 ∨ ¬v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v19 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27) ∧ (¬v34 ∨ v15 ∨ v21 ∨ ¬v22) ∧ (¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28) ∧ (¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v16 ∨ v20 ∨ v26) ∧ (v13 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v8 ∨ v15 ∨ ¬v16 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28) ∧ (v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v27 ∨ ¬v39) ∧ (¬v3 ∨ v4 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45) ∧ (v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45) ∧ (v45 ∨ v8 ∨ v10 ∨ v14 ∨ v15 ∨ v17 ∨ v22 ∨ v24 ∨ ¬v34 ∨ v43 ∨ v44 ∨ v49) ∧ (v10 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (v47 ∨ v8 ∨ v13 ∨ v15 ∨ ¬v16 ∨ ¬v17 ∨ v20 ∨ v22 ∨ v24 ∨ v27 ∨ v48 ∨ v49) ∧ (v12 ∨ v3 ∨ v4 ∨ ¬v6 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ ¬v29 ∨ v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49) ∧ (v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v43 ∨ v44 ∨ v49) := by
  have c2013 : ¬v19 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u4 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c1203 with a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
  have c2014 : v20 ∨ ¬v7 ∨ v8 ∨ ¬v12 ∨ v14 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v6 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n9
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u6
    have u9 : v4 := by
      rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
    rcases c579 with a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u9 a
    · exact absurd u8 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2015 : ¬v34 ∨ v15 ∨ v21 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1805 with a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
  have c2016 : v47 ∨ v8 ∨ ¬v12 ∨ v21 ∨ v28 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v29 := by
      rcases c2012 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v45 := by
      rcases c1701 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v22 := by
      rcases c2011 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd u9 a
    have u16 : ¬v19 := by
      rcases c2013 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u17 : ¬v20 := by
      rcases c1235 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u5 a
      · exact a
      · exact absurd a u13
    have u18 : v17 := by
      rcases c1203 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u14
    have u19 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v6 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd u18 a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n6
    have u21 : ¬v7 := by
      rcases c2014 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u5 a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u20 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    rcases c1906 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u22
    · exact absurd a n3
    · exact absurd u9 a
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
  have c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1982 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2018 : v20 ∨ v12 ∨ v21 ∨ ¬v22 ∨ v28 ∨ v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v14 := by
      rcases c2010 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v19 := by
      rcases c2013 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u10 : v45 := by
      rcases c1316 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd n3 a
    have u12 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n9
    have u16 : v30 := by
      rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd n3 a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n9
    have u17 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v42 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n9
    have u20 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a u19
  have c2019 : v28 ∨ v8 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v14 := by
      rcases c2010 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v45 := by
      rcases c1316 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v12 := by
      rcases c2016 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v29 := by
      rcases c2012 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v22 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
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
    have u16 : v20 := by
      rcases c2018 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v19 := by
      rcases c2013 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd u1 a
      · exact absurd u16 a
      · exact a
    have u19 : v13 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd u16 a
    have u20 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u19 a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u21
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a u20
  have c2020 : v8 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v45 := by
      rcases c1316 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v28 := by
      rcases c2019 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v20 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
    have u14 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n5
    have u15 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v35 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
    rcases c127 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c2021 : ¬v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n4 a
    rcases c233 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
  have c2022 : ¬v28 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v14 := by
      rcases c2010 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v8 := by
      rcases c2020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v20 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u4
    have u13 : ¬v19 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
    have u14 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v29 := by
      rcases c2021 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd n0 a
    have u17 : v35 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u16
      · exact a
    have u18 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : v2 := by
      rcases c480 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u19
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u10
    rcases c1297 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd u20 a
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2023 : v4 ∨ v12 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ ¬v35 ∨ v41 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : v42 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact a
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd n11 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd n11 a
      · exact a
    have u7 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
    have u8 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c511 with a|a|a|a|a|a|a|a
    · exact absurd n11 a
    · exact absurd a u10
    · exact absurd a n12
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n0
  have c2024 : v21 ∨ ¬v6 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v28 := by
      rcases c2022 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v8 := by
      rcases c2020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v14 := by
      rcases c2010 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n11
    have u14 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v35 := by
      rcases c2023 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a u16
    have u18 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    have u19 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n1 a
    rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd u3 a
  have c2025 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v16 ∨ v20 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v18 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
    rcases c77 with a|a|a
    · exact absurd n4 a
    · exact absurd n0 a
    · exact absurd u1 a
  have c2026 : v49 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v29 ∨ v34 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v8 := by
      rcases c2020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v19 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n4
    have u8 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
    have u9 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n6
    rcases c2024 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u9 a
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
  have c2027 : v20 ∨ v21 ∨ v22 ∨ v29 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v8 := by
      rcases c2020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v45 := by
      rcases c1316 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v26 := by
      rcases c2026 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v17 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact a
    have u19 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a n4
    have u20 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd u3 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u3 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u23 : v33 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a u16
      · exact a
    rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u22
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd u23 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd a n6
  have c2028 : v21 ∨ v20 ∨ v22 ∨ v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v28 := by
      rcases c2022 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v8 := by
      rcases c2020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : v45 := by
      rcases c1316 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n7
    have u16 : v34 := by
      rcases c2027 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u18
    have u20 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u19 a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u19 a
    have u22 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
    have u23 : v19 := by
      rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd u2 a
    have u24 : v26 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n1
      · exact a
    have u25 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd u3 a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u26
      · exact absurd u23 a
      · exact absurd a n1
    have u28 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u24 a
      · exact a
    rcases c373 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n2
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u25
  have c2029 : v22 ∨ v20 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v28 := by
      rcases c2022 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v8 := by
      rcases c2020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : v29 := by
      rcases c2028 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v27 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
    have u17 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v45 := by
      rcases c1316 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v7 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n6
    have u24 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u23 a
    have u25 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u18 a
    have u26 : v19 := by
      rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd u2 a
    have u27 : v26 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n1
      · exact a
    have u28 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd u3 a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u29
      · exact absurd u26 a
      · exact absurd a n1
    have u31 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u27 a
      · exact a
    rcases c373 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u28
  have c2030 : v20 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v28 := by
      rcases c2022 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v8 := by
      rcases c2020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v22 := by
      rcases c2029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v19 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a u9
    have u11 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd u8 a
    have u15 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v29 := by
      rcases c2018 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u20
  have c2031 : v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v20 := by
      rcases c2030 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v28 := by
      rcases c2022 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v8 := by
      rcases c2020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v27 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
    have u14 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u13 a
      · exact a
    rcases c373 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u3
  have c2032 : ¬v27 ∨ v13 ∨ v15 ∨ ¬v16 ∨ ¬v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u3
    have u8 : v9 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    have u9 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u8 a
      · exact a
    rcases c201 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n1
  have c2033 : v28 ∨ v13 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v21 := by
      rcases c2031 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u9 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v27 := by
      rcases c2032 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd u1 a
    have u13 : v14 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n0
    have u14 : v23 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a n0
    have u15 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a n0
    have u16 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n6
    have u21 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u22 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u27 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u28 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a u18
      · exact absurd a u24
    have u29 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u30 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u28 a
    rcases c511 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u31
    · exact absurd a n3
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u11
    · exact absurd a u26
    · exact absurd a u25
  have c2034 : v13 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v21 := by
      rcases c2031 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u8 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v28 := by
      rcases c2033 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a u13
      · exact absurd a u17
    have u19 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u13
    have u20 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u17
    have u21 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n5
    have u23 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u6
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u24 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u28 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u29 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u30 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a u16
      · exact absurd a u26
    have u31 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u32 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u30 a
    rcases c511 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u33
    · exact absurd a n2
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u10
    · exact absurd a u28
    · exact absurd a u27
  have c2035 : v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v21 := by
      rcases c2031 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v13 := by
      rcases c2034 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v23 := by
      rcases c1116 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n0
      · exact a
    have u9 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1262 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u10
  have c2036 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
  have c2037 : v8 ∨ v15 ∨ ¬v16 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v13 := by
      rcases c2036 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v14 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a u3
    have u5 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u4 a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u5
  have c2038 : v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v21 := by
      rcases c2031 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v22 := by
      rcases c2035 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u14
    have u16 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a u12
      · exact absurd a u13
    have u17 : v8 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u14
    have u18 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd u20 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u22 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u6
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n2
    have u26 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u27 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u28 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u29 : v39 := by
      rcases c1745 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u30 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u29 a
    rcases c511 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u31
    · exact absurd a n1
    · exact absurd a u30
    · exact absurd a u28
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u21
  have c2039 : v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v34 := by
      rcases c2038 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v22 := by
      rcases c2035 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u14 : v41 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u13
      · exact a
    have u15 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v21 := by
      rcases c2031 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u19 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u20 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact a
    have u22 : v8 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u19 a
      · exact absurd u18 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u12
    have u23 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u21
      · exact absurd u19 a
      · exact absurd a u10
      · exact absurd a u11
    have u25 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u26 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u28 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u29 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u30 : v45 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact a
    have u31 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u30 a
      · exact a
    rcases c230 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u28
    · exact absurd a u3
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a u27
    · exact absurd a u16
    · exact absurd a u31
    · exact absurd a u5
    · exact absurd a u29
    · exact absurd a u32
    · exact absurd a n0
    · exact absurd a n3
  have c2040 : ¬v34 ∨ v27 ∨ ¬v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    rcases c791 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c2041 : v9 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n9 a
      · exact a
    have u5 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n9 a
    have u6 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd n9 a
      · exact absurd a n8
      · exact a
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u10
    have u12 : ¬v38 := by
      rcases c202 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
    have u13 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u5
    have u14 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd n9 a
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u15
    have u17 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u13 a
    have u18 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u13 a
    rcases c498 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd u13 a
    · exact absurd a n0
    · exact absurd a n1
  have c2042 : ¬v3 ∨ v4 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c498 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
  have c2043 : v24 ∨ v10 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v8 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n0
    have u4 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd n4 a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd n4 a
      · exact absurd n7 a
      · exact a
    have u6 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v22 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v34 := by
      rcases c2041 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u17 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u16 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : ¬v3 := by
      rcases c2042 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u16 a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
    have u20 : ¬v2 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
    have u21 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u10
    have u22 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u15
    have u26 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact a
      · exact absurd a u25
      · exact absurd a u24
    rcases c212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u26
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n11
  have c2044 : v4 ∨ v3 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
    have u6 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v5 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a u3
    have u9 : v7 := by
      rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    have u11 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u12 : v14 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd u9 a
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v13 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n3
    rcases c56 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c2045 : v13 ∨ v4 ∨ v8 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v46 := by
      rcases c2034 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n12
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v3 := by
      rcases c2044 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n19
    have u6 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n19
    have u7 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u8 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v5 := by
      rcases c27 with a|a|a
      · exact absurd u7 a
      · exact absurd u4 a
      · exact a
    rcases c396 with a|a|a|a|a|a|a|a
    · exact absurd a n19
    · exact absurd a n17
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd u7 a
    · exact absurd a n18
    · exact absurd a u8
    · exact absurd a n0
  have c2046 : v49 ∨ v10 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v27 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd n4 a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd n4 a
      · exact absurd n7 a
      · exact a
    have u3 : v28 := by
      rcases c2043 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u4 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u6 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v9 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n5
    have u11 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n8
    have u12 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v4 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u15 : ¬v6 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u16 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u17 : v1 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
    have u18 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd u17 a
      · exact absurd u14 a
      · exact a
    rcases c1730 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd u17 a
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n0
  have c2047 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    rcases c202 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
  have c2048 : v45 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v21 ∨ v23 ∨ v24 ∨ ¬v34 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v22 := by
      rcases c2015 with a|a|a|a
      · exact absurd n8 a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
    have u6 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v38 := by
      rcases c2047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n0
    have u9 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u4
    have u11 : v1 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n11
    rcases c1844 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd u11 a
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2049 : v8 ∨ v1 ∨ ¬v9 ∨ v15 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v34 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v28 := by
      rcases c2021 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u9 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n17
      · exact absurd a u2
    have u10 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n16
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n11
    have u11 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n13
    have u12 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n15
    · exact absurd a u11
    · exact absurd a u7
  have c2050 : v21 ∨ v1 ∨ v8 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v9 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n6
      · exact a
    have u2 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v34 := by
      rcases c2048 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
    have u4 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v22 := by
      rcases c2049 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v19 := by
      rcases c2013 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u9 : ¬v18 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
    rcases c98 with a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n0
  have c2051 : v17 ∨ v10 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v21 := by
      rcases c2046 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v34 := by
      rcases c2048 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n11
    have u7 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : v8 := by
      rcases c2050 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v22 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v19 := by
      rcases c2013 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n8
    have u17 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u12
      · exact a
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u14
    rcases c98 with a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u1
  have c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd n3 a
      · exact a
    rcases c2047 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c2053 : ¬v11 ∨ v8 ∨ v13 ∨ v15 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v46 := by
      rcases c2038 with a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a u8
    have u11 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v38 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n14
    rcases c2052 with a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd u14 a
    · exact absurd a u7
    · exact absurd a u6
  have c2054 : v24 ∨ v10 ∨ v12 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v21 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v23 := by
      rcases c2051 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v46 := by
      rcases c2030 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v22 := by
      rcases c100 with a|a
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
    have u10 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
    have u11 : v18 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u10
      · exact a
      · exact absurd a n8
    have u12 : v11 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u4
      · exact a
      · exact absurd a n1
    have u13 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v34 := by
      rcases c2053 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u3
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v1 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n12
    have u19 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u20 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n12
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u17
  have c2055 : v45 ∨ v8 ∨ v10 ∨ v14 ∨ v15 ∨ v17 ∨ v22 ∨ v24 ∨ ¬v34 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : v1 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
    have u5 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n10
      · exact absurd a n0
    have u6 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u3
  have c2056 : v24 ∨ v10 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v21 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c2030 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v23 := by
      rcases c2051 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v12 := by
      rcases c2054 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v34 := by
      rcases c2055 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n11
    have u13 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u13 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v3 := by
      rcases c2042 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
    have u17 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u18 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u20
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u21
    · exact absurd a u20
  have c2057 : v24 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ v17 ∨ v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n1 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v46 := by
      rcases c2034 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v3 := by
      rcases c2042 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
    have u8 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n8
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a u5
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u11
  have c2058 : v10 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v23 := by
      rcases c2051 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v21 := by
      rcases c2056 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v14 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n2
      · exact a
    have u10 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd u8 a
      · exact absurd a n7
      · exact absurd a u6
    have u11 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v6 := by
      rcases c2057 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v1 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n10
    have u20 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u21 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n10
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u20
    · exact absurd a u18
  have c2059 : v47 ∨ ¬v1 ∨ v13 ∨ v15 ∨ ¬v16 ∨ ¬v17 ∨ v20 ∨ v22 ∨ v27 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
    have u4 : v46 := by
      rcases c2035 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd u5 a
      · exact absurd a n8
      · exact a
    have u15 : ¬v28 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u11
    have u16 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact a
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v42 := by
      rcases c1165 with a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u18 : v7 := by
      rcases c1785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n10
    have u19 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact a
    rcases c497 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u21
  have c2060 : v47 ∨ v8 ∨ v13 ∨ v15 ∨ ¬v16 ∨ ¬v17 ∨ v20 ∨ v22 ∨ v24 ∨ v27 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c2035 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
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
    have u8 : ¬v1 := by
      rcases c2059 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n11
    have u11 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v28 := by
      rcases c2021 with a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
      · exact a
    have u18 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u19 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u10
    have u21 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    have u22 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u18 a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u23 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u24 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    have u25 : v39 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u24
    have u26 : ¬v12 := by
      rcases c742 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
    have u27 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u25 a
      · exact a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u12
    · exact absurd a u24
    · exact absurd a u20
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u27
  have c2061 : v12 ∨ v3 ∨ v4 ∨ ¬v6 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ ¬v29 ∨ v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v46 := by
      rcases c2030 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u10 : v39 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u9
    have u11 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n13
      · exact a
    rcases c158 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c2062 : v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd n4 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n12
  exact ⟨c2013, c2015, c2017, c2021, c2025, c2034, c2035, c2037, c2038, c2039, c2040, c2042, c2052, c2055, c2058, c2060, c2061, c2062⟩
