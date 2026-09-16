import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2750-2799 of the 2934-step refutation of ccase002: 120 core clauses and 74 earlier-derived ones give 23 more. -/
theorem CCase002_block055
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c98 : v15 ∨ v20 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
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
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c143 : ¬v37 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c153 : ¬v42 ∨ ¬v37)
    (c157 : ¬v42 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c169 : ¬v43 ∨ ¬v49)
    (c174 : ¬v44 ∨ ¬v49)
    (c178 : ¬v49 ∨ ¬v45)
    (c181 : ¬v49 ∨ ¬v46)
    (c183 : ¬v49 ∨ ¬v47)
    (c184 : ¬v49 ∨ ¬v48)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c210 : v29 ∨ v43 ∨ v44 ∨ v42 ∨ v35 ∨ v30 ∨ v37 ∨ ¬v36)
    (c245 : v36 ∨ ¬v49 ∨ v7 ∨ v6 ∨ v4 ∨ v34 ∨ v42 ∨ v29 ∨ v39 ∨ v35 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c276 : v1 ∨ ¬v2 ∨ v44 ∨ v3 ∨ v9 ∨ v45 ∨ v8 ∨ v10)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c302 : v29 ∨ ¬v22 ∨ v15 ∨ v35 ∨ v14 ∨ v26 ∨ v8 ∨ v23 ∨ v27 ∨ v19 ∨ v33 ∨ v28 ∨ v16 ∨ v9)
    (c325 : v36 ∨ ¬v49 ∨ v42 ∨ v7 ∨ v5 ∨ v40 ∨ v6 ∨ v28 ∨ v22 ∨ v27 ∨ v35 ∨ v43 ∨ v47 ∨ v48)
    (c333 : v13 ∨ v42 ∨ v1 ∨ v39 ∨ v4 ∨ v14 ∨ v41 ∨ ¬v49 ∨ v7 ∨ v8 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c352 : ¬v12 ∨ v20 ∨ v4 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v13)
    (c355 : v29 ∨ v43 ∨ v35 ∨ v37 ∨ v44 ∨ v48 ∨ v14 ∨ v1 ∨ v8 ∨ v41 ∨ v9 ∨ v34 ∨ ¬v36 ∨ v42)
    (c380 : v43 ∨ ¬v49 ∨ v42 ∨ v6 ∨ v1 ∨ v7 ∨ v41 ∨ v48)
    (c399 : v13 ∨ v12 ∨ v48 ∨ v47 ∨ v14 ∨ v7 ∨ ¬v6 ∨ v5)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c428 : v29 ∨ ¬v28 ∨ v15 ∨ v35 ∨ v22 ∨ v27 ∨ v34 ∨ v21)
    (c431 : ¬v31 ∨ v38 ∨ v24 ∨ v37 ∨ v32 ∨ v30 ∨ v23 ∨ v39)
    (c456 : v36 ∨ v22 ∨ v34 ∨ v28 ∨ v27 ∨ ¬v29 ∨ v1 ∨ v41 ∨ v2 ∨ v35 ∨ v7 ∨ v30 ∨ v37 ∨ v43)
    (c459 : v29 ∨ ¬v23 ∨ v30 ∨ v15 ∨ v24 ∨ v17 ∨ v16 ∨ v22)
    (c475 : v7 ∨ ¬v20 ∨ v27 ∨ v6 ∨ v21 ∨ v23 ∨ v13 ∨ v15 ∨ v19 ∨ v12 ∨ v9 ∨ v16 ∨ v5 ∨ v28)
    (c485 : v36 ∨ ¬v23 ∨ v15 ∨ v31 ∨ v30 ∨ v28 ∨ v34 ∨ v16 ∨ v22 ∨ v27 ∨ v37 ∨ v38 ∨ v20 ∨ v24)
    (c513 : ¬v26 ∨ v34 ∨ v25 ∨ v18 ∨ v32 ∨ v27 ∨ v33 ∨ v19)
    (c534 : v44 ∨ v43 ∨ v7 ∨ v14 ∨ v8 ∨ v2 ∨ ¬v1 ∨ v9)
    (c541 : ¬v26 ∨ v34 ∨ v25 ∨ v18 ∨ v33 ∨ v40 ∨ v48 ∨ v27 ∨ v31 ∨ v47 ∨ v19 ∨ v46 ∨ v17 ∨ v24)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c767 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1046 : v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v26 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1220 : ¬v18 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1275 : ¬v25 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1297 : ¬v2 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1309 : v22 ∨ v15 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1331 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1380 : v3 ∨ v16 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v45 ∨ v46 ∨ v47)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1446 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v16)
    (c1470 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v39 ∨ v45)
    (c1511 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v20)
    (c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1672 : ¬v4 ∨ ¬v1 ∨ v3 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1742 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v18 ∨ v19)
    (c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35)
    (c1764 : ¬v24 ∨ v5 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v33 ∨ v40 ∨ v47)
    (c1792 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1798 : ¬v17 ∨ ¬v16 ∨ ¬v27 ∨ v34)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1804 : ¬v18 ∨ ¬v16 ∨ ¬v27)
    (c1805 : ¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35)
    (c1807 : ¬v25 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v17)
    (c1808 : ¬v18 ∨ ¬v13 ∨ v15 ∨ ¬v16)
    (c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1817 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47)
    (c1972 : ¬v23 ∨ v15 ∨ v16 ∨ ¬v33)
    (c2003 : ¬v21 ∨ v8 ∨ v15 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2070 : ¬v26 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v33)
    (c2116 : ¬v22 ∨ v15 ∨ v16 ∨ v29 ∨ v30 ∨ v35)
    (c2126 : ¬v24 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2389 : ¬v33 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44)
    (c2390 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v33)
    (c2434 : ¬v28 ∨ v3 ∨ v4 ∨ v19 ∨ ¬v21 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2440 : v21 ∨ v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ v29)
    (c2579 : ¬v4 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2598 : v3 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2665 : ¬v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ ¬v18 ∨ v19)
    (c2734 : ¬v24 ∨ v13 ∨ ¬v16 ∨ ¬v20)
    (c2742 : ¬v17 ∨ ¬v20 ∨ v24 ∨ v25 ∨ v27)
    (c2837 : ¬v29 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2847 : ¬v29 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2850 : v32 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v29 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c3028 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c3032 : ¬v27 ∨ ¬v16 ∨ v17 ∨ ¬v21)
    (c3052 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c3118 : v10 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v44 ∨ v45 ∨ v46)
    (c3170 : ¬v22 ∨ v13 ∨ v19 ∨ ¬v20 ∨ v21)
    (c3235 : v49)
    (c3256 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v32 ∨ v34)
    (c3258 : ¬v37 ∨ v29 ∨ v30)
    (c3265 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24)
    (c3284 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40)
    (c3295 : ¬v41 ∨ v1 ∨ v6 ∨ v7)
    (c3309 : ¬v15)
    (c3322 : ¬v6 ∨ ¬v4)
    (c3332 : ¬v10 ∨ v3 ∨ v4 ∨ v7 ∨ v9 ∨ v16 ∨ v17 ∨ v21)
    (c3335 : v19 ∨ ¬v34)
    (c3336 : v17 ∨ v3 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v16 ∨ v19 ∨ v21)
    (c3339 : ¬v6 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v14)
    (c3340 : ¬v18 ∨ ¬v2 ∨ v8 ∨ v10 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v17 ∨ v19 ∨ v21)
    : (v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25) ∧ (¬v33 ∨ v4 ∨ v6 ∨ v7 ∨ v36 ∨ v39 ∨ v42) ∧ (¬v33 ∨ v3 ∨ v10 ∨ v16 ∨ v17) ∧ (¬v33 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v16 ∨ v19 ∨ ¬v21) ∧ (v33 ∨ v5 ∨ v12 ∨ ¬v16 ∨ v19) ∧ (¬v4 ∨ ¬v2 ∨ v5) ∧ (¬v5 ∨ ¬v2) ∧ (¬v2 ∨ v19) ∧ (¬v16 ∨ ¬v12 ∨ ¬v20) ∧ (v16 ∨ v2 ∨ v9 ∨ ¬v32) ∧ (v18 ∨ v3 ∨ v4 ∨ v11 ∨ v16 ∨ v19 ∨ v32) ∧ (¬v23 ∨ v11 ∨ v17 ∨ ¬v18 ∨ v19) ∧ (v4 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v19 ∨ ¬v20) ∧ (v23 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v16 ∨ v36 ∨ v37) ∧ (¬v20 ∨ ¬v5 ∨ ¬v12 ∨ v19) ∧ (¬v29 ∨ v1 ∨ v2 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v37 ∨ v41) ∧ (¬v23 ∨ ¬v5 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v32) ∧ (v16 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v19 ∨ v20) ∧ (¬v27 ∨ ¬v16 ∨ v19 ∨ v20) ∧ (¬v4 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v27 ∨ v34) ∧ (¬v1 ∨ v2 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v14) ∧ (v22 ∨ v1 ∨ v8 ∨ ¬v32) ∧ (v22 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v19 ∨ v20) := by
  have c3341 : v19 ∨ ¬v2 ∨ v3 ∨ ¬v9 ∨ v16 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n3 a
      · exact a
    have u12 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n3 a
      · exact a
    have u13 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n3 a
      · exact a
    have u14 : ¬v5 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : v17 := by
      rcases c3336 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u16 : ¬v4 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v18 := by
      rcases c3340 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd u15 a
      · exact absurd a n0
      · exact absurd a n5
    have u18 : ¬v25 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u17
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
    have u20 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u20 a
      · exact a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd u15 a
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u18
  have c3342 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n0
  have c3343 : v18 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v16 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v11 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n6
    have u8 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n6
      · exact a
    have u9 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u6
    have u10 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v20 := by
      rcases c2390 with a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a u10
    have u17 : ¬v17 := by
      rcases c2742 with a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u14
    rcases c541 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u17
    · exact absurd a u15
  have c3344 : ¬v33 ∨ v4 ∨ v6 ∨ v7 ∨ v36 ∨ v39 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    rcases c245 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3345 : v20 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c1511 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u6 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n6
      · exact a
    have u7 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u6
    have u8 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u7
      · exact a
      · exact absurd a u6
    have u9 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v33 := by
      rcases c3344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
    have u14 : v35 := by
      rcases c3284 with a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u6
      · exact a
      · exact absurd a u11
    have u15 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v32 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a u6
    rcases c139 with a|a
    · exact absurd u16 a
    · exact absurd u14 a
  have c3346 : ¬v26 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ ¬v20 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    rcases c475 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n9 a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a u3
  have c3347 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v16 ∨ v19 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : v20 := by
      rcases c3345 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v18 := by
      rcases c3343 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v10 := by
      rcases c3332 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n9
    have u10 : v11 := by
      rcases c3336 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v26 := by
      rcases c3346 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u6 a
      · exact absurd a n9
    have u13 : v33 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v23 := by
      rcases c1972 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd u13 a
    have u18 : v24 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact a
    rcases c2126 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u15
  have c3348 : ¬v33 ∨ v3 ∨ v10 ∨ v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v23 := by
      rcases c1972 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd n0 a
    have u6 : v24 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
    rcases c2126 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
  have c3349 : v21 ∨ ¬v2 ∨ v3 ∨ v16 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n4
      · exact a
    have u10 : ¬v9 := by
      rcases c3341 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
    have u11 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v1 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact a
    have u14 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact a
    have u15 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
    have u16 : v12 := by
      rcases c3347 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u17 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : v18 := by
      rcases c1742 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u18
      · exact a
      · exact absurd a n4
    have u21 : v20 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u17
    have u22 : ¬v22 := by
      rcases c3170 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd u21 a
      · exact absurd a n0
    have u23 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u20 a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v33 := by
      rcases c3348 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u23
    have u25 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u26 : ¬v24 := by
      rcases c1764 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd u21 a
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u6
    have u27 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u26
    have u28 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u27 a
      · exact a
    have u32 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u28
    have u33 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u23
      · exact a
    have u34 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u35 : ¬v28 := by
      rcases c1309 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a u29
      · exact absurd a u9
      · exact absurd a u31
    have u36 : v38 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u26
      · exact absurd a u32
      · exact absurd a u30
      · exact absurd a u28
      · exact absurd a u33
      · exact absurd a u34
    have u37 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u36 a
    have u38 : ¬v36 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u37
      · exact absurd a u31
      · exact absurd a u28
      · exact absurd a u32
      · exact a
    have u39 : v27 := by
      rcases c325 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u38
      · exact absurd u1 a
      · exact absurd a u37
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u35
      · exact absurd a u22
      · exact a
      · exact absurd a u31
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
    have u40 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u39 a
    have u41 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u39 a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u18
    · exact absurd u20 a
    · exact absurd a n4
    · exact absurd a u26
    · exact absurd a u41
    · exact absurd a u40
  have c3350 : ¬v12 ∨ ¬v2 ∨ v3 ∨ v19 ∨ ¬v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : v1 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
    have u11 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    have u14 : v18 := by
      rcases c1742 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
      · exact a
      · exact absurd a n3
    have u15 : v20 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
    rcases c91 with a|a|a
    · exact absurd u14 a
    · exact absurd n4 a
    · exact absurd u15 a
  have c3351 : v33 ∨ v5 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n5
      · exact a
    have u8 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v31 := by
      rcases c541 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u9
    have u11 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u10 a
      · exact a
    rcases c513 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n5
  have c3352 : ¬v20 ∨ v3 ∨ v5 ∨ v12 ∨ v16 ∨ v19 ∨ ¬v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n0 a
    have u10 : ¬v25 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n0 a
    have u12 : v33 := by
      rcases c3351 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u10
    have u13 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v23 := by
      rcases c1972 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd u12 a
    have u17 : v10 := by
      rcases c3348 with a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u11
    have u18 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
    have u19 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v4 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u22 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u20
    · exact absurd a n4
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u22
  have c3353 : ¬v4 ∨ ¬v2 ∨ v3 ∨ v5 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v9 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u7 a
      · exact a
    rcases c1574 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3354 : ¬v33 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v16 ∨ v19 ∨ ¬v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v20 := by
      rcases c3352 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
    have u13 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u14 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v28 := by
      rcases c2434 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd n7 a
      · exact absurd a u13
      · exact absurd a u16
    have u18 : v17 := by
      rcases c3348 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n5
      · exact a
    have u19 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n7 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v11 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u19
      · exact absurd a n6
    have u21 : ¬v25 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c3342 with a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u21
  have c3355 : v3 ∨ ¬v2 ∨ v16 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n3
      · exact a
    have u6 : v21 := by
      rcases c3349 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v12 := by
      rcases c3350 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u6 a
    have u8 : ¬v5 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v4 := by
      rcases c3353 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u8
    have u10 : ¬v33 := by
      rcases c3354 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u6 a
    have u11 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v20 := by
      rcases c3352 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u6 a
    have u16 : v32 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u5
    have u17 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u11
    have u20 : v18 := by
      rcases c2390 with a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u10
    have u21 : ¬v17 := by
      rcases c85 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u20 a
    have u22 : v10 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n0
      · exact a
      · exact absurd a u21
      · exact absurd a u14
    have u23 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u5
    rcases c3339 with a|a|a|a|a
    · exact absurd u25 a
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a u23
    · exact absurd a u24
  have c3356 : ¬v26 ∨ v1 ∨ v5 ∨ v7 ∨ v12 ∨ v16 ∨ v19 ∨ v36 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := c3309
    have u8 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n6
      · exact a
    have u14 : ¬v29 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u14
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u12
    have u16 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v21 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n5
      · exact a
    have u21 : v2 := by
      rcases c1446 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n5
    have u22 : ¬v6 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n3
      · exact a
      · exact absurd a n2
    have u23 : v3 := by
      rcases c3355 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a n3
    have u25 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u21 a
      · exact absurd u23 a
      · exact a
    have u26 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u6
    have u27 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u6
      · exact a
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u13
    have u28 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u27 a
    have u31 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u30
      · exact absurd a u8
    have u32 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u31 a
    rcases c738 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u33
    · exact absurd u31 a
    · exact absurd a u32
    · exact absurd a n8
    · exact absurd a u29
    · exact absurd a u28
  have c3357 : v12 ∨ v1 ∨ v5 ∨ v7 ∨ v16 ∨ v19 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c3356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v33 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c860 with a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c3358 : v16 ∨ ¬v2 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : v3 := by
      rcases c3355 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    have u8 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u10 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u12 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
    have u14 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u5
    have u15 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v12 := by
      rcases c3357 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u13
    have u20 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v20 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u20
    have u24 : v18 := by
      rcases c1742 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u21
      · exact a
      · exact absurd a n2
    have u25 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u24 a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v22 := by
      rcases c3170 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd u23 a
      · exact absurd a u26
    have u28 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u27
    have u29 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u25
      · exact a
    have u33 : ¬v24 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u32
      · exact absurd a u29
      · exact absurd a u31
      · exact absurd a u30
    have u34 : v28 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a u27
      · exact absurd a u32
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u35 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u34 a
      · exact a
    have u36 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u34 a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u21
    · exact absurd u24 a
    · exact absurd a n2
    · exact absurd a u33
    · exact absurd a u36
    · exact absurd a u35
  have c3359 : ¬v3 ∨ ¬v2 ∨ v5 ∨ ¬v12 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u8 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u10 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n3 a
      · exact a
    have u13 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n3 a
    have u14 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n3 a
    have u15 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n3 a
    have u16 : v16 := by
      rcases c3358 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
    have u17 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u18 : v20 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
    have u19 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u5
    have u20 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd u16 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v18 := by
      rcases c78 with a|a|a
      · exact absurd u16 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v25 := by
      rcases c1807 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd u16 a
      · exact absurd a u20
    have u26 : v32 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a n4
      · exact a
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u26 a
    rcases c738 with a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u28
    · exact absurd u26 a
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u22
  have c3360 : ¬v12 ∨ ¬v2 ∨ v5 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v15 := c3309
    have u5 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : v16 := by
      rcases c3358 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
    have u11 : ¬v3 := by
      rcases c3359 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
    have u12 : ¬v4 := by
      rcases c3353 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a n2
    have u13 : v1 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
    have u15 : v20 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd u10 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v24 := by
      rcases c2734 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u10 a
      · exact absurd u15 a
    have u18 : ¬v18 := by
      rcases c78 with a|a|a
      · exact absurd u10 a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v25 := by
      rcases c1807 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd u10 a
      · exact absurd a u16
    have u20 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u17
    have u21 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u19
    rcases c133 with a|a
    · exact absurd u20 a
    · exact absurd u21 a
  have c3361 : v6 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v11 ∨ ¬v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : ¬v4 := by
      rcases c3353 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n6
      · exact a
    have u9 : ¬v12 := by
      rcases c3360 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
    have u10 : v16 := by
      rcases c3358 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
    have u11 : ¬v27 := by
      rcases c1804 with a|a|a
      · exact absurd n5 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n5 a
    have u13 : ¬v13 := by
      rcases c1808 with a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u6
      · exact absurd u10 a
    have u14 : ¬v20 := by
      rcases c78 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n5 a
    have u15 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n5 a
    have u16 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u11
      · exact a
      · exact absurd a u8
    have u17 : v7 := by
      rcases c3345 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u15
    have u18 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    have u20 : v9 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v24 := by
      rcases c2665 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd n5 a
      · exact absurd a n6
    have u24 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u23
    have u25 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v22 := by
      rcases c1805 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u27
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd a u19
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u28
  have c3362 : ¬v6 ∨ ¬v2 ∨ v12 ∨ v13 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u7 : v14 := by
      rcases c3339 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u8 : v9 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c46 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c3363 : ¬v18 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : v16 := by
      rcases c3358 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
    have u7 : ¬v4 := by
      rcases c3353 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v12 := by
      rcases c3360 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v13 := by
      rcases c1808 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd u6 a
    have u10 : ¬v20 := by
      rcases c78 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v6 := by
      rcases c3362 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u9
    have u13 : v7 := by
      rcases c3345 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u11
    have u14 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    have u15 : v9 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u15 a
      · exact a
    rcases c3361 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u16
    · exact absurd n0 a
    · exact absurd a n4
  have c3364 : ¬v33 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v11 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : v25 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n5
      · exact a
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3365 : v33 ∨ v5 ∨ v12 ∨ ¬v16 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c2070 with a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n0
  have c3366 : v3 ∨ ¬v2 ∨ v5 ∨ v19 ∨ v20 ∨ ¬v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v4 := by
      rcases c3353 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    have u2 : ¬v12 := by
      rcases c3360 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v18 := by
      rcases c3364 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    rcases c3363 with a|a|a|a|a
    · exact absurd u3 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
  have c3367 : v20 ∨ ¬v2 ∨ v5 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n3
      · exact a
    have u4 : ¬v12 := by
      rcases c3360 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v16 := by
      rcases c3358 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
    have u6 : v33 := by
      rcases c3365 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd u5 a
      · exact absurd a n3
    have u7 : v3 := by
      rcases c3366 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u6 a
    have u8 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u9 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u11 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v13 := by
      rcases c1511 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
    have u13 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
    have u14 : v21 := by
      rcases c3345 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n3
      · exact a
    have u15 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a u3
    have u16 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd u5 a
      · exact absurd u14 a
      · exact a
    rcases c3032 with a|a|a|a
    · exact absurd u15 a
    · exact absurd u5 a
    · exact absurd a u16
    · exact absurd u14 a
  have c3368 : ¬v4 ∨ ¬v2 ∨ v5 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v3 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c3353 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
  have c3369 : v5 ∨ ¬v2 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v4 := by
      rcases c3368 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
    have u10 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n2
      · exact a
    have u11 : ¬v12 := by
      rcases c3360 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    have u12 : v20 := by
      rcases c3367 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    have u13 : v16 := by
      rcases c3358 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u14 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
    have u15 : v33 := by
      rcases c3365 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd u13 a
      · exact absurd a n2
    have u16 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
    have u24 : ¬v22 := by
      rcases c1805 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u21
    have u25 : v18 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u26 : ¬v27 := by
      rcases c1804 with a|a|a
      · exact absurd u25 a
      · exact absurd u13 a
      · exact a
    have u27 : ¬v13 := by
      rcases c1808 with a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u8
      · exact absurd u13 a
    have u28 : ¬v28 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u16
    have u29 : ¬v24 := by
      rcases c2734 with a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd u13 a
      · exact absurd u12 a
    have u30 : v26 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u27
      · exact absurd u12 a
      · exact absurd a u16
      · exact a
      · exact absurd a u26
      · exact absurd a u28
    have u31 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a u24
      · exact absurd a u31
      · exact absurd a u29
    have u33 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u32 a
    have u35 : v3 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u33
      · exact absurd a u14
      · exact absurd a u29
    have u36 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u35 a
    have u37 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u34
      · exact absurd a u36
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u24
    have u38 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u37 a
    rcases c210 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u38
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd u37 a
  have c3370 : ¬v5 ∨ ¬v2 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u8 : v12 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u9 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u10 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u8 a
    rcases c276 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u11
  have c3371 : ¬v2 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v5 := by
      rcases c3370 with a|a
      · exact a
      · exact absurd n0 a
    rcases c3369 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
  have c3372 : ¬v16 ∨ ¬v12 ∨ ¬v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v24 := by
      rcases c2734 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd n2 a
    have u10 : v23 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u9
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u5
    have u11 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u10 a
    rcases c561 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd n2 a
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u12
  have c3373 : v16 ∨ v2 ∨ v9 ∨ ¬v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n3 a
      · exact a
    have u12 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n3 a
      · exact a
    have u13 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n3 a
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd n3 a
      · exact a
    have u15 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u16 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
    have u18 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
    have u19 : v23 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n1
    have u20 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : v17 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u19 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u23
      · exact a
      · exact absurd a n0
      · exact absurd a u18
    have u25 : v39 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd n3 a
      · exact absurd a u9
      · exact absurd a u16
      · exact a
      · exact absurd a u15
    have u26 : ¬v20 := by
      rcases c2742 with a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u20
    have u27 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v36 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u27
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u17
      · exact a
    rcases c485 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd u19 a
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u26
    · exact absurd a u23
  have c3374 : v18 ∨ v3 ∨ v4 ∨ v11 ∨ v16 ∨ v19 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v25 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    rcases c1380 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3375 : ¬v23 ∨ v11 ∨ v17 ∨ ¬v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
  have c3376 : ¬v38 ∨ v2 ∨ v9 ∨ v16 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u7 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n1
  have c3377 : v25 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v32 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := c3309
    have u8 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n8
    have u9 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u10 : ¬v23 := by
      rcases c3375 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
    have u11 : ¬v29 := by
      rcases c2837 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v24 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u4
    have u13 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v31 := by
      rcases c2850 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u15
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u8
  have c3378 : v4 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v19 ∨ ¬v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n5
    have u7 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n1
      · exact a
    have u8 : ¬v3 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : v18 := by
      rcases c3374 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
    have u10 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u9 a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v23 := by
      rcases c3375 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a n5
    have u12 : ¬v29 := by
      rcases c2837 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v38 := by
      rcases c3376 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u11
    have u14 : v25 := by
      rcases c3377 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u13
    have u15 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u15
    have u17 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u6
  have c3379 : v23 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v16 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n2
    have u11 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
    have u12 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u2
      · exact a
    have u13 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u12 a
      · exact a
    have u20 : v21 := by
      rcases c2440 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd u12 a
      · exact absurd a u19
      · exact absurd a u9
    have u21 : ¬v19 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u19
    have u22 : v14 := by
      rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u12 a
      · exact absurd a u8
      · exact absurd a u14
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n4
    have u23 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u27 : v17 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u24
      · exact a
      · exact absurd a u18
    have u28 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u20 a
      · exact absurd u27 a
      · exact a
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd u27 a
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u24
    · exact absurd a u23
  have c3380 : ¬v20 ∨ ¬v5 ∨ ¬v12 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := c3309
    have u8 : ¬v16 := by
      rcases c3372 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u9 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n3
    have u10 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n3
      · exact a
    have u11 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u12 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n2 a
      · exact a
    have u13 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n2 a
    have u14 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n2 a
    have u15 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u16 : v4 := by
      rcases c3378 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd n0 a
    have u17 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v1 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u19
    have u22 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u6
    have u23 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v23 := by
      rcases c3379 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u24
    have u26 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u25 a
    have u30 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u25 a
    have u31 : ¬v17 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u12
      · exact a
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u6
    have u32 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u30
    rcases c2847 with a|a|a|a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u26
    · exact absurd a u27
  have c3381 : ¬v29 ∨ v1 ∨ v2 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v37 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    rcases c456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a u2
  have c3382 : ¬v23 ∨ ¬v5 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := c3309
    have u8 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v2 := by
      rcases c3370 with a|a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n5
      · exact a
    have u14 : ¬v21 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n3
    have u15 : ¬v41 := by
      rcases c3256 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u13
    have u16 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u13
    have u17 : ¬v4 := by
      rcases c3322 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    have u20 : v42 := by
      rcases c333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd u1 a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u21 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u10
    rcases c3381 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u15
  have c3383 : v36 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n7
    have u10 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n7
      · exact a
    have u11 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
    have u12 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n3
      · exact a
    have u13 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v23 := by
      rcases c3382 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u12
    have u16 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u13
    have u20 : ¬v27 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u18
    have u21 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u10
    have u22 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v1 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u9
      · exact a
      · exact absurd a n3
    have u24 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u2
      · exact a
    have u25 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u24 a
      · exact a
    rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u24 a
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a u25
    · exact absurd a n6
    · exact absurd a n3
  have c3384 : v4 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v16 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v2 := by
      rcases c3370 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n9
      · exact a
    have u8 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n3
      · exact a
    have u9 : ¬v23 := by
      rcases c3382 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u8
    have u10 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v36 := by
      rcases c3383 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u6
    have u16 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v1 := by
      rcases c355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd u11 a
      · exact absurd a u13
    have u18 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n1 a
    rcases c534 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u18
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd u17 a
    · exact absurd a n3
  have c3385 : v16 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n8
    have u10 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n8
      · exact a
    have u11 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n3
      · exact a
    have u12 : ¬v23 := by
      rcases c3382 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u11
    have u13 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v4 := by
      rcases c3384 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v1 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u17
    have u20 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n9
      · exact a
      · exact absurd a u19
      · exact absurd a u10
    have u21 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u7
    have u22 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u21 a
      · exact a
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u22
  have c3386 : ¬v27 ∨ ¬v16 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v18 := by
      rcases c1804 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n2
      · exact a
    have u4 : ¬v17 := by
      rcases c1798 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a u3
    have u5 : ¬v21 := by
      rcases c3032 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u4
      · exact a
    rcases c98 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u5
  have c3387 : ¬v4 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v27 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u10 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u11 : ¬v2 := by
      rcases c3370 with a|a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u13 : v1 := by
      rcases c3295 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
    have u14 : v11 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u13 a
      · exact absurd a u9
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u14 a
      · exact a
    rcases c534 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd u13 a
    · exact absurd a u16
  have c3388 : ¬v1 ∨ v2 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v7 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n4
    rcases c13 with a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd n2 a
  have c3389 : v22 ∨ v1 ∨ v8 ∨ ¬v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v15 := c3309
    have u5 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
    have u9 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n0
    have u10 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u9 a
    rcases c210 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd u9 a
  have c3390 : v22 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n8
    have u10 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n8
      · exact a
    have u11 : ¬v1 := by
      rcases c3388 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
    have u12 : v16 := by
      rcases c3385 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n2
      · exact a
    have u14 : ¬v27 := by
      rcases c3386 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v23 := by
      rcases c3382 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u13
    have u17 : ¬v4 := by
      rcases c3387 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u10
    have u18 : ¬v18 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd a u16
    have u19 : v25 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u18
      · exact a
    have u20 : v31 := by
      rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u14
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u21 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
    have u25 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n0
    have u26 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u25 a
    rcases c355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u2
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a u26
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd u25 a
    · exact absurd a u27
  exact ⟨c3342, c3344, c3348, c3354, c3365, c3368, c3370, c3371, c3372, c3373, c3374, c3375, c3378, c3379, c3380, c3381, c3382, c3385, c3386, c3387, c3388, c3389, c3390⟩
