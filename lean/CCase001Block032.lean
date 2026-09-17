import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1600-1649 of the 2915-step refutation of ccase001: 121 core clauses and 77 earlier-derived ones give 9 more. -/
theorem CCase001_block032
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c108 : ¬v23 ∨ ¬v24)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c115 : ¬v27 ∨ ¬v24)
    (c118 : ¬v27 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
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
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c146 : ¬v36 ∨ ¬v37)
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c170 : ¬v46 ∨ ¬v43)
    (c175 : ¬v46 ∨ ¬v44)
    (c179 : ¬v46 ∨ ¬v45)
    (c180 : ¬v45 ∨ ¬v47)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c256 : ¬v32 ∨ v39 ∨ v33 ∨ v26 ∨ v38 ∨ v31 ∨ v25 ∨ v24)
    (c276 : v43 ∨ ¬v37 ∨ v31 ∨ v44 ∨ v30 ∨ v45 ∨ v36 ∨ v38)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c297 : v11 ∨ v4 ∨ v48 ∨ v6 ∨ v12 ∨ v13 ∨ ¬v5 ∨ v47)
    (c356 : ¬v34 ∨ v41 ∨ v27 ∨ v33 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c377 : v43 ∨ ¬v37 ∨ v44 ∨ v45 ∨ v29 ∨ v36 ∨ v30 ∨ v38)
    (c406 : ¬v31 ∨ v38 ∨ v4 ∨ v37 ∨ v40 ∨ v32 ∨ v33 ∨ v24 ∨ v25 ∨ v26 ∨ v2 ∨ v30 ∨ v3 ∨ v45)
    (c421 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v19 ∨ v6 ∨ ¬v13)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c443 : v48 ∨ v14 ∨ v5 ∨ v12 ∨ v7 ∨ ¬v6 ∨ v47 ∨ v13)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c472 : v20 ∨ v11 ∨ v14 ∨ v17 ∨ v10 ∨ v19 ∨ v7 ∨ v6 ∨ ¬v13 ∨ v12 ∨ v3 ∨ v47 ∨ v48 ∨ v49)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c568 : v4 ∨ v9 ∨ v2 ∨ ¬v3 ∨ v44 ∨ v11 ∨ v45 ∨ v10)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c704 : v23 ∨ ¬v19 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c950 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1350 : ¬v26 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v33 ∨ v34 ∨ v35)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1429 : ¬v5 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1438 : v13 ∨ ¬v1 ∨ v5 ∨ v14 ∨ v20 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1452 : ¬v3 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1540 : ¬v24 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49)
    (c1570 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1579 : ¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c1581 : ¬v25 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49)
    (c1587 : ¬v3 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c1629 : ¬v1 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v14 ∨ v43 ∨ v49)
    (c1642 : ¬v16 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1649 : ¬v17 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1867 : ¬v14 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1897 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49)
    (c1915 : ¬v4 ∨ ¬v1 ∨ v8 ∨ ¬v13 ∨ v43 ∨ v44 ∨ v49)
    (c1952 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38)
    (c1979 : v7 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2013 : ¬v27 ∨ v9 ∨ v10 ∨ ¬v16)
    (c2024 : ¬v26 ∨ v2 ∨ v9 ∨ v16 ∨ v19 ∨ v41 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2049 : v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2050 : ¬v26 ∨ v2 ∨ ¬v6 ∨ ¬v8 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c2051 : v16 ∨ v2 ∨ ¬v6 ∨ ¬v8 ∨ v9 ∨ v11 ∨ v12 ∨ v14 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2066 : v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2069 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2070 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c2071 : v39 ∨ v3 ∨ v4 ∨ v5 ∨ v45 ∨ ¬v46 ∨ v47)
    (c2073 : v33 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v24 ∨ v34 ∨ v37 ∨ v38 ∨ v47 ∨ v48 ∨ v49)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2093 : ¬v37 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c2094 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2111 : ¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47)
    (c2121 : v18 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v19 ∨ v20 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c2133 : v47 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v48 ∨ v49)
    (c2135 : v14 ∨ v6 ∨ v8 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c2142 : v13 ∨ v5 ∨ ¬v6 ∨ v7 ∨ ¬v9 ∨ v47 ∨ v48 ∨ v49)
    (c2150 : ¬v27 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c2159 : v34 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2166 : v11 ∨ ¬v2 ∨ v47 ∨ v48 ∨ v49)
    (c2176 : v34 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c2177 : v21 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49)
    (c2186 : ¬v2 ∨ v47 ∨ v48 ∨ v49)
    (c2191 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2194 : v30 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44)
    (c2195 : ¬v20 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45)
    (c2199 : v16 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45)
    (c2206 : v9 ∨ ¬v1 ∨ v8 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c2207 : ¬v6 ∨ ¬v1 ∨ v8 ∨ ¬v9 ∨ v47 ∨ v48 ∨ v49)
    (c2212 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c2213 : ¬v34 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v37 ∨ v44 ∨ v45 ∨ v47)
    (c2216 : ¬v32 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v40 ∨ v47)
    (c2217 : v30 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v5 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ ¬v46 ∨ v47)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2226 : v13 ∨ ¬v1 ∨ v8 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    : (¬v19 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10) ∧ (v32 ∨ v5 ∨ v12 ∨ v19 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48) ∧ (¬v19 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v8 ∨ v12 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45) ∧ (v14 ∨ ¬v1 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ ¬v14 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v1 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v40 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v33 ∨ v34 ∨ v44 ∨ v47 ∨ v48) := by
  have c2227 : ¬v19 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a u2
  have c2228 : v8 ∨ ¬v1 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v13 := by
      rcases c2226 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v9 := by
      rcases c2206 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v6 := by
      rcases c2207 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v7 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a u7
    have u12 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u5 a
      · exact absurd a u7
    have u13 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v19 := by
      rcases c2227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a u9
    have u16 : v20 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd u5 a
    have u17 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u16 a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd u6 a
    · exact absurd a u17
  have c2229 : v12 ∨ ¬v1 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v8 ∨ ¬v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v10 := by
      rcases c46 with a|a|a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v11 := by
      rcases c49 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a u2
    have u6 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a n7
    have u12 : ¬v3 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u3
    have u13 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a n7
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
    have u19 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u9
    have u20 : ¬v33 := by
      rcases c2191 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
    have u21 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u20
      · exact a
      · exact absurd a u18
    have u22 : ¬v20 := by
      rcases c2195 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
    have u23 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u10
    have u27 : v30 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u10
    have u28 : v24 := by
      rcases c2073 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd u21 a
      · exact absurd a u22
      · exact absurd a u25
      · exact a
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u29 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u27 a
    have u32 : v23 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u27 a
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u20
      · exact absurd a u31
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u18
    rcases c108 with a|a
    · exact absurd u32 a
    · exact absurd u28 a
  have c2230 : ¬v19 ∨ v6 ∨ v9 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n3
      · exact a
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
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
    have u9 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
    have u10 : v27 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v35 := by
      rcases c1028 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact a
    have u14 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v37 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u14
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u12
    have u17 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
    have u18 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u16 a
    rcases c377 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u16 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u18
  have c2231 : v9 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v21 ∨ v33 ∨ v34 ∨ v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v19 := by
      rcases c2230 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v20 := by
      rcases c2176 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v26 := by
      rcases c2024 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v40 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a u2
      · exact a
    have u13 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v32 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v30 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u7
    rcases c131 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c2232 : v4 ∨ v5 ∨ v6 ∨ v9 ∨ v12 ∨ v13 ∨ v21 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c2230 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n5
      · exact a
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
    have u7 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n8
    have u8 : v34 := by
      rcases c2231 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v16 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd a u6
    have u14 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : v40 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u18
      · exact a
      · exact absurd a n8
    have u20 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
    have u21 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n6
      · exact a
    have u22 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n7
    have u23 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : v27 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u24
      · exact a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u22
    have u26 : v3 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n8
    have u27 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : v10 := by
      rcases c2013 with a|a|a|a
      · exact absurd u25 a
      · exact absurd a n3
      · exact a
      · exact absurd u13 a
    have u30 : v8 := by
      rcases c838 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n3
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u20
    have u31 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd u29 a
    have u32 : v7 := by
      rcases c2177 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a u31
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u33 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u32 a
    rcases c203 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u33
    · exact absurd u32 a
    · exact absurd a n9
    · exact absurd a u31
  have c2233 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v9 ∨ v12 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c2230 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v33 := by
      rcases c2232 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : v16 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
    have u9 : v20 := by
      rcases c2176 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c89 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c2234 : v10 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v21 ∨ ¬v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v2 := by
      rcases c2166 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v20 := by
      rcases c2176 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a n10
    have u11 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v38 := by
      rcases c2212 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u8
    rcases c2217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd u14 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd u6 a
    · exact absurd a n10
  have c2235 : v32 ∨ v5 ∨ v12 ∨ v19 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n7
  have c2236 : v34 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v19 ∨ v21 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v32 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v20 := by
      rcases c2176 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v28 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u5
    have u15 : v40 := by
      rcases c2216 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
    have u16 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v26 := by
      rcases c1350 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u6
    have u19 : v25 := by
      rcases c256 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u5
      · exact a
      · exact absurd a u14
    have u20 : v27 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u18
      · exact a
      · exact absurd a u13
    rcases c118 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c2237 : v10 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u3 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n9
    have u6 : ¬v33 := by
      rcases c2234 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v34 := by
      rcases c2236 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v3 := by
      rcases c2213 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u12 : ¬v38 := by
      rcases c2212 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u13 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n9
    have u14 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u3
    have u15 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u13 a
      · exact a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a u15
  have c2238 : v5 ∨ ¬v1 ∨ v4 ∨ v6 ∨ v12 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v8 := by
      rcases c2228 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n6
    have u7 : ¬v13 := by
      rcases c2229 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v9 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u1 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u1 a
      · exact absurd u8 a
      · exact a
    have u12 : v19 := by
      rcases c2237 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v26 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd u12 a
    have u16 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : v34 := by
      rcases c1438 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v3 := by
      rcases c2213 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
    have u22 : ¬v38 := by
      rcases c2212 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u4
  have c2239 : v49 ∨ ¬v1 ∨ v4 ∨ v5 ∨ v12 ∨ v21 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v6 := by
      rcases c2238 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v8 := by
      rcases c2228 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u5 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n6
    have u11 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n6
    have u12 : v13 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u6
    have u13 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u10 a
      · exact a
    have u18 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd u2 a
      · exact absurd u12 a
      · exact a
    have u20 : ¬v10 := by
      rcases c46 with a|a|a
      · exact absurd u2 a
      · exact absurd u12 a
      · exact a
    have u21 : ¬v11 := by
      rcases c49 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u12 a
    have u22 : ¬v33 := by
      rcases c2191 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
    have u23 : ¬v26 := by
      rcases c2050 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u24 : ¬v20 := by
      rcases c2195 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
    have u25 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u22
      · exact a
      · exact absurd a u17
    have u26 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a u7
      · exact absurd a u9
    have u28 : v25 := by
      rcases c2051 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd u25 a
      · exact a
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u29 : v24 := by
      rcases c2073 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd u25 a
      · exact absurd a u24
      · exact absurd a n5
      · exact a
      · exact absurd a u27
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c113 with a|a
    · exact absurd u29 a
    · exact absurd u28 a
  have c2240 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v8 ∨ v12 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    rcases c950 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n6
  have c2241 : ¬v19 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v8 ∨ v12 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v13 := by
      rcases c2240 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u1
    have u5 : v9 := by
      rcases c2230 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd n4 a
      · exact absurd u5 a
      · exact a
    have u8 : v26 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd n0 a
    have u9 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
    rcases c1570 with a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n8
  have c2242 : v3 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v8 ∨ v12 ∨ v13 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v19 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
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
    have u4 : v14 := by
      rcases c2177 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
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
    have u8 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd n4 a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd n4 a
      · exact absurd u4 a
      · exact a
    have u10 : v34 := by
      rcases c2176 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v16 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u3
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a u7
    have u15 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
    have u16 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v38 := by
      rcases c2212 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u6
  have c2243 : ¬v34 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u4 : v9 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u7 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd n3 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v38 := by
      rcases c2212 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u2
  have c2244 : ¬v8 ∨ v3 ∨ v5 ∨ v12 ∨ v16 ∨ v17 ∨ v19 ∨ v30 ∨ v32 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
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
    have u6 : ¬v34 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u7 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v33 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v9 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n12
    have u11 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
    rcases c39 with a|a|a
    · exact absurd n0 a
    · exact absurd u10 a
    · exact absurd u11 a
  have c2245 : ¬v8 ∨ v3 ∨ v5 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v30 ∨ v37 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v32 := by
      rcases c2244 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u7
    have u9 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u7
    have u10 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u8
    have u11 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u7
    rcases c39 with a|a|a
    · exact absurd n0 a
    · exact absurd u10 a
    · exact absurd u11 a
  have c2246 : v7 ∨ v3 ∨ v5 ∨ v6 ∨ ¬v8 ∨ v12 ∨ v13 ∨ v21 ∨ v30 ∨ v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
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
    have u7 : v20 := by
      rcases c2242 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v34 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v38 := by
      rcases c2245 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v9 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u3
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u6
    have u19 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u18 a
    have u20 : v35 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
      · exact a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
    have u21 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u20 a
      · exact a
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a n10
  have c2247 : ¬v37 ∨ v30 ∨ v36 ∨ v38 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v29 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
    have u2 : v31 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
    rcases c125 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c2248 : ¬v37 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2247 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2248 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2250 : v49 ∨ v3 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v8 ∨ v12 ∨ v13 ∨ v21 ∨ v30 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u2 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    rcases c2246 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n0
  have c2251 : v13 ∨ v3 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v8 ∨ v12 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v30 := by
      rcases c2250 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c2235 with a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n9
  have c2252 : v12 ∨ ¬v1 ∨ v5 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v8 := by
      rcases c2228 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
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
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v4 := by
      rcases c2239 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v19 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : v13 := by
      rcases c2251 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v10 := by
      rcases c46 with a|a|a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v11 := by
      rcases c49 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u13
    have u17 : v20 := by
      rcases c472 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v16 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u13
    have u19 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
    have u22 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v35 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : v32 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n5
    rcases c141 with a|a
    · exact absurd u23 a
    · exact absurd u24 a
  have c2253 : ¬v6 ∨ ¬v1 ∨ v5 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
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
    have u4 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u5 : v12 := by
      rcases c443 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n3
    have u6 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v9 := by
      rcases c2142 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a n5
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v8 := by
      rcases c1629 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n7
    have u12 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd u6 a
      · exact absurd a n5
    have u13 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u11 a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u11 a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u12 a
      · exact a
    have u20 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u10
    have u21 : ¬v24 := by
      rcases c1540 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n7
    have u22 : ¬v25 := by
      rcases c1581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n7
    have u23 : ¬v17 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u21
    have u24 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u21
      · exact a
    have u25 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u24 a
      · exact a
    rcases c406 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u2
    · exact absurd a u25
    · exact absurd a u1
    · exact absurd a u10
  have c2254 : v5 ∨ ¬v1 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v12 := by
      rcases c2252 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v8 := by
      rcases c2228 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v13 := by
      rcases c51 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v6 := by
      rcases c2253 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v19 := by
      rcases c2230 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v4 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a u13
    have u15 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u16 : v20 := by
      rcases c2177 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u11
    have u21 : v35 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
    have u25 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u22
    have u26 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u25
  have c2255 : ¬v12 ∨ v3 ∨ v6 ∨ v7 ∨ ¬v8 ∨ v13 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v19 := by
      rcases c2230 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v20 := by
      rcases c2177 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v1 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u9
    have u13 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u7
    have u14 : v5 := by
      rcases c2254 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v35 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u12 a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd u3 a
      · exact absurd a n7
    have u20 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
    have u21 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u17
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u21
  have c2256 : v13 ∨ ¬v1 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v8 := by
      rcases c2228 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
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
    have u4 : v5 := by
      rcases c2254 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v12 := by
      rcases c2255 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v11 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n3
    have u11 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v19 := by
      rcases c2230 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v20 := by
      rcases c2177 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u14 a
    rcases c1429 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd n1 a
    · exact absurd u10 a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a n5
  have c2257 : ¬v20 ∨ v2 ∨ v7 ∨ v9 ∨ v14 ∨ v34 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v35 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    have u9 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v37 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u9
    have u11 : v45 := by
      rcases c2249 with a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    have u12 : ¬v47 := by
      rcases c180 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u11 a
    rcases c2069 with a|a|a|a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n8
    · exact absurd a n9
  have c2258 : v21 ∨ ¬v1 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u6 : v13 := by
      rcases c2256 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v8 := by
      rcases c2228 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v10 := by
      rcases c46 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v11 := by
      rcases c49 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v12 := by
      rcases c51 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u13 : v5 := by
      rcases c2252 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v3 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u10
    have u18 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd u1 a
      · exact absurd a n2
    have u19 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd u6 a
      · exact absurd a u9
    have u20 : ¬v16 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd u6 a
      · exact absurd a u9
    have u21 : ¬v34 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd u7 a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u22 : ¬v20 := by
      rcases c2257 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u23 : v19 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n0
      · exact a
      · exact absurd u6 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u16
    have u24 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : v35 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u20
      · exact a
    rcases c2028 with a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u20
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u28
  have c2259 : ¬v1 ∨ v6 ∨ v7 ∨ ¬v8 ∨ ¬v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v10 := by
      rcases c46 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v11 := by
      rcases c49 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v12 := by
      rcases c51 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u5 : v21 := by
      rcases c2258 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd n4 a
      · exact absurd a n5
    have u9 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : v5 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u10
    have u14 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v3 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u7
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u2
    rcases c472 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd n4 a
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2260 : v26 ∨ ¬v1 ∨ v7 ∨ ¬v13 ∨ v14 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v21 := by
      rcases c2258 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
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
    have u8 : v8 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u9 : ¬v12 := by
      rcases c51 with a|a|a
      · exact absurd u8 a
      · exact absurd n3 a
      · exact a
    have u10 : v6 := by
      rcases c2259 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd u8 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u10 a
    have u14 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n6
    have u15 : v40 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u4
      · exact a
    rcases c161 with a|a
    · exact absurd u14 a
    · exact absurd u15 a
  have c2261 : v9 ∨ ¬v1 ∨ v7 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v21 := by
      rcases c2258 with a|a|a|a|a
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
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
    have u11 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
    have u12 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v26 := by
      rcases c2024 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v13 := by
      rcases c2260 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v27 := by
      rcases c1979 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v5 := by
      rcases c1438 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c13 with a|a|a
    · exact absurd n1 a
    · exact absurd u16 a
    · exact absurd u17 a
  have c2262 : ¬v6 ∨ ¬v1 ∨ v7 ∨ ¬v9 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c2142 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2263 : v7 ∨ ¬v1 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v21 := by
      rcases c2258 with a|a|a|a|a
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
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v8 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n2
    have u11 : v9 := by
      rcases c2261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v6 := by
      rcases c2262 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v5 := by
      rcases c2133 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd u16 a
    · exact absurd a n3
  have c2264 : v13 ∨ v5 ∨ v6 ∨ v14 ∨ ¬v21 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v12 := by
      rcases c2121 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v11 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd u10 a
      · exact absurd a n1
    have u12 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u10 a
    have u13 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    have u14 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u9
    rcases c2135 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2265 : ¬v12 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v16 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    rcases c2199 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
  have c2266 : v9 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v16 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
      · exact absurd a n7
    have u7 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n7
    have u8 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u5
    have u9 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n9
    have u10 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v32 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u11
    have u14 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u13 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a u15
  have c2267 : v8 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v13 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n9
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
    have u9 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v12 := by
      rcases c2265 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n12
    have u13 : v9 := by
      rcases c2266 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v10 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd a n6
    rcases c56 with a|a|a
    · exact absurd u13 a
    · exact absurd n4 a
    · exact absurd u14 a
  have c2269 : v14 ∨ ¬v1 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v21 := by
      rcases c2258 with a|a|a|a|a
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
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v7 := by
      rcases c2263 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd u2 a
      · exact absurd a n2
    have u17 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a n2
    have u18 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : v13 := by
      rcases c2264 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u22 : v8 := by
      rcases c2267 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd u21 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v12 := by
      rcases c51 with a|a|a
      · exact absurd u22 a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v11 := by
      rcases c49 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v10 := by
      rcases c46 with a|a|a
      · exact absurd u22 a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u21 a
    have u27 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u9
    have u28 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n4
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u27
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a u28
    · exact absurd a u6
    · exact absurd a u20
  have c2270 : ¬v13 ∨ ¬v1 ∨ v5 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v21 := by
      rcases c2258 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v14 := by
      rcases c2269 with a|a|a|a|a
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
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u10 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v8 := by
      rcases c53 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u13 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u14 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u17 : ¬v4 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n5
    have u18 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u16
    have u19 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n5
    have u20 : ¬v3 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u4
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u10
    have u21 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : v32 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a n4
    have u23 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd u3 a
      · exact absurd a n3
    have u24 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u25
      · exact absurd a u24
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u26
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u27
    · exact absurd a u24
  have c2271 : ¬v3 ∨ ¬v1 ∨ v5 ∨ v8 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v13 := by
      rcases c2270 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v14 := by
      rcases c2269 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v21 := by
      rcases c2258 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v12 := by
      rcases c1867 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a u9
    have u15 : ¬v11 := by
      rcases c1452 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n6
    rcases c2133 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd a n6
  have c2272 : v4 ∨ v3 ∨ v5 ∨ v6 ∨ v13 ∨ ¬v14 ∨ v18 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n7
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
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n9
    have u7 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n9
    have u8 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v12 := by
      rcases c1867 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n7
    have u12 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n9
    have u13 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u12
    have u14 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v21 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a u10
    have u20 : ¬v31 := by
      rcases c1952 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u8
    have u21 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v9 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u2
      · exact a
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n11
    have u24 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u20
    rcases c57 with a|a|a
    · exact absurd u23 a
    · exact absurd n5 a
    · exact absurd u24 a
  have c2273 : v8 ∨ ¬v1 ∨ v5 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v14 := by
      rcases c2269 with a|a|a|a|a
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
    have u3 : v21 := by
      rcases c2258 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v13 := by
      rcases c2270 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v6 := by
      rcases c1897 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
    have u15 : ¬v3 := by
      rcases c2271 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v4 := by
      rcases c2272 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    have u18 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u17
      · exact a
      · exact absurd n1 a
    have u19 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u18 a
      · exact absurd u1 a
      · exact a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd u18 a
    · exact absurd a u7
  have c2274 : v5 ∨ ¬v1 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v21 := by
      rcases c2258 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v14 := by
      rcases c2269 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u8 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v8 := by
      rcases c2273 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd u10 a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
    have u14 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
    have u15 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v32 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
    have u17 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u21 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u8
      · exact a
    rcases c2028 with a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u18
  have c2275 : ¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ ¬v14 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c52 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    rcases c513 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n1 a
  have c2276 : ¬v1 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v14 := by
      rcases c2269 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v5 := by
      rcases c2274 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v12 := by
      rcases c2275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
    have u11 : v21 := by
      rcases c2258 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v11 := by
      rcases c1429 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n3
    have u16 : v13 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
    have u17 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u1 a
    have u18 : ¬v8 := by
      rcases c53 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u1 a
    rcases c513 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u18
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd n0 a
  have c2277 : ¬v40 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v33 ∨ v34 ∨ v44 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v32 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v30 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n8
    rcases c131 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  exact ⟨c2227, c2235, c2241, c2243, c2249, c2269, c2275, c2276, c2277⟩
