import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1250-1299 of the 2934-step refutation of ccase002: 123 core clauses and 54 earlier-derived ones give 22 more. -/
theorem CCase002_block025
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
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
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20 ∨ ¬v17)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c68 : ¬v15 ∨ ¬v20 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c100 : ¬v22 ∨ ¬v23)
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
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c154 : ¬v38 ∨ ¬v39)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c165 : ¬v45 ∨ ¬v43)
    (c170 : ¬v45 ∨ ¬v44)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c203 : ¬v10 ∨ v9 ∨ v4 ∨ v17 ∨ v18 ∨ v3 ∨ v11 ∨ v2)
    (c222 : ¬v10 ∨ v11 ∨ v18 ∨ v4 ∨ v17 ∨ v3 ∨ v9 ∨ v16)
    (c241 : ¬v16 ∨ v23 ∨ v17 ∨ v10 ∨ v15 ∨ v9 ∨ v22 ∨ v8)
    (c242 : v21 ∨ v20 ∨ v12 ∨ v5 ∨ v14 ∨ v7 ∨ v6 ∨ ¬v13)
    (c247 : ¬v19 ∨ v26 ∨ v25 ∨ v18 ∨ v20 ∨ v13 ∨ v11 ∨ v12)
    (c248 : v6 ∨ ¬v7 ∨ v49 ∨ v48 ∨ v43 ∨ v8 ∨ v1 ∨ v14)
    (c277 : v29 ∨ ¬v23 ∨ v31 ∨ v16 ∨ v22 ∨ v30 ∨ v24 ∨ v17)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c297 : v27 ∨ v20 ∨ v26 ∨ v18 ∨ v11 ∨ ¬v19 ∨ v13 ∨ v12)
    (c300 : v22 ∨ v16 ∨ v21 ∨ v28 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v8)
    (c306 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v9 ∨ v21 ∨ v8)
    (c318 : ¬v27 ∨ v34 ∨ v19 ∨ v41 ∨ v49 ∨ v35 ∨ v20 ∨ v26 ∨ v28 ∨ v18 ∨ v32 ∨ v47 ∨ v48 ∨ v25)
    (c349 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v9 ∨ v21 ∨ v14 ∨ v8)
    (c352 : ¬v12 ∨ v20 ∨ v4 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v13)
    (c358 : v36 ∨ ¬v35 ∨ v37 ∨ v27 ∨ v28 ∨ v42 ∨ v8 ∨ v30 ∨ v14 ∨ v34 ∨ v21 ∨ v23 ∨ v13 ∨ v29)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c458 : v44 ∨ ¬v1 ∨ v49 ∨ v7 ∨ v8 ∨ v43 ∨ v2 ∨ v9)
    (c464 : v23 ∨ v27 ∨ v24 ∨ v25 ∨ v13 ∨ v16 ∨ v33 ∨ v32 ∨ v30 ∨ v20 ∨ v19 ∨ v11 ∨ v12 ∨ ¬v26)
    (c466 : v19 ∨ v10 ∨ v17 ∨ v4 ∨ v18 ∨ v5 ∨ v12 ∨ ¬v11)
    (c471 : ¬v39 ∨ v32 ∨ v40 ∨ v11 ∨ v31 ∨ v30 ∨ v38 ∨ v10 ∨ v37 ∨ v4 ∨ v12 ∨ v44 ∨ v46 ∨ v47)
    (c479 : v12 ∨ ¬v4 ∨ v3 ∨ v5 ∨ v46 ∨ v47 ∨ v10 ∨ v11)
    (c511 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v2 ∨ v44 ∨ v3 ∨ v4)
    (c529 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v8 ∨ v21 ∨ v14)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c718 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17)
    (c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c875 : v19 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1084 : ¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1188 : ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1223 : v6 ∨ v13 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1238 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c1239 : v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33)
    (c1283 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1297 : ¬v2 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1316 : ¬v16 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1362 : ¬v34 ∨ v17 ∨ v18 ∨ ¬v25)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1405 : ¬v1 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ v19 ∨ v26 ∨ v33 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1467 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v43 ∨ v49)
    (c1483 : v6 ∨ v5 ∨ v12 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21)
    (c1533 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1582 : v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1584 : ¬v10 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1685 : v18 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1697 : ¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v47 ∨ v48 ∨ v49)
    (c1702 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1703 : ¬v36 ∨ v2 ∨ v3 ∨ ¬v45 ∨ v46)
    (c1704 : v8 ∨ v2 ∨ v5 ∨ v6 ∨ v9 ∨ v12 ∨ ¬v13 ∨ v16 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c1713 : ¬v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46)
    (c1730 : ¬v9 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v44 ∨ v49)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1742 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v18 ∨ v19)
    (c1770 : ¬v6 ∨ ¬v1 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1773 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1787 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47)
    (c1788 : v16 ∨ ¬v1 ∨ v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1792 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1796 : ¬v19 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26)
    (c1798 : ¬v17 ∨ ¬v16 ∨ ¬v27 ∨ v34)
    (c1801 : v15 ∨ ¬v1 ∨ v4 ∨ v13 ∨ v18 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1803 : v34 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c1804 : ¬v18 ∨ ¬v16 ∨ ¬v27)
    (c1805 : ¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35)
    : (¬v25 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v17) ∧ (¬v18 ∨ ¬v13 ∨ v15 ∨ ¬v16) ∧ (¬v4 ∨ ¬v1 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49) ∧ (v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48) ∧ (v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47) ∧ (v19 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ ¬v26 ∨ v33) ∧ (v11 ∨ v4 ∨ v6 ∨ v10 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v35 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23) ∧ (¬v5 ∨ ¬v1 ∨ v4 ∨ v12 ∨ v46 ∨ v47 ∨ v48) ∧ (v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v19 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23) ∧ (¬v20 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28) ∧ (v20 ∨ v6 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v1 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v23 ∨ v16 ∨ v17 ∨ ¬v34) ∧ (¬v10 ∨ v6 ∨ v14 ∨ ¬v15 ∨ v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v21) ∧ (v49 ∨ ¬v5 ∨ ¬v10 ∨ v14 ∨ ¬v15 ∨ v18 ∨ v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48) := by
  have c1806 : v4 ∨ ¬v1 ∨ v13 ∨ v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v16 := by
      rcases c1788 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v18 := by
      rcases c1801 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v27 := by
      rcases c1804 with a|a|a
      · exact absurd u6 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v19 := by
      rcases c77 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v20 := by
      rcases c78 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u6 a
    have u11 : v34 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n7
    have u19 : ¬v22 := by
      rcases c1805 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
    have u20 : ¬v28 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u15
    have u21 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v26 := by
      rcases c1084 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u25 : v41 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u21
      · exact a
    have u26 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a n7
    have u27 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u26 a
    rcases c511 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u27
    · exact absurd a n4
    · exact absurd a u23
    · exact absurd a u29
    · exact absurd a u5
    · exact absurd a u28
    · exact absurd a n0
  have c1807 : ¬v25 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c1808 : ¬v18 ∨ ¬v13 ∨ v15 ∨ ¬v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v19 := by
      rcases c77 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v25 := by
      rcases c1807 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u2
    have u9 : v24 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v26 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u8
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    rcases c112 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c1809 : ¬v39 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n0 a
    rcases c471 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1810 : ¬v26 ∨ v4 ∨ ¬v13 ∨ v15 ∨ ¬v16 ∨ v43 ∨ v44 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
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
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u11 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u12 : ¬v18 := by
      rcases c1808 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n4 a
    have u13 : ¬v20 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
    have u14 : v17 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u2
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u9
    have u15 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n4 a
      · exact absurd u14 a
      · exact a
    have u16 : v33 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u4
      · exact a
    have u17 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a u19
    have u22 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u21 a
    rcases c471 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a u11
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a u22
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1811 : v18 ∨ ¬v1 ∨ v4 ∨ v15 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v16 := by
      rcases c1788 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v13 := by
      rcases c1806 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : v33 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v39 := by
      rcases c1809 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : v17 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u22
      · exact a
      · exact absurd a u16
    have u25 : ¬v27 := by
      rcases c1798 with a|a|a|a
      · exact absurd u23 a
      · exact absurd u2 a
      · exact a
      · exact absurd a u13
    have u26 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u24 a
    have u30 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u24 a
      · exact a
    have u31 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u24 a
    have u32 : v7 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a u25
      · exact absurd a u30
      · exact absurd a u4
      · exact absurd a n9
    have u33 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd u32 a
      · exact a
    rcases c1483 with a|a|a|a|a|a|a
    · exact absurd a u34
    · exact absurd a u33
    · exact absurd a u7
    · exact absurd u3 a
    · exact absurd a n4
    · exact absurd a u26
    · exact absurd a u27
  have c1812 : v4 ∨ ¬v1 ∨ v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v16 := by
      rcases c1788 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v13 := by
      rcases c1806 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v18 := by
      rcases c1808 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd u4 a
    have u11 : ¬v26 := by
      rcases c1810 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u12 : v19 := by
      rcases c1811 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd u12 a
      · exact absurd a u13
    have u16 : ¬v25 := by
      rcases c1807 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd a u14
    have u17 : v23 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u6
    have u18 : v27 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd u12 a
      · exact absurd a u16
      · exact absurd a u11
      · exact a
    rcases c109 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c1813 : ¬v4 ∨ ¬v1 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v9 := by
      rcases c1730 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u6 : v8 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u5
    have u7 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u6 a
      · exact a
    rcases c479 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a u7
  have c1814 : v13 ∨ v11 ∨ v12 ∨ ¬v15 ∨ v18 ∨ ¬v19 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n5 a
    have u2 : v27 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n2
    have u3 : v25 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c116 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
      · exact a
    rcases c1383 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1816 : v6 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v15 ∨ v18 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c1814 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u2 : ¬v5 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v45 := by
      rcases c1685 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v33 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v39 := by
      rcases c1809 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v17 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u14
      · exact a
      · exact absurd a u10
    have u17 : ¬v20 := by
      rcases c65 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u16 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u7
  have c1817 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a u3
    have u6 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u5 a
    rcases c471 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1818 : v19 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ ¬v26 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : v20 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd n6 a
      · exact absurd a u3
      · exact absurd a n7
    have u5 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u4 a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
  have c1819 : v11 ∨ v4 ∨ v6 ∨ v10 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v45 := by
      rcases c1685 with a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v26 := by
      rcases c1816 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v19 := by
      rcases c1818 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd u2 a
      · exact absurd a u7
    have u9 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd u8 a
    have u11 : v34 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u5
      · exact absurd a u12
    rcases c1787 with a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a n10
  have c1820 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n4 a
    rcases c1084 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1821 : v46 ∨ ¬v1 ∨ v4 ∨ ¬v8 ∨ v10 ∨ v12 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v5 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v15 := by
      rcases c1812 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v18 := by
      rcases c1819 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v19 := by
      rcases c67 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v20 := by
      rcases c68 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u11 : v34 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    rcases c1820 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd u16 a
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
  have c1822 : ¬v26 ∨ v8 ∨ ¬v15 ∨ ¬v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v19 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u8 : ¬v17 := by
      rcases c63 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
    rcases c529 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u10
  have c1823 : v21 ∨ ¬v1 ∨ ¬v11 ∨ v12 ∨ v19 ∨ v20 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v34 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u9 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c608 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd u9 a
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v9 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n1
    have u2 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    rcases c529 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u2
  have c1825 : v8 ∨ ¬v1 ∨ v10 ∨ v12 ∨ ¬v15 ∨ ¬v18 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c67 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u3 : ¬v26 := by
      rcases c1822 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd n5 a
    have u4 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v20 := by
      rcases c68 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v17 := by
      rcases c63 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v11 := by
      rcases c1823 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v25 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u6
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n2
    have u9 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u8 a
      · exact a
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u9
  have c1826 : ¬v5 ∨ ¬v1 ∨ v4 ∨ v12 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c608 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1827 : v18 ∨ ¬v1 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v15 ∨ v19 ∨ v26 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v5 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v33 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v25 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v17 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u3
    have u10 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u9 a
    have u11 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u8
    have u12 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u9 a
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd n6 a
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u5
  have c1828 : v10 ∨ ¬v1 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u5 : ¬v5 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v8 := by
      rcases c1821 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v15 := by
      rcases c1812 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v33 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v18 := by
      rcases c1825 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u7 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v11 := by
      rcases c1827 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : v17 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd u11 a
    have u14 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v20 := by
      rcases c65 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u13 a
    have u17 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u15
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1802 with a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n3
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u9
  have c1829 : v8 ∨ ¬v1 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u6 : ¬v5 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v3 := by
      rcases c961 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    rcases c458 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u1
  have c1830 : v6 ∨ ¬v1 ∨ v5 ∨ v12 ∨ ¬v13 ∨ v16 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : v7 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd n4 a
    have u5 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    rcases c1704 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1831 : ¬v1 ∨ v10 ∨ v12 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v19 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u6 : v15 := by
      rcases c1812 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v5 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v8 := by
      rcases c1821 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd u6 a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v17 := by
      rcases c64 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u2 a
    have u13 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u2 a
    have u14 : ¬v11 := by
      rcases c1829 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v13 := by
      rcases c1814 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a n3
    have u16 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v6 := by
      rcases c1830 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd u15 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u17 a
    have u19 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u17 a
    rcases c458 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u18
    · exact absurd a u16
  have c1832 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c1730 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c458 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n1 a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
  have c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c1832 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1834 : ¬v19 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    rcases c349 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
  have c1835 : ¬v20 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
  have c1836 : v46 ∨ ¬v1 ∨ v10 ∨ v12 ∨ ¬v16 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v45 := by
      rcases c1316 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v26 := by
      rcases c1831 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
    have u12 : ¬v20 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
    have u13 : v15 := by
      rcases c1812 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v5 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v8 := by
      rcases c1821 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n4 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd n4 a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n7
    have u20 : ¬v13 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n3
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u17
    have u21 : v34 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v33 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a u8
      · exact a
    rcases c140 with a|a
    · exact absurd u22 a
    · exact absurd u21 a
  have c1837 : v12 ∨ ¬v1 ∨ v10 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u5 : v15 := by
      rcases c1812 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v5 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v26 := by
      rcases c1831 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v8 := by
      rcases c1821 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v20 := by
      rcases c1835 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u5 a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
    have u15 : ¬v16 := by
      rcases c1836 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v21 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd u5 a
      · exact absurd a u15
      · exact a
      · exact absurd a u12
      · exact absurd a u9
    have u17 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd u5 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u5 a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd u5 a
      · exact absurd u16 a
      · exact a
    have u20 : v33 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a u11
      · exact a
    have u21 : ¬v11 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n0
      · exact a
    rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u21
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd u20 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
  have c1838 : v20 ∨ v6 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v19 := by
      rcases c1834 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u4
      · exact absurd a u2
    have u7 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u5 a
    rcases c1239 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd n8 a
    · exact absurd a u3
    · exact absurd a u7
  have c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c1832 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1840 : v9 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v15 ∨ ¬v19 ∨ v20 ∨ ¬v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u6 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    have u8 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u6 a
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u8
  have c1841 : ¬v27 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ ¬v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v16 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
    have u7 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    rcases c349 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n1
  have c1842 : v20 ∨ v4 ∨ v5 ∨ v6 ∨ v10 ∨ ¬v12 ∨ ¬v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : v19 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
    have u7 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n6 a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v17 := by
      rcases c64 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v33 := by
      rcases c1840 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd n6 a
      · exact absurd u6 a
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v27 := by
      rcases c1841 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n6 a
      · exact absurd u6 a
    have u12 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v25 := by
      rcases c1362 with a|a|a|a
      · exact absurd u12 a
      · exact absurd a u8
      · exact absurd a u7
      · exact a
    have u16 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n7
      · exact a
      · exact absurd a u15
      · exact absurd a u13
    rcases c1787 with a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a n8
  have c1843 : v10 ∨ ¬v1 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u5 : v15 := by
      rcases c1812 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v12 := by
      rcases c1837 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
    have u12 : v20 := by
      rcases c1842 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd u5 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd u5 a
      · exact absurd u12 a
      · exact a
    rcases c1742 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u14
  have c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c1832 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1845 : ¬v20 ∨ v3 ∨ v4 ∨ ¬v10 ∨ ¬v15 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c65 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u4 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n3 a
    rcases c222 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u3
  have c1846 : v19 ∨ v5 ∨ v6 ∨ ¬v10 ∨ ¬v15 ∨ v20 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : v33 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v21 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n4 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u9 a
    rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a n10
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u12
  have c1847 : v18 ∨ v5 ∨ v6 ∨ ¬v10 ∨ ¬v15 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v26 := by
      rcases c1838 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v19 := by
      rcases c1846 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v27 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u1
    have u10 : v25 := by
      rcases c1584 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a n5
      · exact a
      · exact absurd a u7
    rcases c116 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c1848 : ¬v1 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u5 : v10 := by
      rcases c1843 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v5 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
    have u13 : v15 := by
      rcases c1812 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v20 := by
      rcases c1845 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd u5 a
      · exact absurd u13 a
    have u15 : v18 := by
      rcases c1847 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd u5 a
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v19 := by
      rcases c67 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u15 a
    have u18 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u15 a
    have u19 : v26 := by
      rcases c1846 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd u5 a
      · exact absurd u13 a
      · exact absurd a u14
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : v34 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u20 a
    have u27 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u20 a
      · exact a
    rcases c464 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u21
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u25
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd u19 a
  have c1849 : ¬v15 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : v26 := by
      rcases c1846 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v18 := by
      rcases c1838 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
    have u10 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u8 a
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd a u4
  have c1850 : ¬v23 ∨ v16 ∨ v17 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n3 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n2
  have c1851 : ¬v5 ∨ v6 ∨ v12 ∨ v13 ∨ ¬v15 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u2 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v17 := by
      rcases c63 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v3 := by
      rcases c1188 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v34 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v23 := by
      rcases c1850 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd u8 a
    have u10 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u3
    have u11 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u1
      · exact a
      · exact absurd a u12
      · exact absurd a u4
    rcases c1773 with a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u12
  have c1852 : v20 ∨ v6 ∨ ¬v10 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v5 := by
      rcases c1849 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v7 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v3 := by
      rcases c1188 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n7
    have u13 : ¬v18 := by
      rcases c1851 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd n4 a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v17 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u9
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u10
    have u15 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u14 a
    have u16 : v34 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v28 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u15
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a n10
    · exact absurd a u19
  have c1853 : ¬v10 ∨ v6 ∨ v14 ∨ ¬v15 ∨ v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v7 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n2
    have u8 : v5 := by
      rcases c1849 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v3 := by
      rcases c1188 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u4 a
      · exact absurd a n6
    have u12 : v16 := by
      rcases c1852 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n3 a
    have u14 : v34 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v28 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a n9
    · exact absurd a u17
  have c1855 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    rcases c349 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n1
  have c1856 : v49 ∨ ¬v5 ∨ ¬v10 ∨ v14 ∨ ¬v15 ∨ v18 ∨ v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v6 := by
      rcases c1853 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u7 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u8 : ¬v3 := by
      rcases c1188 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v7 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n0
    have u11 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u12 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd u7 a
      · exact absurd a n8
    have u14 : v17 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u11
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u9
    have u15 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n8
    have u16 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
    have u17 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u14 a
    have u18 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v28 := by
      rcases c1855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u17
      · exact absurd a u18
    have u21 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u19
    have u22 : v22 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u5
    have u23 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u22 a
      · exact a
    rcases c358 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u21 a
    · exact absurd a u13
    · exact absurd a u26
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a u23
    · exact absurd a n3
    · exact absurd a u25
    · exact absurd a u18
    · exact absurd a u27
    · exact absurd a u3
    · exact absurd a u24
  exact ⟨c1807, c1808, c1813, c1815, c1817, c1818, c1819, c1820, c1824, c1826, c1832, c1833, c1834, c1835, c1838, c1839, c1844, c1848, c1850, c1853, c1855, c1856⟩
