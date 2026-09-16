import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2100-2149 of the 2934-step refutation of ccase002: 113 core clauses and 87 earlier-derived ones give 18 more. -/
theorem CCase002_block042
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c97 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v20)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
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
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c142 : ¬v34 ∨ ¬v35)
    (c145 : ¬v39 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c151 : ¬v40 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c156 : ¬v41 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c167 : ¬v47 ∨ ¬v43)
    (c172 : ¬v44 ∨ ¬v47)
    (c176 : ¬v45 ∨ ¬v47)
    (c179 : ¬v46 ∨ ¬v47)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c196 : v43 ∨ ¬v9 ∨ v19 ∨ v44 ∨ v17 ∨ v45 ∨ v8 ∨ v16 ∨ v12 ∨ v1 ∨ v11 ∨ v10 ∨ v5 ∨ v2)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c258 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ v30 ∨ v28 ∨ ¬v29 ∨ v23)
    (c263 : ¬v42 ∨ v36 ∨ v43 ∨ v29 ∨ v48 ∨ v35 ∨ v41 ∨ v49)
    (c270 : v13 ∨ v12 ∨ v48 ∨ v49 ∨ v14 ∨ v7 ∨ v5 ∨ ¬v6)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c301 : v43 ∨ ¬v9 ∨ v45 ∨ v3 ∨ v20 ∨ v15 ∨ v13 ∨ v6 ∨ v2 ∨ v16 ∨ v10 ∨ v8 ∨ v44 ∨ v14)
    (c354 : ¬v9 ∨ v8 ∨ v17 ∨ v15 ∨ v10 ∨ v2 ∨ v16 ∨ v1)
    (c392 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ v46 ∨ ¬v3 ∨ v10)
    (c431 : ¬v31 ∨ v38 ∨ v24 ∨ v37 ∨ v32 ∨ v30 ∨ v23 ∨ v39)
    (c432 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v35 ∨ v30 ∨ v28 ∨ v42)
    (c492 : ¬v47 ∨ v40 ∨ v2 ∨ v4 ∨ v41 ∨ v5 ∨ v37 ∨ v33 ∨ v34 ∨ v32 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c494 : v43 ∨ v29 ∨ v21 ∨ v23 ∨ ¬v22 ∨ v30 ∨ v34 ∨ v20 ∨ v36 ∨ v15 ∨ v27 ∨ v28 ∨ v44 ∨ v49)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c538 : ¬v24 ∨ v31 ∨ v16 ∨ v32 ∨ v30 ∨ v25 ∨ v17 ∨ v23)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c586 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c718 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17)
    (c760 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v21)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28)
    (c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1046 : v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v26 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1331 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1614 : v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ ¬v32)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1666 : ¬v42 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v48 ∨ v49)
    (c1741 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46)
    (c1796 : ¬v19 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26)
    (c1798 : ¬v17 ∨ ¬v16 ∨ ¬v27 ∨ v34)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1804 : ¬v18 ∨ ¬v16 ∨ ¬v27)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1835 : ¬v20 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1874 : v23 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ ¬v25 ∨ v26 ∨ v27)
    (c1878 : v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ ¬v26)
    (c1884 : ¬v34 ∨ v8 ∨ v13 ∨ v14 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ ¬v28)
    (c1905 : ¬v35 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v36 ∨ v37 ∨ v42)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2015 : ¬v34 ∨ v15 ∨ v21 ∨ ¬v22)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2021 : ¬v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c2025 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v16 ∨ v20 ∨ v26)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2066 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c2070 : ¬v26 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v33)
    (c2077 : ¬v19 ∨ v15 ∨ ¬v16 ∨ v20 ∨ ¬v24)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2107 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v18 ∨ v38 ∨ v45)
    (c2116 : ¬v22 ∨ v15 ∨ v16 ∨ v29 ∨ v30 ∨ v35)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2181 : ¬v19 ∨ v16 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26)
    (c2198 : ¬v16 ∨ v1 ∨ v8 ∨ ¬v17 ∨ ¬v27 ∨ v43 ∨ v49)
    (c2228 : v27 ∨ v13 ∨ ¬v17 ∨ ¬v20)
    (c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49)
    (c2319 : ¬v30 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v49)
    (c2377 : ¬v40 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v49)
    (c2391 : v47 ∨ v48 ∨ v49)
    (c2407 : ¬v25 ∨ v16 ∨ ¬v17 ∨ v18 ∨ ¬v21)
    (c2408 : ¬v32 ∨ v6 ∨ v13 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c2414 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2454 : ¬v6 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2464 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2476 : v41 ∨ v6 ∨ v13 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49)
    (c2490 : v46 ∨ v4 ∨ v11 ∨ ¬v16 ∨ v18 ∨ v26 ∨ ¬v30 ∨ v45)
    (c2491 : v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2520 : v40 ∨ ¬v1 ∨ v6 ∨ v8 ∨ v48 ∨ v49)
    (c2521 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2535 : v21 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c2541 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v48 ∨ v49)
    (c2550 : v13 ∨ v15 ∨ ¬v16 ∨ ¬v17 ∨ v19 ∨ v21 ∨ v24 ∨ ¬v29 ∨ v48 ∨ v49)
    (c2581 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2595 : ¬v38 ∨ v31 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2643 : v6 ∨ v7 ∨ v13 ∨ v14 ∨ v20 ∨ v21 ∨ v28 ∨ v36 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c2651 : ¬v3 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2656 : v9 ∨ v23 ∨ v48 ∨ v49)
    (c2664 : ¬v38 ∨ v4 ∨ v5 ∨ ¬v47 ∨ v48)
    (c2666 : ¬v7 ∨ v17 ∨ v20 ∨ v23 ∨ v48 ∨ v49)
    (c2667 : v4 ∨ ¬v3 ∨ v10 ∨ v11 ∨ v40 ∨ ¬v47 ∨ v48)
    (c2669 : ¬v18 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ v48 ∨ v49)
    (c2671 : v19 ∨ v3 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v48 ∨ v49)
    (c2673 : ¬v24 ∨ v17 ∨ v19 ∨ v20 ∨ v48 ∨ v49)
    (c2674 : ¬v42 ∨ ¬v3 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v47 ∨ v48)
    (c2675 : v41 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ ¬v16 ∨ v20 ∨ ¬v27 ∨ v36 ∨ v42 ∨ v48 ∨ v49)
    (c2676 : ¬v41 ∨ v2 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v47 ∨ v48)
    (c2677 : v41 ∨ v5 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v39 ∨ v42 ∨ v48 ∨ v49)
    (c2679 : v39 ∨ ¬v3 ∨ v7 ∨ ¬v9 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v48 ∨ v49)
    : (v19 ∨ v17 ∨ v20 ∨ v23 ∨ v48 ∨ v49) ∧ (¬v3 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v40 ∨ ¬v41 ∨ ¬v47 ∨ v48) ∧ (¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ ¬v19 ∨ v38 ∨ v45) ∧ (v16 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v9 ∨ ¬v17 ∨ v19 ∨ v23 ∨ v24) ∧ (¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v21 ∨ v43 ∨ v49) ∧ (¬v15 ∨ v10 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24 ∨ v26) ∧ (¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v17 ∨ v20 ∨ v27 ∨ v28) ∧ (v1 ∨ v7 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v22 ∨ v28 ∨ v48 ∨ v49) ∧ (¬v15 ∨ v8 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v26 ∨ v27) ∧ (v20 ∨ v23 ∨ v48 ∨ v49) ∧ (¬v17 ∨ v10 ∨ v13 ∨ ¬v20 ∨ v23) ∧ (¬v1 ∨ v23 ∨ v24 ∨ v25 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v16 ∨ v48 ∨ v49) ∧ (v15 ∨ v1 ∨ v8 ∨ v16 ∨ v28 ∨ ¬v32 ∨ v43 ∨ v49) ∧ (¬v18 ∨ v11 ∨ v12 ∨ v17 ∨ ¬v20 ∨ v24 ∨ v25) ∧ (v24 ∨ v16 ∨ v23 ∨ v48 ∨ v49) ∧ (v16 ∨ v23 ∨ v48 ∨ v49) ∧ (¬v24 ∨ v13 ∨ ¬v16 ∨ ¬v20) := by
  have c2680 : v19 ∨ v17 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v7 := by
      rcases c2666 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
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
    have u7 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v18 := by
      rcases c2669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v24 := by
      rcases c2673 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v3 := by
      rcases c2671 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    have u17 : ¬v42 := by
      rcases c2674 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n4
    have u18 : v39 := by
      rcases c2679 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v4 := by
      rcases c2667 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd u1 a
      · exact absurd a n4
    have u22 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u21 a
    have u23 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u21 a
    have u24 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u15 a
    have u25 : v16 := by
      rcases c196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u9
      · exact a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u23
    have u26 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u18 a
      · exact a
    have u27 : ¬v27 := by
      rcases c2675 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd u25 a
      · exact absurd a n2
      · exact a
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
    have u28 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u27
    · exact absurd a u20
    · exact absurd a u28
  have c2681 : ¬v27 ∨ v6 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v19 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u7 : ¬v21 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n7
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
    have u8 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v16 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
    have u11 : ¬v17 := by
      rcases c2181 with a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
    have u12 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n9
    have u13 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v15 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u1
    have u18 : ¬v1 := by
      rcases c2520 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u14
    have u20 : v2 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u18
    have u21 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
    have u22 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u20 a
      · exact absurd u21 a
      · exact a
    rcases c2667 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd u21 a
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd u8 a
    · exact absurd a n8
  have c2682 : v6 ∨ v13 ∨ v20 ∨ v27 ∨ v40 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v34 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u2 : v42 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    rcases c263 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n7
  have c2683 : ¬v3 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v40 ∨ ¬v41 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v4 := by
      rcases c2667 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n8 a
      · exact absurd a n9
    have u2 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u3 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    rcases c2676 with a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd n8 a
    · exact absurd a n9
  have c2684 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ ¬v19 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v18 := by
      rcases c2107 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u3
    have u6 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u4 a
    have u7 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u5 a
      · exact a
    rcases c538 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u7
  have c2685 : ¬v24 ∨ v1 ∨ ¬v19 ∨ v20 ∨ v23 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v18 := by
      rcases c1001 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u6
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
    have u11 : ¬v16 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a u4
    have u12 : ¬v21 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
    have u13 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u10 a
      · exact absurd n2 a
      · exact a
    have u14 : ¬v7 := by
      rcases c2666 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n5
    have u16 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u15 a
    rcases c538 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u13
    · exact absurd a n4
  have c2686 : v40 ∨ v6 ∨ v17 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c2666 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v19 := by
      rcases c2680 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v1 := by
      rcases c2520 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v27 := by
      rcases c2681 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v41 := by
      rcases c2682 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v3 := by
      rcases c2683 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd u16 a
      · exact absurd u2 a
      · exact absurd a n5
    have u22 : ¬v24 := by
      rcases c2685 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u24 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u20
      · exact a
    have u25 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u24 a
      · exact a
    rcases c431 with a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a n4
    · exact absurd a u19
  have c2687 : v21 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v17 ∨ v20 ∨ v23 ∨ ¬v34 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : v28 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a n10
      · exact absurd a n9
    rcases c1884 with a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd u2 a
  have c2688 : v6 ∨ v17 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v7 := by
      rcases c2666 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v19 := by
      rcases c2680 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : v40 := by
      rcases c2686 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v27 := by
      rcases c2681 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u17 : v34 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u13
      · exact a
    have u18 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u22
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u24 : v3 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a u23
      · exact absurd a u9
    have u25 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u26 : v21 := by
      rcases c2687 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u17 a
      · exact absurd a u15
      · exact absurd a n5
    have u27 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u3 a
    have u28 : ¬v16 := by
      rcases c81 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u3 a
    have u29 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u11
      · exact a
    rcases c2116 with a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u20
  have c2689 : v17 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v19 := by
      rcases c2680 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : v6 := by
      rcases c2688 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
    have u16 : ¬v7 := by
      rcases c2666 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : v5 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u16
      · exact a
      · exact absurd u14 a
    have u18 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u14 a
    have u20 : ¬v3 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u10
      · exact a
      · exact absurd a u5
    have u21 : v16 := by
      rcases c718 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u20
      · exact a
      · exact absurd a n0
    have u22 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u2 a
    have u23 : v26 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd u21 a
      · exact absurd a n1
      · exact a
    have u24 : ¬v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u22
      · exact absurd u21 a
      · exact absurd a n1
      · exact a
    have u25 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u11
    rcases c1589 with a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a u22
    · exact absurd a u27
    · exact absurd a n2
    · exact absurd a u26
    · exact absurd a u13
  have c2690 : ¬v19 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v17 ∨ v20 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n5 a
    have u3 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n6
      · exact a
    have u4 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n6
    have u5 : v25 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a u4
      · exact a
    rcases c115 with a|a
    · exact absurd u5 a
    · exact absurd u3 a
  have c2691 : v16 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v9 ∨ ¬v17 ∨ v19 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : v15 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n0
    have u4 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u3 a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a u5
      · exact a
    have u7 : v25 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
    have u8 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u7 a
      · exact a
    rcases c1874 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd u7 a
    · exact absurd a u6
    · exact absurd a u8
  have c2693 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v21 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u4 : ¬v22 := by
      rcases c2015 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u5 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u4
  have c2696 : ¬v6 ∨ v7 ∨ v20 ∨ v23 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v1 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v19 := by
      rcases c2690 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
    have u16 : v5 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
    have u17 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n0 a
    have u18 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n0 a
    have u19 : ¬v3 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u4
      · exact a
      · exact absurd a u9
    have u20 : v16 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd u3 a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v27 := by
      rcases c2198 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd u1 a
      · exact a
      · exact absurd a u7
      · exact absurd a n6
    have u22 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u20 a
      · exact absurd u1 a
      · exact a
    have u23 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u1 a
    have u24 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u1 a
    have u25 : ¬v29 := by
      rcases c2550 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd u20 a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v34 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a n6
    have u27 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u28 : v22 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u23
      · exact a
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u29 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v30 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd u20 a
      · exact absurd a u22
      · exact absurd a u29
      · exact a
      · exact absurd a u5
    rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a n3
    · exact absurd u28 a
    · exact absurd a u31
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a u27
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u30
    · exact absurd a u6
    · exact absurd a n6
  have c2697 : ¬v15 ∨ v10 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : v25 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u5 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1874 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd u4 a
    · exact absurd a n6
    · exact absurd a u5
  have c2698 : v6 ∨ v7 ∨ v8 ∨ v14 ∨ ¬v16 ∨ ¬v17 ∨ v21 ∨ ¬v27 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : v34 := by
      rcases c1798 with a|a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n9
    have u7 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v1 := by
      rcases c2520 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u1
  have c2699 : ¬v16 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v40 := by
      rcases c2520 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    rcases c2677 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n11
  have c2702 : v26 ∨ v7 ∨ v18 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v6 := by
      rcases c2696 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v19 := by
      rcases c2690 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n5
    have u14 : ¬v15 := by
      rcases c2697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u15 : v16 := by
      rcases c97 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
    have u16 : ¬v29 := by
      rcases c2550 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd u15 a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u18 : ¬v27 := by
      rcases c2698 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u15 a
      · exact absurd u1 a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v1 := by
      rcases c2699 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v34 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n8
    have u21 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u12
      · exact a
    have u22 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u18
      · exact a
      · exact absurd a u20
    have u23 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : v35 := by
      rcases c2535 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u23
      · exact a
      · exact absurd a u25
      · exact absurd a n8
    rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u17
    · exact absurd a u24
    · exact absurd a u25
  have c2703 : v15 ∨ v1 ∨ v7 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v6 := by
      rcases c2696 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v19 := by
      rcases c2690 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n6
    have u13 : ¬v34 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n9
    have u14 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
    have u15 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u14
      · exact a
      · exact absurd a u13
    have u16 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n5
    have u20 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n9
    have u21 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v28 := by
      rcases c2021 with a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    rcases c258 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n5
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd u19 a
    · exact absurd a n6
  have c2704 : v26 ∨ v1 ∨ v7 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v6 := by
      rcases c2696 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v18 := by
      rcases c2702 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v14 := by
      rcases c760 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u4 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v8 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u9 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v34 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n10
    have u12 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
    have u13 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a u12
      · exact a
      · exact absurd a u11
    have u14 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v22 := by
      rcases c2703 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v35 := by
      rcases c2535 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
      · exact a
      · exact absurd a u16
      · exact absurd a n10
    rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u16
  have c2705 : v21 ∨ v7 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v6 := by
      rcases c2696 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v18 := by
      rcases c2702 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u7 a
    have u9 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u7 a
    have u10 : v1 := by
      rcases c2704 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v40 := by
      rcases c2520 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v28 := by
      rcases c2643 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v29 := by
      rcases c2021 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u15 a
    have u19 : v35 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u18
      · exact a
    have u20 : v34 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u12
      · exact a
    rcases c142 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c2706 : v21 ∨ v7 ∨ v20 ∨ v23 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v6 := by
      rcases c2696 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v26 := by
      rcases c2705 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n6
    have u11 : v41 := by
      rcases c2682 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u10
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v35 := by
      rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u14
  have c2707 : v24 ∨ v7 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v21 := by
      rcases c2706 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u6 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v25 := by
      rcases c2407 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd u3 a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u7
  have c2708 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v17 ∨ v20 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
  have c2709 : v1 ∨ v7 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v22 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u4
    have u6 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n6
  have c2710 : ¬v15 ∨ v8 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u4 : v24 := by
      rcases c2697 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u5 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u4 a
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n4
  have c2711 : v7 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v24 := by
      rcases c2707 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v21 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u11
    have u14 : ¬v15 := by
      rcases c2710 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u9
    have u15 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
    have u16 : v1 := by
      rcases c2709 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v6 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    rcases c2520 with a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u16 a
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n4
  have c2712 : ¬v15 ∨ v8 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v21 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n5
      · exact a
    have u3 : v22 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u4 : v27 := by
      rcases c2710 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a u2
      · exact a
    rcases c104 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c2713 : ¬v22 ∨ v18 ∨ v20 ∨ v21 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u7 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v7 := by
      rcases c2711 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u12 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u10 a
      · exact a
    have u18 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u10 a
      · exact a
    have u19 : ¬v15 := by
      rcases c2697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
    have u20 : v16 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u16
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
    have u21 : ¬v29 := by
      rcases c2550 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd u20 a
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n6
    have u23 : v30 := by
      rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n6
    have u24 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v4 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u17
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd u23 a
      · exact absurd a u13
    have u27 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a n6
    have u28 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u8 a
    rcases c1046 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u28
    · exact absurd a u18
    · exact absurd u7 a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a u27
    · exact absurd a n5
  have c2714 : v28 ∨ v1 ∨ v20 ∨ v21 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v7 := by
      rcases c2711 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v15 := by
      rcases c2712 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u16 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v3 := by
      rcases c2651 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v16 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u15
      · exact a
    have u20 : ¬v34 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n6
    have u21 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u2 a
    have u22 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u19 a
      · exact absurd u1 a
      · exact a
    have u23 : ¬v38 := by
      rcases c2664 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd u3 a
      · exact absurd a n5
    have u24 : ¬v22 := by
      rcases c2713 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n6
    have u25 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u18 a
      · exact absurd a u15
      · exact absurd a u24
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    have u26 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u25 a
    have u31 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u25 a
    have u32 : ¬v41 := by
      rcases c2414 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u29
      · exact absurd a u26
      · exact absurd a n5
      · exact absurd a n6
    have u33 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u34 : v36 := by
      rcases c432 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u33
      · exact absurd u25 a
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a n0
      · exact absurd a u26
    have u35 : v40 := by
      rcases c492 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u32
      · exact absurd a u14
      · exact absurd a u33
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u30
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    rcases c146 with a|a
    · exact absurd u35 a
    · exact absurd u34 a
  have c2715 : v1 ∨ v20 ∨ v21 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v7 := by
      rcases c2711 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v28 := by
      rcases c2714 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v15 := by
      rcases c2710 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u14
    have u16 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u10 a
      · exact absurd a u15
      · exact absurd a u13
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    rcases c2021 with a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd u11 a
  have c2716 : ¬v28 ∨ v6 ∨ v20 ∨ v39 ∨ v48 ∨ v49 := by
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
    have u3 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v7 := by
      rcases c2711 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : ¬v15 := by
      rcases c2710 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u21 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v3 := by
      rcases c2651 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u23 : v1 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u7 a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v32 := by
      rcases c2408 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u25 : v16 := by
      rcases c301 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u9 a
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u21
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u17
    have u26 : ¬v4 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
    have u27 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u25 a
      · exact absurd u6 a
      · exact a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u24
  have c2717 : ¬v27 ∨ ¬v16 ∨ ¬v17 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c1804 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : v34 := by
      rcases c1798 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u7 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v1 := by
      rcases c2715 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v4 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u9
  have c2718 : v21 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u7 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : v7 := by
      rcases c2711 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v3 := by
      rcases c2651 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v1 := by
      rcases c2715 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd u16 a
      · exact absurd u13 a
      · exact a
    have u18 : v40 := by
      rcases c2520 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v19 := by
      rcases c2690 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
    have u22 : ¬v28 := by
      rcases c2716 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v15 := by
      rcases c2712 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u22
    have u24 : v16 := by
      rcases c301 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u15
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u10
    have u25 : ¬v27 := by
      rcases c2717 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u1 a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
    have u26 : v26 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a n4
    have u27 : v34 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u19
      · exact a
    have u28 : v33 := by
      rcases c2070 with a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a u23
      · exact absurd u24 a
      · exact absurd a u21
      · exact a
    rcases c140 with a|a
    · exact absurd u28 a
    · exact absurd u27 a
  have c2719 : v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v17 := by
      rcases c2689 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v21 := by
      rcases c2718 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u9 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u11 : ¬v25 := by
      rcases c2407 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd u7 a
    have u12 : v24 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
    have u13 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u12 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u5
  have c2720 : ¬v17 ∨ v10 ∨ v13 ∨ ¬v20 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u3 : v27 := by
      rcases c2228 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n3 a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u3 a
      · exact a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u4
  have c2721 : ¬v1 ∨ v23 ∨ v24 ∨ v25 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v20 := by
      rcases c2719 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v4 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u15 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u16 : ¬v17 := by
      rcases c2720 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd u2 a
      · exact absurd a n1
    have u17 : ¬v38 := by
      rcases c2664 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n4
    rcases c1494 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
  have c2722 : ¬v27 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v1 := by
      rcases c2721 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u8 : v20 := by
      rcases c2719 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v15 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u14
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    have u19 : ¬v17 := by
      rcases c2720 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd u8 a
      · exact absurd a u1
    have u20 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u12
    have u21 : v2 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a u7
    have u22 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u11
    have u23 : ¬v7 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
    have u24 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u21 a
      · exact absurd u22 a
      · exact a
    have u25 : v21 := by
      rcases c2709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u18
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u26 : v40 := by
      rcases c2667 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd u22 a
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd u6 a
      · exact absurd a n2
    have u27 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u8 a
    have u28 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u25 a
      · exact absurd u8 a
      · exact a
    have u29 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u26 a
    have u31 : v32 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u30
      · exact absurd a u10
    have u32 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u2
    rcases c124 with a|a
    · exact absurd u31 a
    · exact absurd u32 a
  have c2723 : v15 ∨ v1 ∨ v8 ∨ v16 ∨ v28 ∨ ¬v32 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v22 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
    have u5 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u4
  have c2724 : ¬v18 ∨ v11 ∨ v12 ∨ v17 ∨ ¬v20 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v19 := by
      rcases c89 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u3 : v26 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u4 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v14 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact a
    rcases c637 with a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
  have c2725 : v15 ∨ v1 ∨ v8 ∨ v16 ∨ v30 ∨ ¬v32 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u1
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u4
  have c2726 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ ¬v20 ∨ v24 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v18 := by
      rcases c2724 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n0
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n8
  have c2727 : v1 ∨ ¬v3 ∨ v15 ∨ v16 ∨ v23 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v27 := by
      rcases c2722 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v20 := by
      rcases c2719 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v17 := by
      rcases c2228 with a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact a
      · exact absurd u2 a
    have u14 : v2 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a n0
    have u15 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n1 a
    have u16 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact a
    have u17 : ¬v38 := by
      rcases c2664 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u3 a
      · exact absurd a n6
    have u18 : v40 := by
      rcases c2667 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd u3 a
      · exact absurd a n6
    have u19 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u24 : ¬v32 := by
      rcases c2725 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u23
      · exact a
      · exact absurd a u7
      · exact absurd a n7
    have u25 : v25 := by
      rcases c2726 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u5
    have u26 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u26
    have u29 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u28 a
      · exact a
    rcases c432 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd u28 a
    · exact absurd a u29
    · exact absurd a u23
    · exact absurd a u27
    · exact absurd a u20
  have c2728 : ¬v15 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v16 ∨ ¬v20 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd n0 a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a u2
      · exact a
    rcases c528 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd n6 a
  have c2729 : v1 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v27 := by
      rcases c2722 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v20 := by
      rcases c2719 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v15 := by
      rcases c2728 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a u1
    have u11 : ¬v17 := by
      rcases c2720 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n3
    have u12 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u13
    have u15 : ¬v3 := by
      rcases c2727 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u14
      · exact a
    have u17 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a n7
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a n2
  have c2730 : ¬v25 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v20 := by
      rcases c2719 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
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
    have u12 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u6 a
      · exact a
    have u17 : ¬v17 := by
      rcases c2720 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd u7 a
      · exact absurd a u1
    have u18 : v1 := by
      rcases c2729 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
    have u20 : ¬v4 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
    have u21 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
    have u22 : v40 := by
      rcases c2520 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
    have u23 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
    have u24 : ¬v38 := by
      rcases c2664 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd u5 a
      · exact absurd a n2
    have u25 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u24
      · exact a
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
    have u31 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    rcases c431 with a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u24
    · exact absurd a u4
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u28
    · exact absurd a u1
    · exact absurd a u26
  have c2731 : v24 ∨ v16 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v27 := by
      rcases c2722 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v20 := by
      rcases c2719 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v17 := by
      rcases c2720 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n2
    have u11 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v25 := by
      rcases c2730 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v1 := by
      rcases c2721 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v15 := by
      rcases c2728 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a u1
    have u18 : ¬v3 := by
      rcases c2727 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u12
    have u20 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v31 := by
      rcases c2595 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u22 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a n4
    have u26 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u24
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u7
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u26
  have c2732 : v1 ∨ v16 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v24 := by
      rcases c2731 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v27 := by
      rcases c2722 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v20 := by
      rcases c2719 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v17 := by
      rcases c2720 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a n2
    have u14 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u16 : ¬v15 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u7
    have u17 : v2 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u18 : ¬v7 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v21 := by
      rcases c2709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u4 a
    have u21 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u7
    have u22 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n4
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u6
  have c2733 : v16 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v24 := by
      rcases c2731 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v20 := by
      rcases c2719 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v17 := by
      rcases c2720 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd u3 a
      · exact absurd a n1
    have u15 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u18 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u19 : ¬v15 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u10
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u6
    have u20 : v1 := by
      rcases c2732 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u21 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n3
    have u22 : ¬v4 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
    have u23 : v40 := by
      rcases c2520 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
    have u24 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n3
    have u25 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u23 a
    have u29 : v2 := by
      rcases c1004 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u14
    have u30 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u20 a
      · exact absurd u29 a
      · exact a
    have u31 : v21 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u30
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a n3
    have u32 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u3 a
    have u33 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u32
      · exact absurd a n1
      · exact absurd u1 a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u22
    · exact absurd a u32
    · exact absurd a u15
    · exact absurd a u28
    · exact absurd a u7
    · exact absurd a u33
  have c2734 : ¬v24 ∨ v13 ∨ ¬v16 ∨ ¬v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    rcases c561 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
  exact ⟨c2680, c2683, c2684, c2691, c2693, c2697, c2708, c2709, c2710, c2719, c2720, c2721, c2722, c2723, c2724, c2731, c2733, c2734⟩
