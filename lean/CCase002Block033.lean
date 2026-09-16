import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1650-1699 of the 2934-step refutation of ccase002: 114 core clauses and 66 earlier-derived ones give 14 more. -/
theorem CCase002_block033
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c50 : ¬v10 ∨ ¬v14)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c65 : ¬v15 ∨ ¬v20 ∨ ¬v17)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c68 : ¬v15 ∨ ¬v20 ∨ ¬v18)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c94 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v17)
    (c99 : v16 ∨ v21 ∨ v18 ∨ v20 ∨ v17 ∨ v19)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
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
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c138 : ¬v34 ∨ ¬v32)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c144 : ¬v38 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c166 : ¬v43 ∨ ¬v46)
    (c171 : ¬v44 ∨ ¬v46)
    (c175 : ¬v45 ∨ ¬v46)
    (c181 : ¬v49 ∨ ¬v46)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c193 : ¬v40 ∨ v33 ∨ v39 ∨ v41 ∨ v32 ∨ v34 ∨ v48 ∨ v47)
    (c222 : ¬v10 ∨ v11 ∨ v18 ∨ v4 ∨ v17 ∨ v3 ∨ v9 ∨ v16)
    (c235 : ¬v46 ∨ v39 ∨ v3 ∨ v47 ∨ v40 ∨ v5 ∨ v4 ∨ v45)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c250 : ¬v46 ∨ v38 ∨ v5 ∨ v10 ∨ v4 ∨ v11 ∨ v12 ∨ v43 ∨ v39 ∨ v1 ∨ v36 ∨ v44 ∨ v45 ∨ v47)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c284 : v13 ∨ v47 ∨ v4 ∨ v48 ∨ v6 ∨ ¬v5 ∨ v12 ∨ v11)
    (c348 : v43 ∨ ¬v2 ∨ v1 ∨ v3 ∨ v9 ∨ v44 ∨ v45 ∨ v10)
    (c353 : ¬v46 ∨ v11 ∨ v40 ∨ v4 ∨ v39 ∨ v12 ∨ v7 ∨ v10 ∨ v3 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c359 : v13 ∨ v49 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v8 ∨ v43)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c393 : v36 ∨ v29 ∨ v37 ∨ v31 ∨ v24 ∨ v23 ∨ v38 ∨ ¬v30)
    (c413 : v36 ∨ v43 ∨ v37 ∨ v45 ∨ v44 ∨ v17 ∨ v16 ∨ v29 ∨ v31 ∨ v18 ∨ v32 ∨ v24 ∨ v39 ∨ ¬v38)
    (c466 : v19 ∨ v10 ∨ v17 ∨ v4 ∨ v18 ∨ v5 ∨ v12 ∨ ¬v11)
    (c498 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ ¬v3 ∨ v9 ∨ v10)
    (c501 : ¬v42 ∨ v35 ∨ v34 ∨ v43 ∨ v29 ∨ v49 ∨ v36 ∨ v41)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c534 : v44 ∨ v43 ∨ v7 ∨ v14 ∨ v8 ∨ v2 ∨ ¬v1 ∨ v9)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c586 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c719 : v17 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c1048 : ¬v20 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1363 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1387 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v18 ∨ v22 ∨ v28)
    (c1446 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v16)
    (c1458 : ¬v8 ∨ v1 ∨ v5 ∨ v7 ∨ v12 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v28)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1559 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1614 : v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ ¬v32)
    (c1646 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c1666 : ¬v42 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v48 ∨ v49)
    (c1723 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v37)
    (c1773 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1774 : ¬v3 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1776 : ¬v4 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1796 : ¬v19 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26)
    (c1798 : ¬v17 ∨ ¬v16 ∨ ¬v27 ∨ v34)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1835 : ¬v20 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1915 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1974 : ¬v33 ∨ v15 ∨ v16 ∨ ¬v22)
    (c1977 : v29 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ ¬v21 ∨ ¬v22 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1983 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2004 : v14 ∨ v16 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2034 : v13 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2039 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2055 : v45 ∨ v8 ∨ v10 ∨ v14 ∨ v15 ∨ v17 ∨ v22 ∨ v24 ∨ ¬v34 ∨ v43 ∨ v44 ∨ v49)
    (c2079 : v39 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ ¬v40 ∨ v45 ∨ v47 ∨ v48)
    (c2114 : ¬v6 ∨ ¬v3 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c2120 : v17 ∨ ¬v6 ∨ ¬v10 ∨ v13 ∨ v16 ∨ v47 ∨ v48 ∨ v49)
    (c2131 : v5 ∨ v4 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49)
    (c2141 : v9 ∨ v2 ∨ v16 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2163 : v21 ∨ v1 ∨ v15 ∨ v16 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2166 : ¬v6 ∨ ¬v4 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c2167 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c2171 : v41 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2177 : v27 ∨ v13 ∨ v20 ∨ v47 ∨ v48 ∨ v49)
    (c2178 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c2181 : ¬v19 ∨ v16 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26)
    (c2204 : v3 ∨ v13 ∨ v20 ∨ v47 ∨ v48 ∨ v49)
    (c2217 : v17 ∨ v13 ∨ v20 ∨ v47 ∨ v48 ∨ v49)
    (c2218 : ¬v16 ∨ v13 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49)
    : (v27 ∨ v13 ∨ ¬v17 ∨ ¬v20) ∧ (¬v17 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49) ∧ (v11 ∨ ¬v1 ∨ v10 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v1 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v49) ∧ (v16 ∨ v12 ∨ v13 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48) ∧ (v15 ∨ v1 ∨ ¬v5 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v5 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v38 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47) ∧ (v26 ∨ v1 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45) ∧ (v15 ∨ v1 ∨ v4 ∨ ¬v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (¬v2 ∨ v1 ∨ ¬v4 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45) := by
  have c2219 : v18 ∨ ¬v3 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u3 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u4 : v15 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n10
      · exact absurd a n4
    have u5 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n3 a
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd u4 a
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n5
  have c2220 : ¬v29 ∨ ¬v17 ∨ v20 ∨ ¬v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : v19 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact a
    have u9 : ¬v16 := by
      rcases c1798 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd a u3
    rcases c2181 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u9
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u4
  have c2221 : v16 ∨ ¬v3 ∨ ¬v17 ∨ v20 ∨ ¬v27 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v19 := by
      rcases c2181 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
    have u8 : v18 := by
      rcases c2219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u8 a
    have u10 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u8 a
    have u11 : v34 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u10
      · exact a
    have u12 : v1 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    rcases c1774 with a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u12 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
  have c2222 : v20 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v17 := by
      rcases c2217 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v3 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v29 := by
      rcases c2220 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd u6 a
    have u13 : v16 := by
      rcases c2221 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v19 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
    rcases c2218 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2223 : ¬v34 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v44 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n9
      · exact a
    have u6 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u5 a
    rcases c2079 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2224 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v34 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n11
      · exact a
    have u2 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v32 := by
      rcases c193 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n10
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n11
    have u5 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u3
  have c2225 : v30 ∨ ¬v1 ∨ v5 ∨ v9 ∨ v12 ∨ v14 ∨ v16 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v46 := by
      rcases c2004 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n18
    have u6 : v33 := by
      rcases c2224 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v42 := by
      rcases c501 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n15
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a u5
      · exact absurd a u2
    have u10 : v2 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a u9
    rcases c5 with a|a|a
    · exact absurd n1 a
    · exact absurd u10 a
    · exact absurd u11 a
  have c2226 : ¬v27 ∨ v13 ∨ v15 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v21 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u4 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v20 := by
      rcases c2222 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v46 := by
      rcases c2034 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v10 := by
      rcases c1048 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u6
    have u11 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u9 a
      · exact a
    have u18 : v1 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n11
    have u20 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n11
    have u21 : ¬v34 := by
      rcases c2223 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
    have u22 : v30 := by
      rcases c2225 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u21
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : v37 := by
      rcases c1723 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u19
      · exact a
    have u25 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n9
      · exact a
    rcases c151 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c2227 : v26 ∨ v13 ∨ ¬v17 ∨ ¬v20 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v19 := by
      rcases c86 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : v28 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n4
      · exact a
    have u4 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v10 := by
      rcases c1048 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u7 a
      · exact a
    rcases c528 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd n3 a
  have c2228 : v27 ∨ v13 ∨ ¬v17 ∨ ¬v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v19 := by
      rcases c86 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : v26 := by
      rcases c2227 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n0
    have u4 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v10 := by
      rcases c1048 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
    have u9 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u10
  have c2229 : ¬v17 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u5 : v20 := by
      rcases c2222 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v19 := by
      rcases c86 with a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
    have u8 : v27 := by
      rcases c2228 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd u5 a
    have u9 : ¬v15 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u10 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u11 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u12 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u15
    have u17 : v10 := by
      rcases c1048 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v29 := by
      rcases c2226 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u27 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u25
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u28 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u29 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u30 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u28
    have u31 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u29
      · exact absurd a u4
      · exact a
    rcases c1325 with a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd u30 a
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
  have c2230 : v21 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ ¬v29 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n10 a
    have u5 : v15 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a n2
    have u6 : v20 := by
      rcases c99 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u7 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v8 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u10 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u18 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a u16
    have u19 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u4
    have u20 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u21 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a u21
  have c2231 : v12 ∨ v1 ∨ v4 ∨ v6 ∨ v10 ∨ v11 ∨ v13 ∨ v36 ∨ v38 ∨ v39 ∨ ¬v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v5 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
    have u2 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n10 a
    rcases c250 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n10 a
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n11
  have c2232 : v12 ∨ v1 ∨ ¬v3 ∨ v6 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v36 ∨ v38 ∨ v39 ∨ ¬v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v49 := by
      rcases c181 with a|a
      · exact a
      · exact absurd n18 a
    have u3 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n18 a
    have u4 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n18 a
    have u5 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n18 a
    have u6 : v4 := by
      rcases c2231 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd n18 a
      · exact absurd a n19
      · exact absurd a n20
    have u7 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
    have u8 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u6 a
    have u9 : ¬v34 := by
      rcases c2223 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n19
      · exact absurd a n20
    have u10 : v30 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
    have u11 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a u2
    have u12 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n19
      · exact a
    rcases c193 with a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u12
    · exact absurd a n17
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a n20
    · exact absurd a n19
  have c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n0
  have c2234 : v47 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n12 a
    have u2 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd n12 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd n12 a
      · exact a
    have u6 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n12 a
      · exact a
    have u7 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
    have u10 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
    have u11 : ¬v30 := by
      rcases c393 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u5
      · exact a
    have u12 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u3
    have u16 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u14
      · exact a
    have u17 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u13
    rcases c16 with a|a|a
    · exact absurd u16 a
    · exact absurd u15 a
    · exact absurd u17 a
  have c2235 : v25 ∨ v1 ∨ v12 ∨ v13 ∨ v14 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v46 := by
      rcases c2034 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v29 := by
      rcases c2230 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n13
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : v15 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a u1
    have u6 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n17
    have u10 : v8 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u5 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u11 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v42 := by
      rcases c2234 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u4
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u14 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u13
    have u15 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a u13
    have u16 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u15 a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n17
    have u17 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u15 a
    have u18 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u19 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u16 a
    have u20 : ¬v37 := by
      rcases c2167 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd u2 a
      · exact absurd a n15
    have u21 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u19
    rcases c1723 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u9
    · exact absurd a u20
  have c2236 : v10 ∨ ¬v1 ∨ ¬v7 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
    have u7 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u6 a
    rcases c235 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u5
  have c2237 : v16 ∨ v12 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v46 := by
      rcases c2004 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v15 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a u3
    have u9 : v8 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u8 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u10 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v1 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
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
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v29 := by
      rcases c2230 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n16
    have u15 : ¬v7 := by
      rcases c2236 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u12 a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u16 : v42 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n16
    have u17 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v3 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
    have u20 : ¬v30 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u17
    have u21 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u7
      · exact a
    rcases c1 with a|a|a
    · exact absurd u12 a
    · exact absurd u21 a
    · exact absurd u19 a
  have c2238 : v26 ∨ v12 ∨ v13 ∨ v14 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v46 := by
      rcases c2034 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n8
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v15 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a u1
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v8 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u9 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v34 := by
      rcases c2237 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v5 := by
      rcases c2223 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
    have u17 : v2 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
    have u18 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    have u19 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u15
    rcases c16 with a|a|a
    · exact absurd u17 a
    · exact absurd u16 a
    · exact absurd u19 a
  have c2239 : v1 ∨ v8 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v18 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v29 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u5
    have u11 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a u9
    have u13 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
    have u14 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
    rcases c359 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n15
    · exact absurd a u14
    · exact absurd u12 a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u5
  have c2240 : v47 ∨ v12 ∨ v13 ∨ v14 ∨ v16 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v46 := by
      rcases c2004 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
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
    have u7 : v18 := by
      rcases c2238 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v15 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u7 a
    have u9 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v34 := by
      rcases c2055 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n14
    have u13 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u14 : v1 := by
      rcases c2239 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n14
    have u16 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n14
    have u17 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
    have u18 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v33 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u19
    rcases c860 with a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a n11
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u13
  have c2241 : v16 ∨ v12 ∨ v13 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v14 := by
      rcases c2240 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
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
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v18 := by
      rcases c637 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v15 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    rcases c94 with a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u1
  have c2242 : ¬v1 ∨ v3 ∨ v10 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u5 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
    have u6 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u7
    have u12 : ¬v4 := by
      rcases c1776 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n13
    have u13 : v5 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a u9
      · exact a
      · exact absurd a u12
      · exact absurd a u3
    have u14 : v7 := by
      rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c13 with a|a|a
    · exact absurd n0 a
    · exact absurd u14 a
    · exact absurd u13 a
  have c2243 : v11 ∨ ¬v1 ∨ v10 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u5 : v3 := by
      rcases c2242 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u7 : v8 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n14
    have u8 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u7 a
      · exact a
    rcases c498 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd u5 a
    · exact absurd a u9
    · exact absurd a n2
  have c2244 : v5 ∨ v12 ∨ v19 ∨ v26 ∨ ¬v29 ∨ v34 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n7
      · exact a
    have u4 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u3 a
    rcases c193 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n7
  have c2245 : v6 ∨ v1 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v46 := by
      rcases c2034 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n9
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
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
    have u5 : ¬v34 := by
      rcases c2223 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v29 := by
      rcases c2244 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n13
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v8 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v7 := by
      rcases c1458 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd u10 a
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a n16
    · exact absurd a n17
  have c2246 : v12 ∨ v1 ∨ ¬v3 ∨ v11 ∨ v13 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v6 := by
      rcases c2114 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v5 := by
      rcases c2245 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
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
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v4 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n14
      · exact a
      · exact absurd a n15
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n3
    rcases c24 with a|a|a
    · exact absurd u2 a
    · exact absurd u3 a
    · exact absurd n2 a
  have c2247 : v16 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v21 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v46 := by
      rcases c2034 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v1 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v3 := by
      rcases c2246 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n0
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
    have u12 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u8
    have u13 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v8 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u7
    have u16 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact a
    rcases c348 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u18 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n1
  have c2248 : v9 ∨ v1 ∨ v8 ∨ v10 ∨ v12 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
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
    have u6 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a u3
    have u7 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n17
      · exact absurd a n18
    have u8 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u4
    have u9 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v5 := by
      rcases c2244 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd u7 a
      · exact absurd a n15
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n17
    have u12 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u8 a
    have u13 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a u12
  have c2249 : v49 ∨ v10 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u2 : v46 := by
      rcases c2034 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n12
      · exact absurd a n13
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
    have u7 : v11 := by
      rcases c2247 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
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
      · exact absurd a n0
    have u8 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v15 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
    have u12 : ¬v34 := by
      rcases c2055 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
    have u13 : v21 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u14 : ¬v18 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u10
      · exact a
      · exact absurd a n6
      · exact absurd a n11
    have u15 : v1 := by
      rcases c2248 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u16 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
    have u17 : v4 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd u7 a
    have u18 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd u15 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u17 a
    rcases c534 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd u15 a
    · exact absurd a u9
  have c2250 : ¬v1 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v4 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n2
    have u6 : v2 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
    rcases c2 with a|a|a
    · exact absurd n0 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c2251 : v16 ∨ v12 ∨ v13 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v46 := by
      rcases c2034 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
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
    have u9 : v10 := by
      rcases c2249 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v15 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u12
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
    have u15 : ¬v1 := by
      rcases c2250 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n11
    have u16 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n11
    have u18 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u6
    have u19 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u22 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u23 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u7
    have u24 : v5 := by
      rcases c2244 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd u16 a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a n9
      · exact absurd a n10
    have u25 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u8
      · exact a
    rcases c16 with a|a|a
    · exact absurd u25 a
    · exact absurd u24 a
    · exact absurd u23 a
  have c2252 : v12 ∨ v1 ∨ v6 ∨ v8 ∨ v11 ∨ v13 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v46 := by
      rcases c2034 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n9
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
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
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n16
    have u7 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v5 := by
      rcases c2244 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u14 : v4 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n14
      · exact a
      · exact absurd a n15
      · exact absurd a n2
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd a n4
    have u15 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    rcases c719 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd u14 a
    · exact absurd u12 a
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u5
  have c2253 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n0 a
    rcases c193 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n5
  have c2254 : v32 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n8
      · exact a
    have u2 : v46 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v34 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    rcases c2223 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n9
  have c2255 : v16 ∨ v1 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n5
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v27 := by
      rcases c2251 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v21 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd u5 a
    have u9 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u5 a
    have u10 : ¬v6 := by
      rcases c2120 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : v22 := by
      rcases c2252 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u12
      · exact a
    have u14 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd u11 a
    have u15 : v5 := by
      rcases c2254 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
    have u16 : v4 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a u10
      · exact absurd u15 a
      · exact absurd a n4
      · exact absurd a n3
    have u17 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u16 a
    have u18 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u15 a
      · exact absurd u16 a
      · exact a
    rcases c386 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u18
  have c2258 : v10 ∨ v4 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v13 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v6 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n10
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n3
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
    have u8 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u7 a
    rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2259 : v15 ∨ v1 ∨ ¬v5 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u3 : v21 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u1
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
    have u7 : v4 := by
      rcases c2258 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u9 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact a
    have u11 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u5
    have u12 : ¬v9 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
    have u13 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v8 := by
      rcases c1446 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n7
    have u16 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u8
    have u17 : v22 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a u4
    have u18 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u16 a
      · exact a
    rcases c1977 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd u3 a
    · exact absurd u17 a
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n16
  have c2260 : ¬v5 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v6 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n10
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n3
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
    have u8 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u7 a
    rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2261 : v24 ∨ v1 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v10 := by
      rcases c2255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v4 := by
      rcases c2260 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v18 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u1
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
    have u9 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n2 a
      · exact absurd u4 a
      · exact a
    have u10 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u7
    have u11 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v30 := by
      rcases c719 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a u11
      · exact absurd a u8
    have u15 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u14 a
    rcases c413 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd u10 a
  have c2262 : ¬v38 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v33 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
    rcases c860 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
  have c2263 : ¬v4 ∨ v1 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v34 ∨ v36 ∨ v38 ∨ v41 ∨ ¬v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v49 := by
      rcases c181 with a|a
      · exact a
      · exact absurd n21 a
    have u3 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n21 a
    have u4 : ¬v5 := by
      rcases c2261 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a u2
    have u5 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n19
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u3
    have u6 : ¬v27 := by
      rcases c2251 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact a
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a u2
    have u7 : v39 := by
      rcases c2232 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact a
      · exact absurd n21 a
      · exact absurd a n22
      · exact absurd a n23
    have u8 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a u8
      · exact absurd a n20
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n15
    · exact absurd a n10
    · exact absurd a n22
    · exact absurd a u8
  have c2264 : v1 ∨ ¬v4 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v10 := by
      rcases c2255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v5 := by
      rcases c2261 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v6 := by
      rcases c2166 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v27 := by
      rcases c2251 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
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
    have u12 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u10
    have u13 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n1 a
    have u14 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n1 a
    have u15 : ¬v34 := by
      rcases c2223 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v29 := by
      rcases c2244 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n14
    have u19 : ¬v14 := by
      rcases c2263 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd u7 a
      · exact absurd a n12
      · exact absurd a n13
    have u20 : v21 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd u4 a
    have u21 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u4 a
    have u22 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u17
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n7
    have u23 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u22 a
      · exact a
    rcases c1446 with a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a n5
  have c2265 : v1 ∨ ¬v4 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v5 := by
      rcases c2261 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v17 := by
      rcases c2229 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v20 := by
      rcases c2217 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v27 := by
      rcases c2251 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v22 := by
      rcases c2264 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd u3 a
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u8
    have u10 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u3 a
    have u11 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd u7 a
    have u12 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd u7 a
      · exact absurd a u8
      · exact a
    have u13 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n11
      · exact a
    have u14 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v34 := by
      rcases c2253 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd a u11
      · exact a
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
    rcases c2171 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd u15 a
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd a n13
  have c2266 : v26 ∨ v1 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v10 := by
      rcases c2255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v5 := by
      rcases c2261 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v4 := by
      rcases c2265 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v27 := by
      rcases c2251 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
    have u7 : ¬v34 := by
      rcases c2131 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v29 := by
      rcases c2244 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n12
    have u14 : v39 := by
      rcases c250 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u15 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v33 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u11
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a u15
  have c2267 : v15 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v16 ∨ ¬v21 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n10
      · exact a
    rcases c1977 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd n7 a
    · exact absurd u1 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n13
  have c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n1
    have u5 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    rcases c2152 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2269 : v15 ∨ v1 ∨ v4 ∨ ¬v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v5 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd n3 a
    have u7 : ¬v7 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    rcases c2267 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd n9 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n17
    · exact absurd a n18
  have c2270 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c15 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    rcases c348 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n4
  exact ⟨c2228, c2229, c2233, c2243, c2250, c2251, c2253, c2259, c2260, c2262, c2266, c2268, c2269, c2270⟩
