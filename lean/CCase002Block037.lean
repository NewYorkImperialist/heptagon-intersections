import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1850-1899 of the 2934-step refutation of ccase002: 106 core clauses and 85 earlier-derived ones give 20 more. -/
theorem CCase002_block037
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c53 : ¬v11 ∨ ¬v14)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c93 : v20 ∨ v15 ∨ v17 ∨ v19 ∨ v18 ∨ v16)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
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
    (c121 : v22 ∨ v23 ∨ v25 ∨ v24 ∨ v28 ∨ v26 ∨ v27)
    (c126 : ¬v34 ∨ ¬v29)
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
    (c142 : ¬v34 ∨ ¬v35)
    (c149 : ¬v38 ∨ ¬v37)
    (c150 : ¬v39 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c156 : ¬v41 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c167 : ¬v47 ∨ ¬v43)
    (c172 : ¬v44 ∨ ¬v47)
    (c176 : ¬v45 ∨ ¬v47)
    (c179 : ¬v46 ∨ ¬v47)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c194 : v36 ∨ v43 ∨ v24 ∨ v44 ∨ v16 ∨ v15 ∨ v29 ∨ v35 ∨ v28 ∨ v31 ∨ v17 ∨ v23 ∨ ¬v22 ∨ v49)
    (c200 : v15 ∨ v7 ∨ v18 ∨ v4 ∨ v11 ∨ v16 ∨ v14 ∨ v10 ∨ ¬v8 ∨ v9 ∨ v1 ∨ v43 ∨ v44 ∨ v49)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c240 : v43 ∨ v6 ∨ v3 ∨ ¬v14 ∨ v7 ∨ v15 ∨ v17 ∨ v9 ∨ v13 ∨ v10 ∨ v21 ∨ v8 ∨ v48 ∨ v49)
    (c270 : v13 ∨ v12 ∨ v48 ∨ v49 ∨ v14 ∨ v7 ∨ v5 ∨ ¬v6)
    (c273 : v15 ∨ v21 ∨ v1 ∨ v19 ∨ v49 ∨ v14 ∨ v5 ∨ v44 ∨ v12 ∨ v9 ∨ v13 ∨ v43 ∨ v2 ∨ ¬v8)
    (c276 : v1 ∨ ¬v2 ∨ v44 ∨ v3 ∨ v9 ∨ v45 ∨ v8 ∨ v10)
    (c282 : ¬v39 ∨ v43 ∨ v33 ∨ v26 ∨ v46 ∨ v45 ∨ v32 ∨ v37 ∨ v29 ∨ v38 ∨ v25 ∨ v40 ∨ v24 ∨ v36)
    (c285 : v21 ∨ v15 ∨ v6 ∨ v20 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v13)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c309 : v36 ∨ ¬v21 ∨ v35 ∨ v28 ∨ v19 ∨ v26 ∨ v15 ∨ v22 ∨ v20 ∨ v12 ∨ v14 ∨ v13 ∨ v41 ∨ v42)
    (c344 : v36 ∨ ¬v37 ∨ v45 ∨ v44 ∨ v43 ∨ v30 ∨ v38 ∨ v29)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c413 : v36 ∨ v43 ∨ v37 ∨ v45 ∨ v44 ∨ v17 ∨ v16 ∨ v29 ∨ v31 ∨ v18 ∨ v32 ∨ v24 ∨ v39 ∨ ¬v38)
    (c453 : ¬v4 ∨ v5 ∨ v45 ∨ v12 ∨ v3 ∨ v10 ∨ v11 ∨ v46)
    (c466 : v19 ∨ v10 ∨ v17 ∨ v4 ∨ v18 ∨ v5 ∨ v12 ∨ ¬v11)
    (c475 : v7 ∨ ¬v20 ∨ v27 ∨ v6 ∨ v21 ∨ v23 ∨ v13 ∨ v15 ∨ v19 ∨ v12 ∨ v9 ∨ v16 ∨ v5 ∨ v28)
    (c484 : ¬v39 ∨ v32 ∨ v18 ∨ v46 ∨ v17 ∨ v45 ∨ v30 ∨ v25 ∨ v38 ∨ v37 ∨ v33 ∨ v44 ∨ v40 ∨ v19)
    (c492 : ¬v47 ∨ v40 ∨ v2 ∨ v4 ∨ v41 ∨ v5 ∨ v37 ∨ v33 ∨ v34 ∨ v32 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c582 : v19 ∨ v4 ∨ v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c719 : v17 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c767 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c1006 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v30 ∨ v31)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1309 : v22 ∨ v15 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46)
    (c1373 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1386 : v9 ∨ v3 ∨ v10 ∨ v11 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v33 ∨ ¬v37 ∨ v40 ∨ v45)
    (c1446 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v16)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1458 : ¬v8 ∨ v1 ∨ v5 ∨ v7 ∨ v12 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v28)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1489 : ¬v18 ∨ v19 ∨ v20 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1554 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v41 ∨ v42)
    (c1614 : v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ ¬v32)
    (c1653 : v14 ∨ v1 ∨ ¬v8 ∨ v15 ∨ v16 ∨ v21 ∨ v43 ∨ v48 ∨ v49)
    (c1690 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v28 ∨ v29 ∨ v35)
    (c1720 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1741 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46)
    (c1756 : ¬v20 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v21 ∨ v32 ∨ v39 ∨ v46)
    (c1798 : ¬v17 ∨ ¬v16 ∨ ¬v27 ∨ v34)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1804 : ¬v18 ∨ ¬v16 ∨ ¬v27)
    (c1832 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1962 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v35)
    (c1972 : ¬v23 ∨ v15 ∨ v16 ∨ ¬v33)
    (c1974 : ¬v33 ∨ v15 ∨ v16 ∨ ¬v22)
    (c1983 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2003 : ¬v21 ∨ v8 ∨ v15 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2116 : ¬v22 ∨ v15 ∨ v16 ∨ v29 ∨ v30 ∨ v35)
    (c2141 : v9 ∨ v2 ∨ v16 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c2163 : v21 ∨ v1 ∨ v15 ∨ v16 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2169 : ¬v30 ∨ v22 ∨ v23 ∨ v27 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v43 ∨ v44 ∨ v45)
    (c2171 : v41 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2178 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c2198 : ¬v16 ∨ v1 ∨ v8 ∨ ¬v17 ∨ ¬v27 ∨ v43 ∨ v49)
    (c2201 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2228 : v27 ∨ v13 ∨ ¬v17 ∨ ¬v20)
    (c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49)
    (c2270 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45)
    (c2312 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2320 : ¬v7 ∨ v1 ∨ ¬v3 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2321 : v21 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    (c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2354 : ¬v5 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2363 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v25 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2370 : v17 ∨ v47 ∨ v48 ∨ v49)
    (c2372 : ¬v21 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24)
    (c2377 : ¬v40 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v49)
    (c2386 : ¬v1 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v49)
    (c2387 : v21 ∨ v47 ∨ v48 ∨ v49)
    (c2389 : ¬v33 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44)
    (c2391 : v47 ∨ v48 ∨ v49)
    (c2400 : v16 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ ¬v26 ∨ v29 ∨ v33 ∨ v48 ∨ v49)
    (c2405 : ¬v38 ∨ ¬v32 ∨ v44 ∨ v45 ∨ v46)
    (c2415 : v33 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v48 ∨ v49)
    (c2419 : v48 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v29 ∨ v33 ∨ v49)
    (c2421 : v23 ∨ ¬v1 ∨ v9 ∨ v14 ∨ v16 ∨ v21 ∨ v22 ∨ v24 ∨ v28 ∨ v29 ∨ ¬v40 ∨ v44 ∨ v49)
    (c2422 : v4 ∨ v5 ∨ v6 ∨ v40 ∨ v46 ∨ ¬v47 ∨ v48)
    (c2423 : v48 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v25 ∨ v29 ∨ v33 ∨ v49)
    (c2424 : v21 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v48 ∨ v49)
    (c2425 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    : (¬v4 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v28 ∨ v3 ∨ v4 ∨ v19 ∨ ¬v21 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46) ∧ (v37 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v36 ∨ ¬v39 ∨ v43 ∨ v45 ∨ v46) ∧ (¬v39 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v36 ∨ v43 ∨ v45 ∨ v46) ∧ (v39 ∨ ¬v1 ∨ v8 ∨ v15 ∨ v19 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v43 ∨ v44 ∨ v46 ∨ v49) ∧ (v21 ∨ v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ v29) ∧ (v16 ∨ v8 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ v29 ∨ v48 ∨ v49) ∧ (v23 ∨ v1 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v24 ∨ v25 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v1 ∨ v4 ∨ v40 ∨ ¬v47 ∨ v48) ∧ (¬v6 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49) ∧ (v17 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46) ∧ (v27 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v29 ∨ v48 ∨ v49) ∧ (v38 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ ¬v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46) ∧ (¬v4 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v16 ∨ v48 ∨ v49) ∧ (v16 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ v29 ∨ v48 ∨ v49) ∧ (v49 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v48) ∧ (¬v1 ∨ ¬v4 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (¬v7 ∨ v1 ∨ ¬v4 ∨ v14 ∨ v48 ∨ v49) ∧ (v41 ∨ v6 ∨ v13 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49) := by
  have c2426 : v33 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v26 := by
      rcases c2400 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v21 := by
      rcases c2419 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n14
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n14
    have u7 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n14
    have u8 : ¬v13 := by
      rcases c2386 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n14
    have u9 : v28 := by
      rcases c2424 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v35 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n12
      · exact a
    have u12 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v41 := by
      rcases c2425 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n13
    · exact absurd a n7
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u12
  have c2427 : ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v29 ∨ v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v21 := by
      rcases c2419 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u8 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u9 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u10 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u11 : v20 := by
      rcases c2426 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v26 := by
      rcases c2400 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v18 := by
      rcases c2423 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u14 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u13 a
      · exact absurd u11 a
      · exact a
    have u15 : v27 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u13 a
      · exact absurd u11 a
      · exact absurd a n9
      · exact absurd a u12
      · exact a
    have u16 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u13 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u12
    have u17 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v40 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a n10
      · exact a
      · exact absurd a u5
      · exact absurd a n13
    have u21 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u3
    have u22 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
    have u23 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    have u24 : v4 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n12
    have u25 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u25
      · exact absurd a u23
    have u27 : v7 := by
      rcases c2321 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n10
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a n13
    rcases c11 with a|a|a
    · exact absurd n0 a
    · exact absurd u24 a
    · exact absurd u27 a
  have c2428 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c1832 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2429 : v27 ∨ v2 ∨ v6 ∨ v9 ∨ v13 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v26 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n14
    have u5 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u2
    have u6 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
    have u7 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a u5
    rcases c2425 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n13
    · exact absurd a n14
  have c2431 : v21 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v28 ∨ v29 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v23 := by
      rcases c1972 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n9 a
    have u3 : ¬v22 := by
      rcases c1974 with a|a|a|a
      · exact absurd n9 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u4 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u9 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u10 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u11 : ¬v4 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u12 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u13 : v2 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
    have u14 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a n10
    have u16 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v14 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n11
    have u19 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v20 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u9
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd u18 a
      · exact absurd a u20
    have u24 : v17 := by
      rcases c240 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u18 a
      · exact absurd a u16
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n11
    have u25 : v27 := by
      rcases c475 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u23 a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n7
    have u26 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u27 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u25 a
      · exact a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u24 a
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u28
    · exact absurd a n3
  have c2432 : v29 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n13
    have u7 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n13
    have u8 : ¬v4 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n13
    have u9 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n13
    have u10 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n12
    have u11 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
    have u16 : ¬v33 := by
      rcases c2431 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u17 : v24 := by
      rcases c2427 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v34 := by
      rcases c1554 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n11
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
    have u21 : ¬v30 := by
      rcases c2169 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u22 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u4
      · exact a
    have u23 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u22 a
      · exact a
    have u24 : v14 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u23
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n13
    have u25 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : v20 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u7
      · exact a
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd u24 a
      · exact absurd a u25
    rcases c561 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u25
    · exact absurd u26 a
    · exact absurd a n7
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a n11
  have c2433 : v21 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v25 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v28 := by
      rcases c2432 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v33 := by
      rcases c2427 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u3 a
    rcases c1309 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd a u5
  have c2434 : ¬v28 ∨ v3 ∨ v4 ∨ v19 ∨ ¬v21 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v11 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
    have u6 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a u6
    have u9 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n4 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u8 a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd u8 a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u3
  have c2435 : v27 ∨ v15 ∨ v16 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n7
    have u2 : v14 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u3 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u4 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
    have u5 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n9
    have u8 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n12
      · exact a
    have u9 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
    have u10 : v1 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a u5
      · exact absurd a u4
    rcases c4 with a|a|a
    · exact absurd u8 a
    · exact absurd u10 a
    · exact absurd u7 a
  have c2436 : v23 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v25 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u7 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u8 : ¬v4 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u9 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u10 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n10
    have u11 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : v21 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v33 := by
      rcases c2419 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u15 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a n11
    have u17 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v28 := by
      rcases c2434 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd u15 a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u2
    have u21 : ¬v20 := by
      rcases c1756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd u15 a
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u2
    have u22 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd u15 a
      · exact absurd a n7
      · exact absurd a u20
    have u23 : v27 := by
      rcases c2435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd u15 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u24 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v17 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u22
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n11
    have u26 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u15 a
      · exact absurd u25 a
      · exact a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd a n5
    · exact absurd u25 a
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a n8
  have c2437 : v37 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v36 ∨ ¬v39 ∨ v43 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n8 a
    rcases c282 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n7
  have c2438 : ¬v39 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v36 ∨ v43 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2437 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2439 : v39 ∨ ¬v1 ∨ v8 ∨ v15 ∨ v19 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v43 ∨ v44 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u2 : ¬v4 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u3 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u4 : ¬v20 := by
      rcases c1756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n14
    have u5 : v11 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n14
    rcases c1197 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd n5 a
    · exact absurd a n9
    · exact absurd a n10
  have c2440 : v21 ∨ v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ v29 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v35 := by
      rcases c1690 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    rcases c1962 with a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd u1 a
  have c2441 : v16 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ v25 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u6 : ¬v4 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u7 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u8 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n9
    have u9 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v22 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a u14
      · exact a
    have u16 : ¬v21 := by
      rcases c2439 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
    rcases c2440 with a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd u10 a
    · exact absurd a u14
    · exact absurd a n8
  have c2442 : v48 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v21 ∨ v23 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v25 := by
      rcases c2441 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u3 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u12 : ¬v4 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u13 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u14 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact a
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n0
    have u15 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v14 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd u14 a
      · exact absurd a u9
      · exact absurd a n10
    have u17 : ¬v34 := by
      rcases c2171 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n10
    have u18 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v20 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u18
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u17
  have c2443 : v48 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v23 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u6 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u7 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u8 : ¬v4 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u9 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u10 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n0
    have u11 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v21 := by
      rcases c2442 with a|a|a|a|a|a|a|a|a|a|a
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
    have u15 : v25 := by
      rcases c2441 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u16 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
    have u22 : ¬v34 := by
      rcases c1554 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u12
    have u23 : v33 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u14 a
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u24 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v20 := by
      rcases c1756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u14 a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u2
    have u26 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u22
    rcases c613 with a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a n4
    · exact absurd a u25
    · exact absurd u14 a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u19
  have c2444 : v20 ∨ v8 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c1489 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v17 := by
      rcases c93 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n3
    have u3 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u3 a
      · exact a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n11
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u4
  have c2445 : v48 ∨ v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v29 ∨ ¬v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n10 a
    have u5 : v47 := by
      rcases c2370 with a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n11
    have u6 : ¬v24 := by
      rcases c1006 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u2
    have u7 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n11
    have u12 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u13 : v22 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n11
    have u14 : v2 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v37 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n9
    have u16 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
    have u17 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u13 a
      · exact a
    have u21 : v21 := by
      rcases c2440 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u13 a
      · exact absurd a u20
      · exact absurd a n9
    have u22 : ¬v39 := by
      rcases c2437 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
    have u23 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u16 a
    have u24 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u14 a
      · exact absurd u16 a
      · exact a
    have u25 : ¬v19 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u20
    have u26 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u4
    have u27 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u26 a
      · exact a
    rcases c466 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a n6
    · exact absurd a u24
    · exact absurd a n7
    · exact absurd a u23
    · exact absurd a u28
    · exact absurd u26 a
  have c2446 : v16 ∨ v8 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
    have u5 : ¬v1 := by
      rcases c2443 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u6 : v22 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v21 := by
      rcases c2440 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a u11
      · exact absurd a n6
    have u13 : v20 := by
      rcases c2444 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd u12 a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
    have u14 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
    have u15 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
    have u16 : ¬v35 := by
      rcases c2445 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
    have u17 : v30 := by
      rcases c2116 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a u16
    have u18 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u17 a
      · exact a
    rcases c194 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd u6 a
    · exact absurd a n8
  have c2447 : ¬v4 ∨ v1 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v2 := by
      rcases c2270 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u8 : v7 := by
      rcases c1446 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    rcases c32 with a|a|a
    · exact absurd n0 a
    · exact absurd u9 a
    · exact absurd u8 a
  have c2448 : v23 ∨ v1 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v24 ∨ v25 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v21 := by
      rcases c1653 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v17 := by
      rcases c2372 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u12 : ¬v18 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u4
    have u13 : ¬v4 := by
      rcases c2447 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v7 := by
      rcases c200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u15 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v3 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
    have u19 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
    have u20 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
    have u21 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v32 := by
      rcases c2405 with a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    rcases c492 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n9
  have c2449 : v25 ∨ v3 ∨ v10 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v47 := by
      rcases c2370 with a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v18 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u4
    have u8 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
    have u9 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v32 := by
      rcases c2405 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u12 : v31 := by
      rcases c413 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n10
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd u7 a
    have u13 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u11
    have u14 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v5 := by
      rcases c719 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u13 a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u5
    rcases c453 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
  have c2450 : ¬v4 ∨ ¬v1 ∨ v3 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c453 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n7
  have c2451 : ¬v26 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v27 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v8 := by
      rcases c2446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v1 := by
      rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n12
    have u12 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v41 := by
      rcases c2425 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u12
    have u16 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd u8 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u15 a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd u15 a
  have c2452 : v48 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v8 := by
      rcases c2446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
    have u3 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
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
    have u7 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v1 := by
      rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n11
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v4 := by
      rcases c2450 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
    have u14 : v17 := by
      rcases c2449 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u15 : ¬v21 := by
      rcases c2372 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd u14 a
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v20 := by
      rcases c2228 with a|a|a|a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd u14 a
      · exact a
    have u17 : ¬v22 := by
      rcases c2440 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v40 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a u11
      · exact absurd a n11
    have u19 : v26 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n8
    have u20 : v2 := by
      rcases c2451 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u21 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u8 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u20 a
      · exact absurd u8 a
      · exact a
    rcases c2422 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd u2 a
    · exact absurd a n0
  have c2453 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v40 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd n4 a
    rcases c2422 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd n4 a
    · exact absurd a n5
  have c2454 : ¬v6 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n0 a
  have c2455 : v24 ∨ ¬v1 ∨ v5 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v8 := by
      rcases c2446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
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
    have u7 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v6 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n13
    have u15 : ¬v4 := by
      rcases c2450 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u16 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u13
      · exact a
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n12
    have u17 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : v21 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd u16 a
      · exact absurd a u10
      · exact absurd a n13
    have u22 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u18
    have u23 : v20 := by
      rcases c309 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u21 a
      · exact absurd a u22
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u18
    have u24 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u23 a
    have u25 : v32 := by
      rcases c1756 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd u21 a
      · exact a
      · exact absurd a u19
      · exact absurd a u8
    have u26 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u20
      · exact a
    rcases c133 with a|a
    · exact absurd u26 a
    · exact absurd u25 a
  have c2456 : ¬v37 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v33 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1386 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n10
  have c2457 : v11 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n14
    have u6 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
    have u7 : ¬v37 := by
      rcases c2456 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u2
    have u8 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n1
    rcases c1720 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a u5
    · exact absurd a u7
  have c2458 : v19 ∨ ¬v1 ∨ v9 ∨ v15 ∨ v16 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v8 := by
      rcases c2446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
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
    have u7 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
    have u11 : ¬v6 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v25 := by
      rcases c2452 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u13 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v5 := by
      rcases c2455 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u15 a
    have u17 : v17 := by
      rcases c2457 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : ¬v21 := by
      rcases c2372 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd u17 a
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v20 := by
      rcases c2228 with a|a|a|a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd u17 a
      · exact a
    rcases c2429 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a n5
    · exact absurd a u13
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2459 : v24 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v8 := by
      rcases c2446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v1 := by
      rcases c2458 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v25 := by
      rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : v21 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v20 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd u12 a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
    have u15 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
    have u16 : v32 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n4
      · exact a
    have u17 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v38 := by
      rcases c2405 with a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u20 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u6
    have u21 : v2 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u7
    have u22 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u20 a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    rcases c1458 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u9
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a n7
  have c2460 : v17 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : ¬v18 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n3
    have u3 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c2405 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c1741 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n12
  have c2461 : v27 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v8 := by
      rcases c2446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
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
    have u7 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n9
    have u13 : v28 := by
      rcases c2459 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v1 := by
      rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v6 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
    have u19 : ¬v4 := by
      rcases c2450 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u20 : v17 := by
      rcases c2460 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u21 : ¬v21 := by
      rcases c2372 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd u20 a
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v20 := by
      rcases c2228 with a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u20 a
      · exact a
    have u23 : v35 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a n7
      · exact a
    have u24 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a u22
      · exact absurd a n0
      · exact a
      · exact absurd a u24
    rcases c2425 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a n4
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a n9
  have c2462 : v49 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v23 ∨ v27 ∨ v29 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v8 := by
      rcases c2446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v24 := by
      rcases c2461 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
    have u4 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v21 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u10
    have u17 : v1 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n0
    have u18 : ¬v6 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n0
    have u19 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
    have u20 : ¬v4 := by
      rcases c2450 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
    have u21 : v2 := by
      rcases c2429 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u22 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u17 a
      · exact absurd u21 a
      · exact a
    have u23 : v40 := by
      rcases c2453 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd u17 a
      · exact absurd a u20
      · exact a
      · exact absurd u3 a
      · exact absurd a n9
    rcases c2377 with a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n0
  have c2463 : v38 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ ¬v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd n9 a
      · exact a
    rcases c484 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n12
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n3
  have c2464 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c453 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
  have c2465 : ¬v4 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v1 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v2 := by
      rcases c2270 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u12 : v7 := by
      rcases c1446 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u12 a
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd u12 a
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a n6
  have c2466 : v48 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v23 ∨ v27 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v24 := by
      rcases c2461 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u2 : v8 := by
      rcases c2446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u4 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
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
    have u10 : ¬v4 := by
      rcases c2465 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
    have u11 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : v20 := by
      rcases c2462 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u15 : ¬v17 := by
      rcases c2228 with a|a|a|a
      · exact absurd a n6
      · exact absurd a u6
      · exact a
      · exact absurd u14 a
    have u16 : ¬v18 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u17 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd u1 a
    have u18 : v39 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n4
      · exact a
      · exact absurd a u11
    have u19 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n5
      · exact a
      · exact absurd a u17
    have u20 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u19 a
      · exact a
    rcases c2463 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd u18 a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u11
  have c2467 : v23 ∨ ¬v1 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v27 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n9
    have u2 : v8 := by
      rcases c2446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v4 := by
      rcases c2465 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u13
    have u17 : v17 := by
      rcases c2460 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u18 : v18 := by
      rcases c287 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u8
    have u19 : ¬v21 := by
      rcases c2372 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a u6
    have u20 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v40 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u14
      · exact absurd a n9
    have u22 : v34 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a u19
      · exact a
    have u23 : ¬v2 := by
      rcases c2453 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd u3 a
      · exact absurd a n8
    rcases c1870 with a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u23
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u14
  have c2468 : v48 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v23 ∨ ¬v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n6 a
    rcases c2466 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
  have c2469 : v16 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v8 := by
      rcases c2446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v28 := by
      rcases c2468 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u3 : ¬v1 := by
      rcases c2467 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v27 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u4 a
      · exact a
    rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
  have c2470 : ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v16 ∨ ¬v17 ∨ v19 ∨ ¬v27 ∨ v28 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u4 : v34 := by
      rcases c1798 with a|a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact absurd n7 a
      · exact a
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v1 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
    have u13 : v8 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n9
    have u18 : ¬v2 := by
      rcases c2270 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u19 : v5 := by
      rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u14
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd u13 a
    rcases c31 with a|a|a
    · exact absurd u19 a
    · exact absurd n0 a
    · exact absurd u17 a
  have c2471 : v49 ∨ v10 ∨ v11 ∨ ¬v16 ∨ ¬v17 ∨ v19 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v39 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v34 := by
      rcases c1798 with a|a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n0
    have u5 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n0
    have u11 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u6
    have u12 : v12 := by
      rcases c2470 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n0
    have u13 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v1 := by
      rcases c2198 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u13
      · exact absurd n4 a
      · exact absurd n6 a
      · exact absurd a u9
      · exact absurd a n0
    rcases c2428 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd u14 a
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n0
  have c2472 : v18 ∨ ¬v11 ∨ v15 ∨ v19 ∨ v22 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v1 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
    have u8 : ¬v4 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
    have u9 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
    rcases c767 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n3
  have c2473 : v49 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : v16 := by
      rcases c2469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u6 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
    have u7 : v17 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u5 a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u4
    have u8 : ¬v18 := by
      rcases c1804 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n5 a
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : v34 := by
      rcases c1798 with a|a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact absurd n5 a
      · exact a
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n0
    have u15 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v39 := by
      rcases c2438 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
    have u18 : ¬v11 := by
      rcases c2472 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u19 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u16
    have u20 : v10 := by
      rcases c2471 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd u5 a
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a n8
    have u21 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v1 := by
      rcases c2198 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u21
      · exact absurd u7 a
      · exact absurd n5 a
      · exact absurd a u12
      · exact absurd a n0
    rcases c2428 with a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd u22 a
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n0
  have c2474 : ¬v1 ∨ ¬v4 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : v8 := by
      rcases c2428 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u4 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u3 a
      · exact a
    rcases c453 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n6
  have c2475 : ¬v7 ∨ v1 ∨ ¬v4 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v43 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    rcases c167 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c2476 : v41 ∨ v6 ∨ v13 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v34 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact a
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v43 := by
      rcases c2171 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    rcases c167 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  exact ⟨c2428, c2434, c2437, c2438, c2439, c2440, c2446, c2448, c2453, c2454, c2460, c2461, c2463, c2464, c2465, c2469, c2473, c2474, c2475, c2476⟩
