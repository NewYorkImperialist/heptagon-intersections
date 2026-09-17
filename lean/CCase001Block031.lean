import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1550-1599 of the 2915-step refutation of ccase001: 127 core clauses and 64 earlier-derived ones give 18 more. -/
theorem CCase001_block031
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c74 : v11 ∨ v10 ∨ v12 ∨ v13 ∨ v8 ∨ v9)
    (c75 : v11 ∨ v10 ∨ v9 ∨ v8 ∨ v12 ∨ v14)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c106 : ¬v22 ∨ ¬v27)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c115 : ¬v27 ∨ ¬v24)
    (c120 : ¬v26 ∨ ¬v27)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c148 : ¬v39 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c170 : ¬v46 ∨ ¬v43)
    (c175 : ¬v46 ∨ ¬v44)
    (c179 : ¬v46 ∨ ¬v45)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c209 : ¬v38 ∨ v45 ∨ v31 ∨ v30 ∨ v39 ∨ v37 ∨ v32 ∨ v44)
    (c214 : ¬v31 ∨ v38 ∨ v37 ∨ v25 ∨ v39 ∨ v32 ∨ v24 ∨ v30)
    (c297 : v11 ∨ v4 ∨ v48 ∨ v6 ∨ v12 ∨ v13 ∨ ¬v5 ∨ v47)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c319 : v43 ∨ v15 ∨ v6 ∨ v8 ∨ v2 ∨ ¬v9 ∨ v3 ∨ v14 ∨ v10 ∨ v20 ∨ v16 ∨ v13 ∨ v44 ∨ v45)
    (c325 : ¬v24 ∨ v2 ∨ v4 ∨ v31 ∨ v16 ∨ v32 ∨ v23 ∨ v10 ∨ v3 ∨ v19 ∨ v26 ∨ v25 ∨ v17 ∨ v33)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c350 : ¬v46 ∨ v11 ∨ v2 ∨ v39 ∨ v4 ∨ v18 ∨ v5 ∨ v17 ∨ v37 ∨ v38 ∨ v19 ∨ v44 ∨ v45 ∨ v47)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c406 : ¬v31 ∨ v38 ∨ v4 ∨ v37 ∨ v40 ∨ v32 ∨ v33 ∨ v24 ∨ v25 ∨ v26 ∨ v2 ∨ v30 ∨ v3 ∨ v45)
    (c408 : v15 ∨ v21 ∨ v16 ∨ v1 ∨ v7 ∨ v14 ∨ v9 ∨ ¬v8)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c421 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v19 ∨ v6 ∨ ¬v13)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c441 : ¬v24 ∨ v31 ∨ v17 ∨ v32 ∨ v25 ∨ v18 ∨ v23 ∨ v16)
    (c485 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v30 ∨ v42 ∨ v35 ∨ v28)
    (c503 : v4 ∨ v11 ∨ v38 ∨ v30 ∨ v32 ∨ v12 ∨ v45 ∨ v44 ∨ ¬v3 ∨ v2 ∨ v31 ∨ v10 ∨ v5 ∨ v47)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c577 : v26 ∨ ¬v19 ∨ v18 ∨ v11 ∨ v27 ∨ v25 ∨ v20 ∨ v12)
    (c795 : v10 ∨ ¬v2 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c861 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24)
    (c866 : ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1032 : v29 ∨ v22 ∨ v23 ∨ ¬v30 ∨ v36 ∨ v37 ∨ v38)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1094 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1295 : ¬v25 ∨ ¬v30 ∨ v37 ∨ v38)
    (c1300 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v35)
    (c1350 : ¬v26 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v33 ∨ v34 ∨ v35)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1452 : ¬v3 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1465 : ¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1590 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v22)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1630 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c1648 : ¬v18 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1649 : ¬v17 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1693 : ¬v24 ∨ v10 ∨ ¬v12 ∨ ¬v13 ∨ ¬v16)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1867 : ¬v14 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1979 : v7 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2013 : ¬v27 ∨ v9 ∨ v10 ∨ ¬v16)
    (c2047 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ ¬v19 ∨ v20)
    (c2049 : v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2066 : v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2069 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2070 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c2071 : v39 ∨ v3 ∨ v4 ∨ v5 ∨ v45 ∨ ¬v46 ∨ v47)
    (c2073 : v33 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v24 ∨ v34 ∨ v37 ∨ v38 ∨ v47 ∨ v48 ∨ v49)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2083 : ¬v19 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2085 : ¬v27 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v33 ∨ v38 ∨ v40 ∨ v41 ∨ v47)
    (c2091 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c2093 : ¬v37 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c2094 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2111 : ¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47)
    (c2121 : v18 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v19 ∨ v20 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c2132 : v20 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ ¬v34 ∨ v45 ∨ v47 ∨ v48)
    (c2135 : v14 ∨ v6 ∨ v8 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c2142 : v13 ∨ v5 ∨ ¬v6 ∨ v7 ∨ ¬v9 ∨ v47 ∨ v48 ∨ v49)
    (c2145 : v14 ∨ ¬v2 ∨ v6 ∨ v7 ∨ v13 ∨ ¬v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49)
    (c2152 : v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2166 : v11 ∨ ¬v2 ∨ v47 ∨ v48 ∨ v49)
    (c2167 : ¬v7 ∨ ¬v2 ∨ ¬v11 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2169 : ¬v13 ∨ ¬v2 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c2172 : ¬v20 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c2175 : v14 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v8 ∨ v47 ∨ v48 ∨ v49)
    (c2176 : v34 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    : (v21 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49) ∧ (v21 ∨ ¬v2 ∨ v6 ∨ v7 ∨ ¬v11 ∨ ¬v14 ∨ v20) ∧ (¬v21 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v2 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (v30 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44) ∧ (¬v20 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45) ∧ (v17 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v16 ∨ v19 ∨ v26 ∨ ¬v30 ∨ v33 ∨ v37 ∨ v38 ∨ v45) ∧ (v30 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44) ∧ (v16 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45) ∧ (v9 ∨ ¬v1 ∨ v8 ∨ v21 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ ¬v1 ∨ v8 ∨ ¬v9 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45) ∧ (¬v34 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v37 ∨ v44 ∨ v45 ∨ v47) ∧ (¬v32 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v40 ∨ v47) ∧ (v30 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v5 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ ¬v46 ∨ v47) ∧ (v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19) ∧ (v13 ∨ ¬v1 ∨ v8 ∨ v21 ∨ v47 ∨ v48 ∨ v49) := by
  have c2177 : v21 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v34 := by
      rcases c2176 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v43 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    rcases c170 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c2178 : v5 ∨ ¬v2 ∨ v8 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v11 := by
      rcases c2166 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v7 := by
      rcases c2167 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v3 := by
      rcases c2175 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u9 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u10 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v13 := by
      rcases c2169 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v19 := by
      rcases c2145 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v21 := by
      rcases c2177 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v34 := by
      rcases c2135 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
    have u22 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
    rcases c2091 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd u22 a
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n6
  have c2179 : v8 ∨ ¬v2 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v11 := by
      rcases c2166 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v7 := by
      rcases c2167 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v5 := by
      rcases c2178 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u10 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u12 : v9 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a n0
    have u13 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u1 a
    have u15 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u12 a
      · exact absurd u1 a
      · exact a
    have u16 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u12 a
      · exact absurd u1 a
      · exact a
    have u17 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a u15
    have u18 : ¬v19 := by
      rcases c2145 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u16
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u17
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    rcases c2176 with a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2180 : v20 ∨ ¬v2 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v8 := by
      rcases c2179 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v11 := by
      rcases c2166 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v6 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v7 := by
      rcases c2167 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v19 := by
      rcases c2145 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v21 := by
      rcases c2177 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v27 := by
      rcases c1979 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
    have u24 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u21
    have u25 : v38 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a u21
      · exact a
      · exact absurd a u9
    have u26 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u25 a
      · exact a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u26
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u10
  have c2181 : v14 ∨ ¬v2 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v11 := by
      rcases c2166 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v8 := by
      rcases c2179 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
    have u8 : v20 := by
      rcases c2180 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v7 := by
      rcases c2167 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u15 : v1 := by
      rcases c408 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd u4 a
    have u16 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact a
    have u17 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n1 a
    have u18 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n1 a
    rcases c371 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd u1 a
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd a u13
  have c2182 : v21 ∨ ¬v2 ∨ v6 ∨ v7 ∨ ¬v11 ∨ ¬v14 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u2 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n4 a
    have u3 : v15 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n0
    have u4 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u5 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u6 : v1 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a n0
    have u7 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    rcases c371 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd n4 a
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a u7
  have c2183 : ¬v1 ∨ ¬v2 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c371 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n5
  have c2184 : ¬v21 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v1 := by
      rcases c2183 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u1
    have u5 : v3 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n8
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u6 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u7 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a u7
  have c2185 : v1 ∨ ¬v2 ∨ v6 ∨ v8 ∨ v9 ∨ v13 ∨ ¬v14 ∨ v21 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v3 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n9
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
    have u2 : v7 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    rcases c19 with a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd u2 a
  have c2186 : ¬v2 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v11 := by
      rcases c2166 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v14 := by
      rcases c2181 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u1 a
    have u8 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u1 a
    have u11 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u1 a
    have u12 : ¬v21 := by
      rcases c2184 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v6 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u14 : v1 := by
      rcases c2185 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u15 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u14 a
      · exact absurd n0 a
      · exact a
    have u16 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u14 a
      · exact absurd n0 a
      · exact a
    have u17 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n0 a
    have u18 : v20 := by
      rcases c2182 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd u6 a
      · exact a
    have u19 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u18 a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd u1 a
    · exact absurd a u10
    · exact absurd a u17
  have c2187 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v9 ∨ v16 ∨ v20 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n7
    have u2 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n9
    have u10 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n11
    have u11 : v35 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
    have u12 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u6
    rcases c134 with a|a
    · exact absurd u11 a
    · exact absurd u12 a
  have c2188 : v4 ∨ v3 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ v13 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v11 := by
      rcases c74 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u8 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v20 := by
      rcases c2187 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u9 a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd u1 a
    · exact absurd a n6
    · exact absurd a n0
  have c2189 : v21 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ v13 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n10
    have u7 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n10
    have u8 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v12 := by
      rcases c2188 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v19 := by
      rcases c1867 with a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u10 a
      · exact a
    have u12 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u5
    have u15 : v27 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u13
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u16
    rcases c1033 with a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u8
  have c2190 : v5 ∨ v3 ∨ v4 ∨ v6 ∨ v8 ∨ v9 ∨ v13 ∨ ¬v14 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n9
    have u5 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v10 := by
      rcases c2189 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v11 := by
      rcases c66 with a|a|a
      · exact absurd u6 a
      · exact absurd n7 a
      · exact a
    have u8 : ¬v12 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd u6 a
    have u9 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd u6 a
      · exact absurd a u7
    have u10 : v17 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd u6 a
      · exact absurd a u7
    have u11 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u10 a
      · exact a
    rcases c2121 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2191 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v16 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u5 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
    rcases c86 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c2192 : ¬v14 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n8
    have u7 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n8
    have u8 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v13 := by
      rcases c2190 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u10 a
    have u12 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n0 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n0 a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u4
    have u15 : ¬v33 := by
      rcases c2191 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u16 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u15
      · exact a
      · exact absurd a u9
    have u17 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u5
    have u21 : v24 := by
      rcases c2073 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u16 a
      · exact absurd a u19
      · exact absurd a n7
      · exact a
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u21 a
      · exact a
    rcases c577 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u16 a
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a u11
  have c2193 : v12 ∨ ¬v1 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v13 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd n9 a
      · exact absurd a n10
    have u2 : v11 := by
      rcases c75 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
    have u3 : ¬v18 := by
      rcases c1648 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd n9 a
      · exact absurd a n10
    rcases c341 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd u2 a
    · exact absurd a n3
    · exact absurd a u3
  have c2194 : v30 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n4
      · exact a
    have u2 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v35 := by
      rcases c866 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v29 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact a
      · exact absurd a n0
    rcases c485 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a u2
  have c2195 : ¬v20 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v30 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v22 := by
      rcases c1300 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
    have u9 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a u3
      · exact a
      · exact absurd a u6
    have u10 : v23 := by
      rcases c1032 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u8
      · exact a
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c108 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c2196 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v16 ∨ v19 ∨ v26 ∨ ¬v30 ∨ v33 ∨ v37 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v25 := by
      rcases c1295 with a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact a
      · exact absurd a u1
    have u5 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u4 a
    rcases c325 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n9
  have c2197 : v30 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v15 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n5
      · exact a
    have u3 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v22 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
    rcases c102 with a|a
    · exact absurd u4 a
    · exact absurd u2 a
  have c2198 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v16 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v30 := by
      rcases c2197 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c1295 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v19 := by
      rcases c2196 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
    have u6 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n0
      · exact a
      · exact absurd a u2
    have u7 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u6 a
    rcases c441 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n8
  have c2199 : v16 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
    have u2 : v17 := by
      rcases c2198 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    have u4 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a u4
    rcases c1033 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2200 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v12 := by
      rcases c2193 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n0 a
      · exact absurd a n10
    have u2 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u3 : v16 := by
      rcases c2199 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
    have u5 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v24 := by
      rcases c1693 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd n0 a
      · exact absurd u3 a
    have u7 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a u5
      · exact absurd a u6
      · exact a
    have u8 : v23 := by
      rcases c861 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact a
      · exact absurd a u6
    have u9 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v39 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
    have u13 : v40 := by
      rcases c406 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n13
      · exact a
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n18
    rcases c161 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c2201 : ¬v16 ∨ v6 ∨ v9 ∨ v10 ∨ v13 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v27 := by
      rcases c2013 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
    have u5 : v34 := by
      rcases c2176 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c897 with a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2202 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v16 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v30 := by
      rcases c2197 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n0
      · exact a
      · exact absurd a u2
    have u4 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u3 a
    rcases c1033 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2203 : v21 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v10 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v7 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd n1 a
    have u7 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v14 := by
      rcases c2192 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n5
    have u13 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n5
    have u14 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v33 := by
      rcases c2191 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
    have u20 : ¬v13 := by
      rcases c2200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u4
    have u21 : ¬v16 := by
      rcases c2201 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u5
    have u23 : v17 := by
      rcases c2202 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u4
    have u24 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u23 a
    rcases c2135 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u22
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2204 : ¬v10 ∨ v5 ∨ v6 ∨ v9 ∨ v14 ∨ v16 ∨ ¬v17 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u6
    have u8 : v13 := by
      rcases c2176 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
    rcases c421 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd u8 a
  have c2205 : v16 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n9
    have u7 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u5
    have u8 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n9
    have u9 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n11
    have u10 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v14 := by
      rcases c2192 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v17 := by
      rcases c2204 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v30 := by
      rcases c2197 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u5
    have u17 : v11 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n7 a
      · exact a
    have u18 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd u17 a
    have u22 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n9
    have u23 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u19
    rcases c1483 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2206 : v9 ∨ ¬v1 ∨ v8 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v10 := by
      rcases c2203 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v7 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u8 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u12 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n4
    have u13 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v16 := by
      rcases c2205 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v11 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd u1 a
      · exact a
    have u20 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u19 a
    rcases c2121 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2207 : ¬v6 ∨ ¬v1 ∨ v8 ∨ ¬v9 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v13 := by
      rcases c2142 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd n3 a
      · exact absurd u5 a
      · exact a
    rcases c373 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u8
  have c2208 : v5 ∨ ¬v1 ∨ v7 ∨ v8 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v9 := by
      rcases c2206 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v6 := by
      rcases c2207 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n2
      · exact a
    have u9 : v34 := by
      rcases c2176 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u8 a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd u8 a
      · exact absurd u2 a
      · exact a
    have u12 : v15 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n7
    have u13 : v16 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd u9 a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    rcases c80 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c2209 : v8 ∨ ¬v1 ∨ v4 ∨ v5 ∨ v10 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v7 := by
      rcases c2208 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v9 := by
      rcases c2203 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u10 : v34 := by
      rcases c2176 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n9
    have u12 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u6
    have u18 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v12 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n3
      · exact a
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a n9
    have u22 : v14 := by
      rcases c319 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
    rcases c1867 with a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd u21 a
    · exact absurd a n6
  have c2210 : v6 ∨ ¬v1 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v10 ∨ v13 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : v3 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
    have u5 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u6 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a u5
      · exact a
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd u6 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n9
  have c2211 : ¬v1 ∨ v5 ∨ v8 ∨ v10 ∨ v13 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v9 := by
      rcases c2203 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v6 := by
      rcases c2207 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v19 := by
      rcases c2210 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
    have u8 : v7 := by
      rcases c2208 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v4 := by
      rcases c2209 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c12 with a|a|a
    · exact absurd n0 a
    · exact absurd u9 a
    · exact absurd u8 a
  have c2212 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n5
  have c2213 : ¬v34 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v37 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v38 := by
      rcases c503 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n11
    rcases c2212 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2214 : v32 ∨ v5 ∨ v12 ∨ v19 ∨ v30 ∨ v34 ∨ v37 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v31 := by
      rcases c2212 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n10
  have c2215 : ¬v38 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v30 ∨ v34 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v32 := by
      rcases c2214 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u1
    rcases c1350 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a u5
  have c2216 : ¬v32 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n8
    rcases c1350 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c2217 : v30 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v5 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd n13 a
      · exact a
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd n13 a
      · exact a
    have u3 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n13 a
      · exact absurd a n14
    have u4 : ¬v34 := by
      rcases c2213 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n14
    have u5 : ¬v38 := by
      rcases c2215 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n14
    have u6 : v39 := by
      rcases c350 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n13 a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n14
    have u7 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v32 := by
      rcases c2216 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n14
    have u9 : v33 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n14
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u9 a
      · exact a
    rcases c503 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n14
  have c2218 : v5 ∨ ¬v1 ∨ v8 ∨ v10 ∨ v13 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v9 := by
      rcases c2206 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v6 := by
      rcases c2207 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v20 := by
      rcases c2211 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v3 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u9
    have u15 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v11 := by
      rcases c1452 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n8
    have u17 : ¬v12 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u16
      · exact a
      · exact absurd a u11
    have u18 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n6
    have u19 : v30 := by
      rcases c2217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd u4 a
      · exact absurd a n6
    have u20 : ¬v34 := by
      rcases c2213 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u21 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a n7
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a n6
  have c2219 : ¬v33 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v38 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v27 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n11
    rcases c2085 with a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2220 : v40 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v19 ∨ v21 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v32 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u2 : v20 := by
      rcases c2176 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v18 := by
      rcases c2216 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
    rcases c96 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c2221 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v21 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v19 := by
      rcases c2220 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v26 := by
      rcases c2047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u3
    have u5 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n8
    rcases c120 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c2222 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ ¬v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n5 a
      · exact a
    rcases c2047 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a u1
  have c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n4 a
    rcases c2222 with a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n4 a
  have c2224 : v11 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v21 ∨ v33 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v34 := by
      rcases c2221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v27 := by
      rcases c897 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    rcases c2223 with a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u4 a
  have c2225 : v49 ∨ ¬v1 ∨ v5 ∨ v8 ∨ v13 ∨ v21 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v9 := by
      rcases c2206 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v6 := by
      rcases c2207 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v10 := by
      rcases c2218 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u9 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u1 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u8 a
    have u12 : v7 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a u11
    have u13 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    have u15 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n6
    have u16 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v33 := by
      rcases c2224 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c2219 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a n6
    · exact absurd a n7
  have c2226 : v13 ∨ ¬v1 ∨ v8 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v9 := by
      rcases c2206 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v6 := by
      rcases c2207 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v5 := by
      rcases c2225 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u10 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u8
      · exact a
    have u11 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u10 a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd u10 a
      · exact absurd u2 a
      · exact a
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd u7 a
    · exact absurd a n4
  exact ⟨c2177, c2182, c2184, c2186, c2191, c2194, c2195, c2196, c2197, c2199, c2206, c2207, c2212, c2213, c2216, c2217, c2223, c2226⟩
