import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1700-1749 of the 2934-step refutation of ccase002: 117 core clauses and 94 earlier-derived ones give 9 more. -/
theorem CCase002_block034
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c28 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
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
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c51 : ¬v11 ∨ ¬v12)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c68 : ¬v15 ∨ ¬v20 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
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
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c121 : v22 ∨ v23 ∨ v25 ∨ v24 ∨ v28 ∨ v26 ∨ v27)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c136 : ¬v31 ∨ ¬v35)
    (c144 : ¬v38 ∨ ¬v36)
    (c145 : ¬v39 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c161 : ¬v41 ∨ ¬v40)
    (c166 : ¬v43 ∨ ¬v46)
    (c171 : ¬v44 ∨ ¬v46)
    (c172 : ¬v44 ∨ ¬v47)
    (c175 : ¬v45 ∨ ¬v46)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c200 : v15 ∨ v7 ∨ v18 ∨ v4 ∨ v11 ∨ v16 ∨ v14 ∨ v10 ∨ ¬v8 ∨ v9 ∨ v1 ∨ v43 ∨ v44 ∨ v49)
    (c222 : ¬v10 ∨ v11 ∨ v18 ∨ v4 ∨ v17 ∨ v3 ∨ v9 ∨ v16)
    (c235 : ¬v46 ∨ v39 ∨ v3 ∨ v47 ∨ v40 ∨ v5 ∨ v4 ∨ v45)
    (c243 : v13 ∨ v6 ∨ v25 ∨ v47 ∨ v26 ∨ v21 ∨ v27 ∨ v19 ∨ v18 ∨ v11 ∨ v14 ∨ ¬v20 ∨ v48 ∨ v49)
    (c263 : ¬v42 ∨ v36 ∨ v43 ∨ v29 ∨ v48 ∨ v35 ∨ v41 ∨ v49)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c284 : v13 ∨ v47 ∨ v4 ∨ v48 ∨ v6 ∨ ¬v5 ∨ v12 ∨ v11)
    (c302 : v29 ∨ ¬v22 ∨ v15 ∨ v35 ∨ v14 ∨ v26 ∨ v8 ∨ v23 ∨ v27 ∨ v19 ∨ v33 ∨ v28 ∨ v16 ∨ v9)
    (c330 : v10 ∨ ¬v11 ∨ v3 ∨ v18 ∨ v19 ∨ v17 ∨ v4 ∨ v12)
    (c353 : ¬v46 ∨ v11 ∨ v40 ∨ v4 ∨ v39 ∨ v12 ∨ v7 ∨ v10 ∨ v3 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c367 : ¬v46 ∨ v4 ∨ v40 ∨ v38 ∨ v39 ∨ v5 ∨ v45 ∨ v47)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c376 : v43 ∨ ¬v2 ∨ v44 ∨ v45 ∨ v3 ∨ v1 ∨ v9 ∨ v8)
    (c384 : v36 ∨ v22 ∨ v37 ∨ v23 ∨ v42 ∨ v35 ∨ v30 ∨ ¬v29)
    (c393 : v36 ∨ v29 ∨ v37 ∨ v31 ∨ v24 ∨ v23 ∨ v38 ∨ ¬v30)
    (c413 : v36 ∨ v43 ∨ v37 ∨ v45 ∨ v44 ∨ v17 ∨ v16 ∨ v29 ∨ v31 ∨ v18 ∨ v32 ∨ v24 ∨ v39 ∨ ¬v38)
    (c444 : v22 ∨ v21 ∨ v18 ∨ v27 ∨ v7 ∨ v15 ∨ v4 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v12 ∨ v6 ∨ v11 ∨ v28)
    (c497 : ¬v46 ∨ v39 ∨ v47 ∨ v38 ∨ v4 ∨ v3 ∨ v45 ∨ v5)
    (c498 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ ¬v3 ∨ v9 ∨ v10)
    (c513 : ¬v26 ∨ v34 ∨ v25 ∨ v18 ∨ v32 ∨ v27 ∨ v33 ∨ v19)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c566 : v21 ∨ ¬v3 ∨ ¬v4 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c759 : v8 ∨ v1 ∨ v6 ∨ v7 ∨ ¬v14 ∨ v15 ∨ v21)
    (c760 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v21)
    (c782 : v24 ∨ ¬v9 ∨ v13 ∨ v16 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c865 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v30)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1203 : v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1224 : ¬v34 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1238 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1309 : v22 ∨ v15 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1362 : ¬v34 ∨ v17 ∨ v18 ∨ ¬v25)
    (c1376 : ¬v36 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v43 ∨ v49)
    (c1423 : ¬v34 ∨ v15 ∨ v16 ∨ ¬v23)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1446 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v16)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1458 : ¬v8 ∨ v1 ∨ v5 ∨ v7 ∨ v12 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v28)
    (c1464 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v42)
    (c1465 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v49)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1507 : ¬v32 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24)
    (c1533 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1614 : v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ ¬v32)
    (c1646 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c1666 : ¬v42 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v48 ∨ v49)
    (c1690 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v28 ∨ v29 ∨ v35)
    (c1720 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37)
    (c1723 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v37)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1742 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v18 ∨ v19)
    (c1770 : ¬v6 ∨ ¬v1 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1773 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1774 : ¬v3 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1776 : ¬v4 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1785 : v21 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v13 ∨ v15 ∨ v18 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1832 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1835 : ¬v20 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1850 : ¬v23 ∨ v16 ∨ v17 ∨ ¬v34)
    (c1865 : v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1912 : v17 ∨ v7 ∨ v14 ∨ v18 ∨ v21 ∨ ¬v25 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1915 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1962 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v35)
    (c1966 : v24 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v28 ∨ v34 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1972 : ¬v23 ∨ v15 ∨ v16 ∨ ¬v33)
    (c1974 : ¬v33 ∨ v15 ∨ v16 ∨ ¬v22)
    (c1983 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c1994 : ¬v8 ∨ v1 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v43 ∨ v48 ∨ v49)
    (c1995 : v14 ∨ v7 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ ¬v26 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c2015 : ¬v34 ∨ v15 ∨ v21 ∨ ¬v22)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2039 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2042 : ¬v3 ∨ v4 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2055 : v45 ∨ v8 ∨ v10 ∨ v14 ∨ v15 ∨ v17 ∨ v22 ∨ v24 ∨ ¬v34 ∨ v43 ∨ v44 ∨ v49)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2114 : ¬v6 ∨ ¬v3 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c2126 : ¬v24 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32)
    (c2141 : v9 ∨ v2 ∨ v16 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2166 : ¬v6 ∨ ¬v4 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c2167 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c2176 : v26 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c2217 : v17 ∨ v13 ∨ v20 ∨ v47 ∨ v48 ∨ v49)
    (c2229 : ¬v17 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c2243 : v11 ∨ ¬v1 ∨ v10 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49)
    (c2250 : ¬v1 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v49)
    (c2251 : v16 ∨ v12 ∨ v13 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v47 ∨ v48 ∨ v49)
    (c2253 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2259 : v15 ∨ v1 ∨ ¬v5 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c2260 : ¬v5 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49)
    (c2262 : ¬v38 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47)
    (c2266 : v26 ∨ v1 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2269 : v15 ∨ v1 ∨ v4 ∨ ¬v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c2270 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45)
    : (v18 ∨ v13 ∨ v19 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v10 ∨ v3 ∨ v4 ∨ v11 ∨ v16 ∨ v17 ∨ v18) ∧ (v3 ∨ v1 ∨ v8 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45) ∧ (¬v23 ∨ v3 ∨ v7 ∨ v10 ∨ v14 ∨ v17 ∨ v21 ∨ v34 ∨ v41 ∨ v45 ∨ v48 ∨ v49) ∧ (v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v30 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v7 ∨ v1 ∨ ¬v3 ∨ v14 ∨ v43 ∨ v48 ∨ v49) ∧ (v21 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v49) := by
  have c2271 : v49 ∨ v1 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u2 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u3 : ¬v27 := by
      rcases c2251 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u5 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
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
    have u9 : v11 := by
      rcases c2266 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u10 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v21 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd u2 a
    have u15 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u2 a
    have u16 : v4 := by
      rcases c2269 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd u14 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n0
    have u17 : ¬v2 := by
      rcases c2270 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u16 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u19 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
    have u20 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u6
      · exact a
    have u21 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd u20 a
    have u23 : v35 := by
      rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u20 a
      · exact absurd a u15
      · exact a
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u12
    have u24 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u8
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u24
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a u26
    · exact absurd a u8
    · exact absurd a u17
  have c2272 : v47 ∨ ¬v1 ∨ ¬v4 ∨ v10 ∨ v12 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    rcases c2262 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n0
  have c2273 : v3 ∨ v4 ∨ v10 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v11 := by
      rcases c330 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
    have u6 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v7 := by
      rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v5 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u4
    have u11 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u9 a
    have u12 : v13 := by
      rcases c2260 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
    have u14 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u12 a
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd u9 a
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a n11
    · exact absurd a n12
  have c2274 : v49 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u4 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v27 := by
      rcases c2251 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u8 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
    have u9 : v1 := by
      rcases c2271 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v10 := by
      rcases c2250 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
    have u11 : ¬v4 := by
      rcases c2272 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u9 a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
    have u12 : v3 := by
      rcases c2273 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u13 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u12 a
    have u14 : v8 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd u9 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
    have u15 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u14 a
      · exact a
    rcases c498 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u16
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd u12 a
    · exact absurd a u15
    · exact absurd a u10
  have c2275 : ¬v1 ∨ ¬v12 ∨ v13 ∨ v18 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n7
    have u8 : v4 := by
      rcases c1742 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u8 a
    rcases c1832 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd n0 a
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n7
  have c2276 : ¬v27 ∨ v1 ∨ v8 ∨ ¬v20 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u4 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u5 : v15 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a u2
    rcases c1835 with a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c2277 : v1 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v16 ∨ v18 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v2 := by
      rcases c2270 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n16
    have u10 : ¬v6 := by
      rcases c2166 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v27 := by
      rcases c2276 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
    have u12 : v21 := by
      rcases c243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n13
      · exact a
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u3 a
    have u14 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u4
      · exact a
    have u15 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd u14 a
    have u17 : v35 := by
      rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u14 a
      · exact absurd a u13
      · exact a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n3
    have u18 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u6
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a u18
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a u7
  have c2278 : ¬v2 ∨ v4 ∨ ¬v12 ∨ v13 ∨ v18 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v1 := by
      rcases c2275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v3 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
    have u11 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v6 := by
      rcases c2042 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
    rcases c1742 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
  have c2279 : v16 ∨ v13 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
    have u6 : v12 := by
      rcases c2274 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v1 := by
      rcases c2275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v4 := by
      rcases c2277 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v2 := by
      rcases c2278 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v3 := by
      rcases c498 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u14
      · exact a
      · exact absurd a u8
      · exact absurd a u10
    have u17 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v37 := by
      rcases c2167 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd u2 a
      · exact absurd a n7
    have u19 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
    have u20 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n9
    have u21 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u15
    have u22 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u21 a
    rcases c413 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u3
    · exact absurd a u18
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u12
    · exact absurd a u24
    · exact absurd a n4
    · exact absurd a u22
    · exact absurd u19 a
  have c2280 : v4 ∨ v1 ∨ v11 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
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
    have u5 : v8 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v7 := by
      rcases c200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd u5 a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n13
    have u12 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u11 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
    have u15 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
    have u16 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n11
      · exact a
    have u17 : v39 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n11
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u14
    rcases c158 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c2281 : v4 ∨ v11 ∨ v13 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v22 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
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
    have u5 : v1 := by
      rcases c2280 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v12 := by
      rcases c2275 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v5 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a n1
    have u9 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
    have u10 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n12
      · exact a
    have u11 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v34 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : v3 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u8
    have u16 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v23 := by
      rcases c1423 with a|a|a|a
      · exact absurd u14 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    rcases c1774 with a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd u5 a
    · exact absurd a n4
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n14
  have c2282 : ¬v38 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v29 ∨ v31 ∨ v32 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    rcases c413 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd n0 a
  have c2283 : v38 ∨ ¬v4 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
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
    have u5 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n20
    have u6 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
    have u7 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u8 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u9 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u10 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n13
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n8
    have u11 : v9 := by
      rcases c1446 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    rcases c36 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c2284 : v49 ∨ v13 ∨ v16 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v23 := by
      rcases c2279 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u8 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd u7 a
      · exact absurd a n4
    have u12 : ¬v34 := by
      rcases c1850 with a|a|a|a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a u1
      · exact a
    have u13 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
    have u14 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd u3 a
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u9
    have u15 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u16 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u3 a
    have u17 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd u7 a
    have u18 : ¬v33 := by
      rcases c1972 with a|a|a|a
      · exact absurd u7 a
      · exact absurd a u16
      · exact absurd a n2
      · exact a
    have u19 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v40 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
    have u23 : ¬v38 := by
      rcases c2282 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u24 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u5
    have u25 : ¬v4 := by
      rcases c2283 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u26 : v11 := by
      rcases c2281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u27 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u27
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u10
    rcases c1844 with a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd u28 a
    · exact absurd a u27
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n0
  have c2285 : v47 ∨ ¬v1 ∨ v4 ∨ v10 ∨ v13 ∨ v16 ∨ v19 ∨ v24 ∨ v26 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v25 := by
      rcases c2284 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u2 a
      · exact a
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
    have u12 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd u4 a
      · exact a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u8
    have u13 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u4 a
    have u14 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u8
    have u15 : v32 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n6
      · exact a
    have u16 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u11
    have u19 : ¬v3 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n10
    have u20 : v38 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u16
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u21 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v5 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u22
      · exact a
      · exact absurd a n2
      · exact absurd a u10
    have u24 : v8 := by
      rcases c1839 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n10
    have u25 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u24 a
      · exact a
    rcases c2141 with a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u11
  have c2286 : v4 ∨ v10 ∨ v13 ∨ v16 ∨ v19 ∨ v24 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v25 := by
      rcases c2284 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd u4 a
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u8
    have u12 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u4 a
    have u13 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u4 a
    have u14 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u8
    have u15 : v32 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n4
      · exact a
    have u16 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n9
    have u17 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v1 := by
      rcases c2285 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u20 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u14
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u6
    have u21 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v7 := by
      rcases c200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd u20 a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n9
    have u25 : v2 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u10
    have u26 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u24 a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
    rcases c23 with a|a|a
    · exact absurd u25 a
    · exact absurd u24 a
    · exact absurd u26 a
  have c2287 : ¬v10 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v29 ∨ v36 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n5
    have u3 : v44 := by
      rcases c2250 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a n10
    have u4 : ¬v47 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v46 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    rcases c2039 with a|a|a|a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n10
  have c2288 : v49 ∨ v13 ∨ v16 ∨ v19 ∨ v24 ∨ v26 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
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
    have u7 : v25 := by
      rcases c2284 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u11
    have u13 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u2 a
    have u14 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u2 a
    have u15 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u11
    have u16 : ¬v34 := by
      rcases c1362 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd u7 a
    have u17 : v32 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n3
      · exact a
    have u18 : ¬v36 := by
      rcases c1376 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n0
    have u19 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v10 := by
      rcases c2287 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n0
    have u22 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u6
    have u23 : v4 := by
      rcases c2286 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u24 : ¬v1 := by
      rcases c1776 with a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
    have u25 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u15
      · exact a
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u9
    have u26 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u6
      · exact a
    rcases c2270 with a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u24
    · exact absurd u23 a
    · exact absurd a u26
    · exact absurd a u21
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
  have c2289 : ¬v23 ∨ v13 ∨ ¬v16 ∨ v19 ∨ ¬v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n4 a
    rcases c561 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd n4 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
  have c2290 : v49 ∨ ¬v4 ∨ v13 ∨ v19 ∨ v22 ∨ v24 ∨ v26 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : v16 := by
      rcases c2288 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u5 : ¬v23 := by
      rcases c2289 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd u2 a
    have u6 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a n5
    have u12 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
    have u13 : v27 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u14 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v6 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u20 : ¬v1 := by
      rcases c2272 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a u9
    have u21 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u6
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n0
    have u22 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n0
    have u23 : ¬v7 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n0
    have u24 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u21 a
      · exact a
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u24
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u22
  have c2291 : v49 ∨ v13 ∨ v19 ∨ v22 ∨ v24 ∨ v26 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v16 := by
      rcases c2288 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u5 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v4 := by
      rcases c2290 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v23 := by
      rcases c2289 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd u2 a
    have u12 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd a n4
    have u13 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
    have u14 : v27 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u15 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u14 a
    have u21 : ¬v5 := by
      rcases c2260 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u22 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u8
    have u24 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
    have u25 : ¬v6 := by
      rcases c2114 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u26 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u5
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n0
    have u27 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n0
    have u28 : ¬v7 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u24
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n0
    have u29 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u26 a
      · exact a
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u28
    · exact absurd a u17
    · exact absurd a u29
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u27
  have c2292 : v24 ∨ v13 ∨ v19 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v22 := by
      rcases c2291 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
    have u7 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u2 a
    rcases c2288 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2293 : v8 ∨ v13 ∨ v15 ∨ v18 ∨ v19 ∨ v26 ∨ v29 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v24 := by
      rcases c2292 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v1 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n11
    have u9 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n8
    have u10 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v4 := by
      rcases c1742 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd u6 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u11 a
    rcases c1832 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u6 a
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n11
  have c2294 : v26 ∨ v13 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v24 := by
      rcases c2292 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u6
    have u9 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u2 a
    have u10 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u2 a
    have u11 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u2 a
    have u12 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd u3 a
    have u13 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd u3 a
    have u14 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u6
    have u15 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u13
    have u17 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v40 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v8 := by
      rcases c2293 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u17
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
    have u24 : v4 := by
      rcases c2281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u23 a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u27 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    rcases c1446 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u10
  have c2295 : ¬v8 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v26 := by
      rcases c2294 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : ¬v18 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u6
    have u21 : v21 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u17
      · exact absurd a u5
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u1
    have u22 : ¬v16 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u16
    have u23 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u10 a
    have u24 : ¬v1 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u25 : ¬v5 := by
      rcases c2259 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u24
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u26 : v7 := by
      rcases c1458 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u24
      · exact absurd a u25
      · exact a
      · exact absurd a u5
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u16
    have u27 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u26 a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u28 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u29 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u27 a
    have u30 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u26 a
    have u31 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u12
    have u32 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u33 : ¬v37 := by
      rcases c2167 with a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u30
      · exact absurd u7 a
      · exact absurd a n2
    have u34 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u31 a
      · exact a
    have u35 : ¬v30 := by
      rcases c1720 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u32
      · exact absurd a u34
      · exact absurd a u33
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u35
    · exact absurd a u2
    · exact absurd a u22
    · exact absurd a u33
    · exact absurd a u13
    · exact absurd a u29
  have c2296 : v1 ∨ v13 ∨ v15 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v26 := by
      rcases c2294 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v8 := by
      rcases c2295 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n6
    have u16 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
    have u17 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v16 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
    have u20 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u17
    have u22 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u18 a
    have u25 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u18 a
    have u26 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
    have u27 : v18 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u15
      · exact absurd a u6
      · exact a
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u22
      · exact absurd a n3
    have u28 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u3 a
    have u29 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u27 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u6
    have u30 : v7 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n6
    have u31 : ¬v9 := by
      rcases c782 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd u3 a
      · exact absurd a u28
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u32 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u4
      · exact absurd a u29
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    rcases c2268 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u13
  have c2297 : v18 ∨ v13 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v26 := by
      rcases c2294 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
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
    have u8 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v16 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v8 := by
      rcases c2295 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v15 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u15
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
    have u17 : v1 := by
      rcases c2296 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v10 := by
      rcases c2250 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
    have u19 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
    have u20 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
    have u21 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u6
    have u22 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v4 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u19
      · exact a
      · exact absurd a u6
    have u25 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd u17 a
      · exact absurd u24 a
      · exact a
    rcases c1832 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd u17 a
    · exact absurd a u25
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n5
  have c2298 : v19 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v18 := by
      rcases c2297 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v15 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u6 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v1 := by
      rcases c2296 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : v26 := by
      rcases c2294 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u12
    have u19 : v12 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u15
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u18
    have u20 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v34 := by
      rcases c2055 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u17
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
    have u23 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
    have u24 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
    have u25 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u26 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u8
    have u27 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
    have u28 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : v7 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a n4
    have u31 : v4 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u28
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a u29
      · exact absurd a u24
      · exact a
      · exact absurd a u8
    rcases c11 with a|a|a
    · exact absurd u10 a
    · exact absurd u31 a
    · exact absurd u30 a
  have c2299 : v47 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
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
    have u5 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n16
    have u6 : ¬v34 := by
      rcases c2055 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n16
    have u7 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
    have u9 : v7 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n16
    have u10 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u13 : ¬v37 := by
      rcases c2167 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd u1 a
      · exact absurd a n0
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n16
    have u15 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u10
    rcases c1720 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u13
  have c2300 : v47 ∨ ¬v1 ∨ v8 ∨ ¬v12 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n14
    have u10 : v24 := by
      rcases c2299 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd u10 a
    have u13 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd u10 a
    have u14 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u16 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact a
      · exact absurd a u13
    have u17 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n14
    have u18 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v42 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n13
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a n14
    have u21 : v7 := by
      rcases c1785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a u6
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n14
    have u22 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u21 a
    have u24 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a u8
      · exact absurd a u22
    rcases c2167 with a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u9
    · exact absurd a u23
    · exact absurd u5 a
    · exact absurd a n0
  have c2301 : v47 ∨ ¬v1 ∨ v13 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v19 := by
      rcases c2298 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u8 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u9 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u10 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u11 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd n5 a
    have u15 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd n5 a
    have u16 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n9
    have u17 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n4
      · exact a
      · exact absurd a u15
    have u19 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v42 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a n9
    have u22 : v7 := by
      rcases c1785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n9
    have u23 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v37 := by
      rcases c2167 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd u6 a
      · exact absurd a n0
    have u27 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u19
    · exact absurd a u27
    · exact absurd a u8
    · exact absurd a u26
    · exact absurd a u12
    · exact absurd a u23
  have c2302 : v23 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v24 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u4 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n11
    have u6 : v7 := by
      rcases c1832 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n11
    have u7 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u10 : ¬v37 := by
      rcases c2167 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a n9
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n11
    have u12 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n2
    rcases c1720 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u10
  have c2303 : v27 ∨ ¬v1 ∨ v8 ∨ v13 ∨ v22 ∨ v23 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v19 := by
      rcases c2298 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
    have u9 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u4 a
    have u10 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u4 a
    have u11 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u4 a
    have u12 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u4 a
    have u13 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n9
    have u14 : ¬v10 := by
      rcases c2250 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n9
    have u15 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n9
    have u16 : ¬v24 := by
      rcases c2301 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v12 := by
      rcases c2300 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v2 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u12
    have u23 : ¬v14 := by
      rcases c444 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a n6
    have u24 : ¬v25 := by
      rcases c1912 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u25 : ¬v26 := by
      rcases c1995 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u4 a
      · exact absurd a n4
      · exact a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    rcases c121 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u24
    · exact absurd a u16
    · exact absurd a n6
    · exact absurd a u25
    · exact absurd a n0
  have c2304 : ¬v38 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n4 a
    rcases c235 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u3
  have c2305 : ¬v10 ∨ v3 ∨ v4 ∨ v11 ∨ v16 ∨ v17 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    rcases c222 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n4
  have c2307 : v47 ∨ ¬v1 ∨ v8 ∨ v13 ∨ v22 ∨ v23 ∨ v27 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v19 := by
      rcases c2298 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u6 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v10 := by
      rcases c2250 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n8
    have u11 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n8
    have u12 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n8
    have u13 : v28 := by
      rcases c2303 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
    have u17 : v4 := by
      rcases c2304 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a n0
    have u18 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    rcases c1832 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd n1 a
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n8
  have c2308 : ¬v1 ∨ v8 ∨ v13 ∨ v22 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v19 := by
      rcases c2298 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u6 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u7 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n7
    have u12 : v23 := by
      rcases c2307 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd u12 a
    have u15 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd u12 a
      · exact absurd a u13
    have u16 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v38 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u19 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n7
    have u20 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u18 a
      · exact a
    rcases c413 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd u18 a
  have c2309 : ¬v1 ∨ v8 ∨ v13 ∨ v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v19 := by
      rcases c2298 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
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
    have u5 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u6 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v10 := by
      rcases c2250 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n6
    have u11 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n6
    have u12 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n6
    have u13 : v27 := by
      rcases c2308 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u8
    have u18 : v4 := by
      rcases c2304 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a n4
    have u19 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd n0 a
      · exact absurd u18 a
      · exact a
    rcases c1832 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd n0 a
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n6
  have c2310 : v3 ∨ v1 ∨ v8 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v10 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n13
    have u2 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v2 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a u3
  have c2311 : v8 ∨ v13 ∨ v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v19 := by
      rcases c2298 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u6 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u7 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u8 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v1 := by
      rcases c2309 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n5
    have u15 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u13 a
    have u21 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v40 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v23 := by
      rcases c865 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a u17
    have u24 : ¬v24 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
    have u25 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u26 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a u10
    have u27 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    have u28 : v36 := by
      rcases c384 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u27
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd u13 a
    have u29 : ¬v39 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v28 := by
      rcases c1966 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u31 : ¬v6 := by
      rcases c2114 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u32 : ¬v4 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u26 a
      · exact a
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u30
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n5
    have u33 : v5 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u32
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u29
      · exact a
      · exact absurd a u10
      · exact absurd a n3
    have u34 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u33 a
      · exact absurd u26 a
      · exact a
    have u35 : ¬v14 := by
      rcases c760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u31
      · exact absurd a u34
      · exact absurd a u5
      · exact absurd a u7
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u34
    · exact absurd a u35
    · exact absurd a u18
    · exact absurd a u30
    · exact absurd a n5
    · exact absurd a u15
  have c2312 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c498 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
  have c2313 : ¬v24 ∨ ¬v1 ∨ v13 ∨ v22 ∨ v23 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v19 := by
      rcases c2298 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v8 := by
      rcases c2311 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u9 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u10 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u11 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u18 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd n0 a
    have u19 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd n0 a
    have u20 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u16
    have u21 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n4
      · exact a
      · exact absurd a u19
    have u23 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u26 : v7 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n7
    have u27 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u26 a
    have u29 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u8
      · exact a
      · exact absurd a u17
      · exact absurd a u27
    rcases c2167 with a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u20
    · exact absurd a u28
    · exact absurd u7 a
    · exact absurd a n5
  have c2314 : v23 ∨ ¬v1 ∨ v3 ∨ v13 ∨ v22 ∨ v36 ∨ v37 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v24 := by
      rcases c2313 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v19 := by
      rcases c2298 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v8 := by
      rcases c2311 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u9 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u10 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u11 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u6 a
    have u17 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u16
      · exact a
    have u18 : v25 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a u15
    have u19 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    rcases c1912 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd u18 a
    · exact absurd a u14
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2315 : v4 ∨ v13 ∨ v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v19 := by
      rcases c2298 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v8 := by
      rcases c2311 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u7 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u8 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : v1 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v37 := by
      rcases c2167 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a n3
    have u18 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v5 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u18
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v38 := by
      rcases c2304 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd u5 a
      · exact absurd a n3
    have u21 : v39 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u19
    have u22 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v23 := by
      rcases c2314 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd u23 a
    have u26 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u20
      · exact a
    rcases c128 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c2316 : ¬v23 ∨ v3 ∨ v7 ∨ v10 ∨ v14 ∨ v17 ∨ v21 ∨ v34 ∨ v41 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v42 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    rcases c1469 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2317 : v22 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v19 := by
      rcases c2298 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u7 : v4 := by
      rcases c2315 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v8 := by
      rcases c2311 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u1 a
    have u14 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u1 a
    have u15 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u1 a
    have u16 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u1 a
    have u17 : v1 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u7 a
    have u19 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u7 a
    have u20 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd u17 a
      · exact absurd u7 a
      · exact a
    have u21 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
    have u22 : ¬v25 := by
      rcases c1912 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u15
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u24 : ¬v23 := by
      rcases c2316 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u25 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u26 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n4
    have u27 : ¬v24 := by
      rcases c2313 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u28 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u22
      · exact absurd a u5
    have u29 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u29
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u30
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u29
    · exact absurd a u6
    · exact absurd a u18
  have c2318 : v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
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
    have u6 : v19 := by
      rcases c2298 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v22 := by
      rcases c2317 with a|a|a|a|a
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
    have u10 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v20 := by
      rcases c2176 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u6 a
    have u15 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u6 a
    have u16 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u6 a
    have u17 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u6 a
    have u18 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd u7 a
      · exact absurd a u12
      · exact a
    have u19 : ¬v35 := by
      rcases c1962 with a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact a
    have u20 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd u7 a
    have u21 : v29 := by
      rcases c1690 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u12
      · exact a
      · exact absurd a u19
    have u22 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u23 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u26 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u24
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u27 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u28 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u4
    have u29 : ¬v1 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
    have u30 : ¬v8 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u31 : ¬v9 := by
      rcases c782 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u32 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u31
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd a u5
      · exact a
    have u33 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u28 a
    have u34 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u32 a
      · exact absurd u28 a
      · exact a
    have u35 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u33
      · exact a
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u25
    rcases c759 with a|a|a|a|a|a|a
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u34
    · exact absurd a u33
    · exact absurd u35 a
    · exact absurd a u14
    · exact absurd a u16
  have c2319 : ¬v30 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c393 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd n0 a
  have c2320 : ¬v7 ∨ v1 ∨ ¬v3 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2321 : v21 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v28 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n8
    have u2 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v20 := by
      rcases c898 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v15 := by
      rcases c1309 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    rcases c1865 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u2
  exact ⟨c2297, c2305, c2310, c2312, c2316, c2318, c2319, c2320, c2321⟩
