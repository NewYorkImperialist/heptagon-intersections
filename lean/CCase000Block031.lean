import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1550-1599 of the 2189-step refutation of ccase000: 115 core clauses and 82 earlier-derived ones give 20 more. -/
theorem CCase000_block031
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c19 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v10)
    (c52 : ¬v10 ∨ ¬v12)
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v12)
    (c57 : ¬v11 ∨ ¬v14)
    (c59 : ¬v14 ∨ ¬v12)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c65 : ¬v15 ∨ ¬v20)
    (c66 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v17)
    (c72 : ¬v17 ∨ ¬v18)
    (c73 : ¬v17 ∨ ¬v19)
    (c75 : ¬v21 ∨ ¬v17)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c99 : ¬v28 ∨ ¬v25)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c121 : ¬v32 ∨ ¬v35)
    (c123 : ¬v35 ∨ ¬v33)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c140 : ¬v42 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c151 : ¬v47 ∨ ¬v43)
    (c152 : ¬v48 ∨ ¬v43)
    (c153 : ¬v49 ∨ ¬v43)
    (c156 : ¬v44 ∨ ¬v47)
    (c160 : ¬v47 ∨ ¬v45)
    (c163 : ¬v46 ∨ ¬v47)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c194 : ¬v31 ∨ v37 ∨ v24 ∨ v38 ∨ v32 ∨ v39 ∨ v25 ∨ v30)
    (c207 : ¬v47 ∨ v36 ∨ v41 ∨ v4 ∨ v13 ∨ v40 ∨ v5 ∨ v1 ∨ v12 ∨ v11 ∨ v43 ∨ v46 ∨ v48 ∨ v49)
    (c233 : ¬v32 ∨ v39 ∨ v25 ∨ v38 ∨ v33 ∨ v26 ∨ v24 ∨ v31)
    (c242 : v29 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v20 ∨ v34 ∨ v22 ∨ v27)
    (c253 : ¬v31 ∨ v38 ∨ v46 ∨ v44 ∨ v45 ∨ v30 ∨ v37 ∨ v24 ∨ v33 ∨ v34 ∨ v32 ∨ v27 ∨ v25 ∨ v41)
    (c259 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ ¬v6 ∨ v14 ∨ v48 ∨ v12)
    (c300 : ¬v38 ∨ v37 ∨ v31 ∨ v39 ∨ v46 ∨ v45 ∨ v44 ∨ v32)
    (c329 : v43 ∨ ¬v23 ∨ v35 ∨ v30 ∨ v45 ∨ v44 ∨ v28 ∨ v24 ∨ v31 ∨ v21 ∨ v37 ∨ v22 ∨ v15 ∨ v16)
    (c335 : v43 ∨ ¬v1 ∨ v49 ∨ v44 ∨ v7 ∨ v8 ∨ v2 ∨ v14)
    (c391 : v36 ∨ v29 ∨ v38 ∨ v37 ∨ ¬v30 ∨ v31 ∨ v23 ∨ v24)
    (c431 : ¬v33 ∨ v25 ∨ v27 ∨ v26 ∨ v34 ∨ v32 ∨ v40 ∨ v41)
    (c459 : v3 ∨ ¬v4 ∨ v46 ∨ v45 ∨ v5 ∨ v10 ∨ v11 ∨ v12)
    (c475 : ¬v47 ∨ v5 ∨ v41 ∨ v39 ∨ v40 ∨ v46 ∨ v4 ∨ v48)
    (c517 : v5 ∨ v12 ∨ v48 ∨ v7 ∨ ¬v6 ∨ v27 ∨ v8 ∨ v26 ∨ v28 ∨ v1 ∨ v20 ∨ v43 ∨ v13 ∨ v49)
    (c549 : v43 ∨ v9 ∨ v44 ∨ v2 ∨ v7 ∨ v8 ∨ v14 ∨ ¬v1)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c665 : v10 ∨ v3 ∨ v9 ∨ v12 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c857 : ¬v32 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c895 : ¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46)
    (c928 : ¬v19 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c953 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1029 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c1030 : v4 ∨ v2 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1148 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1155 : ¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1313 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v17)
    (c1322 : v3 ∨ ¬v12 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1404 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1429 : ¬v12 ∨ v2 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1460 : ¬v28 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43)
    (c1531 : ¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43)
    (c1664 : v11 ∨ v4 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1674 : ¬v18 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v26)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1703 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1835 : ¬v35 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c1838 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1882 : ¬v29 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v42)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1889 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38)
    (c1907 : v37 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ ¬v28 ∨ v29 ∨ v35 ∨ v36 ∨ v44)
    (c1917 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1921 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1922 : v24 ∨ v1 ∨ v10 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1930 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c1932 : v30 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c1952 : v32 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v43 ∨ v44 ∨ v45)
    (c1957 : ¬v29 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v43 ∨ v44 ∨ v45)
    (c1959 : ¬v3 ∨ v1 ∨ v2 ∨ ¬v6 ∨ v9 ∨ v10 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c1975 : ¬v14 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v44 ∨ v49)
    (c2015 : ¬v6 ∨ ¬v2 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2028 : ¬v42 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2045 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v44)
    (c2047 : ¬v16 ∨ v2 ∨ v8 ∨ v9 ∨ v11 ∨ v15 ∨ v23 ∨ v24 ∨ v25 ∨ v43 ∨ v44 ∨ v45)
    (c2055 : ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c2056 : v47 ∨ v48 ∨ v49)
    (c2058 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46)
    (c2060 : v22 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2061 : ¬v22 ∨ v7 ∨ v14 ∨ v29 ∨ v42 ∨ v48 ∨ v49)
    (c2077 : ¬v13 ∨ ¬v6 ∨ v48 ∨ v49)
    (c2083 : ¬v10 ∨ ¬v2 ∨ ¬v6 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2090 : ¬v9 ∨ v4 ∨ v25 ∨ v26 ∨ v37 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2094 : ¬v24 ∨ v4 ∨ ¬v6 ∨ v37 ∨ v48 ∨ v49)
    (c2095 : v8 ∨ v9 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c2096 : v24 ∨ v2 ∨ v4 ∨ v9 ∨ v22 ∨ v23 ∨ ¬v36 ∨ v37 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2109 : ¬v39 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v24 ∨ v45 ∨ v46 ∨ v48)
    (c2111 : v49 ∨ v4 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v28 ∨ v37 ∨ v42 ∨ v48)
    (c2112 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45)
    (c2113 : v42 ∨ v3 ∨ v4 ∨ ¬v6 ∨ v10 ∨ v23 ∨ v28 ∨ v37 ∨ v48 ∨ v49)
    (c2114 : ¬v38 ∨ v4 ∨ v5 ∨ ¬v47 ∨ v48)
    (c2115 : v12 ∨ v1 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49)
    : (v2 ∨ v8 ∨ v9 ∨ v11 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v1 ∨ v2 ∨ ¬v5 ∨ ¬v6 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49) ∧ (v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46) ∧ (¬v17 ∨ v3 ∨ v9 ∨ v10 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46) ∧ (v31 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v38 ∨ v44 ∨ v45 ∨ v46) ∧ (v46 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45) ∧ (¬v31 ∨ v24 ∨ v25 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39) ∧ (¬v29 ∨ ¬v37 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v9 ∨ v2 ∨ v4 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (v10 ∨ v2 ∨ v4 ∨ v9 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v9 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46) ∧ (v4 ∨ ¬v6 ∨ v48 ∨ v49) ∧ (v11 ∨ ¬v6 ∨ v9 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v37 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v9 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v1 ∨ v2 ∨ ¬v6 ∨ v48 ∨ v49) ∧ (¬v42 ∨ v2 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v9 ∨ v48 ∨ v49) ∧ (¬v12 ∨ v1 ∨ v2 ∨ v7 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v29 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v28 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v9 ∨ v48 ∨ v49) := by
  have c2116 : v42 ∨ v4 ∨ ¬v6 ∨ v10 ∨ v23 ∨ v28 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v22 := by
      rcases c2111 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v3 := by
      rcases c2113 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v2 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u8 a
      · exact absurd n2 a
    have u11 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact absurd u9 a
    have u12 : ¬v7 := by
      rcases c26 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    have u13 : v12 := by
      rcases c2115 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v35 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u16 : v29 := by
      rcases c2061 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u14
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    rcases c109 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c2117 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v43 ∨ v44 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u5 : v39 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a u2
      · exact a
    have u6 : v38 := by
      rcases c391 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    rcases c137 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c2118 : v2 ∨ v8 ∨ v9 ∨ v11 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n10
      · exact a
      · exact absurd a n4
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u1 a
    rcases c2047 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2119 : v49 ∨ v4 ∨ ¬v6 ∨ v23 ∨ v28 ∨ v37 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v10 := by
      rcases c2116 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v22 := by
      rcases c2111 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u14
    have u16 : ¬v30 := by
      rcases c2117 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n0
    have u17 : v2 := by
      rcases c2118 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u17 a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u19 : v35 := by
      rcases c2083 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd u17 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
    have u20 : v29 := by
      rcases c2061 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u18
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c109 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c2120 : ¬v2 ∨ ¬v5 ∨ ¬v6 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u4 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c46 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2121 : v23 ∨ v4 ∨ ¬v6 ∨ v28 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v42 := by
      rcases c2119 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : v5 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n5
    have u17 : v35 := by
      rcases c2028 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v2 := by
      rcases c2120 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u20 : v10 := by
      rcases c1030 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u19
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u21 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v27 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u14
    have u23 : v22 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u19
      · exact absurd a u21
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n6
    rcases c86 with a|a
    · exact absurd u23 a
    · exact absurd u22 a
  have c2122 : ¬v1 ∨ v2 ∨ ¬v5 ∨ ¬v6 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c20 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    rcases c335 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n5
  have c2123 : ¬v29 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v38 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v39 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u2
      · exact a
    rcases c2058 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2124 : v26 ∨ v4 ∨ v11 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v37 ∨ v38 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u2 : v47 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact a
    have u3 : v39 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n7
      · exact a
    have u4 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
    have u10 : ¬v33 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : v31 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c253 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u5
  have c2125 : v9 ∨ v2 ∨ v4 ∨ ¬v6 ∨ ¬v10 ∨ v13 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n11
    have u5 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v29 := by
      rcases c2123 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    have u8 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n6
      · exact a
    have u9 : v7 := by
      rcases c549 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd u8 a
    have u10 : v32 := by
      rcases c2124 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u11 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n15
    have u14 : v3 := by
      rcases c1313 with a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u13
    rcases c16 with a|a|a|a
    · exact absurd u8 a
    · exact absurd u14 a
    · exact absurd n3 a
    · exact absurd u9 a
  have c2126 : v25 ∨ v2 ∨ v4 ∨ ¬v6 ∨ v9 ∨ ¬v10 ∨ v13 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v37 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : v38 := by
      rcases c2125 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
    have u5 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v32 := by
      rcases c1664 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a u5
      · exact absurd a n16
    rcases c857 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd u3 a
    · exact absurd a u5
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c2127 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
  have c2128 : v49 ∨ v2 ∨ v4 ∨ ¬v6 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v38 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n11 a
      · exact a
    have u3 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n12
      · exact absurd a n0
    have u4 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n12
      · exact absurd a n0
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v5 := by
      rcases c2114 with a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n2
      · exact a
      · exact absurd u4 a
      · exact absurd a n12
    have u10 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd n11 a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v9 := by
      rcases c2090 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u12 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u5
    have u13 : ¬v10 := by
      rcases c2126 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
    have u14 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v1 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
    rcases c2122 with a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a n1
    · exact absurd u9 a
    · exact absurd n3 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n0
  have c2129 : ¬v17 ∨ v3 ∨ v9 ∨ v10 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    rcases c665 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2130 : v31 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c1322 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v11 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u3 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u4 : ¬v19 := by
      rcases c928 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c2129 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2131 : v4 ∨ v2 ∨ ¬v6 ∨ v9 ∨ v28 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v23 := by
      rcases c2121 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v10 := by
      rcases c2126 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u14 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u15 : ¬v29 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v38 := by
      rcases c2128 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u15
      · exact a
      · exact absurd a n6
    have u17 : v31 := by
      rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : v39 := by
      rcases c194 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u18
      · exact a
      · exact absurd a u10
      · exact absurd a u20
    have u23 : v41 := by
      rcases c253 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u10
      · exact a
    rcases c142 with a|a
    · exact absurd u23 a
    · exact absurd u22 a
  have c2132 : v2 ∨ v4 ∨ ¬v6 ∨ v28 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v23 := by
      rcases c2121 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : v9 := by
      rcases c2131 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : v39 := by
      rcases c2090 with a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u20 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n3
    have u21 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u22 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u19 a
    have u26 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u19 a
    have u27 : v17 := by
      rcases c2109 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    have u28 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u5
    have u29 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u25
    have u30 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u27 a
    have u32 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u29
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u25
    have u33 : v31 := by
      rcases c329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u4 a
      · exact absurd a u32
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u31
      · exact absurd a u30
    have u34 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u33 a
      · exact a
    have u35 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u33 a
      · exact a
    rcases c253 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u33 a
    · exact absurd a u26
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u28
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u35
    · exact absurd a u29
    · exact absurd a u34
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u22
  have c2133 : v46 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u2 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : v9 := by
      rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u11 : v39 := by
      rcases c2090 with a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u12 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n0
    have u17 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u15
    have u18 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u15
    have u19 : v43 := by
      rcases c329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
    have u20 : ¬v49 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v48 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v47 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u19 a
    rcases c2056 with a|a|a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u20
  have c2134 : ¬v31 ∨ v24 ∨ v25 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v39 := by
      rcases c194 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a u3
    have u6 : v23 := by
      rcases c1889 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u6 a
    rcases c253 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u7
  have c2135 : v28 ∨ v4 ∨ ¬v6 ∨ v37 ∨ v38 ∨ ¬v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v23 := by
      rcases c2121 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v2 := by
      rcases c2132 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u3
    have u17 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    have u18 : ¬v10 := by
      rcases c2083 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
    have u19 : v3 := by
      rcases c2133 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u12
    have u20 : ¬v7 := by
      rcases c26 with a|a|a|a
      · exact absurd u6 a
      · exact absurd u19 a
      · exact a
      · exact absurd n2 a
    have u21 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n2 a
      · exact absurd u6 a
    have u22 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u19 a
      · exact absurd n2 a
    have u23 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n7
    rcases c2115 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd n2 a
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
  have c2136 : v9 ∨ ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v7 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n1 a
    have u3 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u4 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v12 := by
      rcases c2115 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v29 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u12 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    rcases c1251 with a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n10
  have c2137 : v38 ∨ v4 ∨ ¬v6 ∨ v28 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v2 := by
      rcases c2132 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v23 := by
      rcases c2121 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u15 : ¬v39 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v9 := by
      rcases c2090 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u17 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u3 a
      · exact a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u18 : ¬v3 := by
      rcases c2136 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u3 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v1 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u3 a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u20 : v10 := by
      rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u16
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v12 := by
      rcases c1322 with a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u6
    have u22 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd n2 a
      · exact absurd u3 a
    have u23 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u20 a
      · exact a
    rcases c259 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a u23
    · exact absurd a n5
    · exact absurd a u21
  have c2138 : v28 ∨ v4 ∨ ¬v6 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v2 := by
      rcases c2132 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v38 := by
      rcases c2137 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v5 := by
      rcases c2114 with a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
    have u12 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u13 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd u7 a
      · exact absurd u11 a
      · exact a
      · exact absurd n2 a
    have u14 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd u7 a
      · exact absurd u11 a
      · exact a
      · exact absurd n2 a
    have u15 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n2 a
      · exact absurd u7 a
    have u16 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u12
    have u17 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u7 a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u17 a
      · exact a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u20
    · exact absurd a u1
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a n5
  have c2139 : ¬v38 ∨ v4 ∨ ¬v6 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v28 := by
      rcases c2138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : v5 := by
      rcases c2114 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
    have u17 : ¬v29 := by
      rcases c1882 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
    have u18 : ¬v9 := by
      rcases c2090 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u19 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u20 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u19
    have u21 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u12
    have u22 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v1 := by
      rcases c1922 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u23
      · exact absurd u21 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n4
    have u25 : v2 := by
      rcases c1907 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd u5 a
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u14
    rcases c8 with a|a|a|a
    · exact absurd u24 a
    · exact absurd u16 a
    · exact absurd n2 a
    · exact absurd u25 a
  have c2140 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    rcases c233 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n4
  have c2141 : v24 ∨ ¬v2 ∨ v4 ∨ ¬v6 ∨ v37 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v38 := by
      rcases c2139 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v28 := by
      rcases c2138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u1
    have u13 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n5
    have u14 : ¬v9 := by
      rcases c2090 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u8
    have u17 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v3 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u16 a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u9
    have u20 : v5 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a u17
    rcases c24 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u20 a
    · exact absurd u19 a
    · exact absurd n3 a
  have c2142 : ¬v10 ∨ ¬v2 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v16 := by
      rcases c2095 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u13 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n3
      · exact a
    have u15 : v5 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u13
      · exact a
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u3
    rcases c8 with a|a|a|a
    · exact absurd u14 a
    · exact absurd u15 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c2143 : v37 ∨ ¬v2 ∨ v4 ∨ ¬v6 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v28 := by
      rcases c2138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v38 := by
      rcases c2139 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : v39 := by
      rcases c2141 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v29 := by
      rcases c1882 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u16
    have u18 : ¬v10 := by
      rcases c2142 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u9
    have u20 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n3 a
      · exact absurd n1 a
    have u21 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u19 a
      · exact absurd n3 a
    have u22 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u11
    have u23 : ¬v11 := by
      rcases c1922 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u18
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    rcases c207 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u14
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a n6
  have c2144 : v29 ∨ v1 ∨ v7 ∨ ¬v9 ∨ ¬v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v22 := by
      rcases c2061 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v23 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u12 : v30 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u12 a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a n6
  have c2145 : ¬v2 ∨ v4 ∨ ¬v6 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v37 := by
      rcases c2143 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v5 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n4
    have u11 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u10 a
      · exact a
      · exact absurd n2 a
    have u12 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n2 a
      · exact absurd n0 a
    have u13 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u10 a
      · exact a
      · exact absurd n2 a
    have u14 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u15 : v29 := by
      rcases c2144 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd u14 a
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u15 a
    rcases c1917 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c2146 : ¬v29 ∨ ¬v37 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1917 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2147 : ¬v9 ∨ v2 ∨ v4 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
    have u5 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
    rcases c72 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c2148 : v10 ∨ v2 ∨ v4 ∨ v9 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
    have u3 : ¬v12 := by
      rcases c1322 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
    have u4 : v23 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u5 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u4 a
      · exact a
    rcases c2129 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2149 : ¬v37 ∨ v4 ∨ ¬v6 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v2 := by
      rcases c2145 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v5 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n4
    have u13 : ¬v29 := by
      rcases c2146 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u14 : v30 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v9 := by
      rcases c2147 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u21 : v10 := by
      rcases c2148 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v1 := by
      rcases c2122 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u12 a
      · exact absurd n2 a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u26 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u8
    have u27 : ¬v28 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u11
    have u28 : v22 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u25
      · exact a
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u11
    have u29 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u28 a
      · exact a
    rcases c1674 with a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u24
    · exact absurd a u29
    · exact absurd a n3
    · exact absurd a u30
    · exact absurd a u31
  have c2150 : v9 ∨ v2 ∨ v4 ∨ v24 ∨ ¬v28 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v35 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u9 : ¬v42 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v36 := by
      rcases c2096 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
    have u11 : v29 := by
      rcases c1907 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n4 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
    rcases c1882 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd a u9
  have c2151 : v24 ∨ v4 ∨ ¬v6 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v38 := by
      rcases c2139 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v37 := by
      rcases c2149 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v2 := by
      rcases c2145 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v28 := by
      rcases c2138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v9 := by
      rcases c2150 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c2112 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u4
  have c2152 : ¬v9 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1376 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2153 : ¬v11 ∨ ¬v5 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    have u5 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
    have u6 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact a
    rcases c20 with a|a|a|a
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd u4 a
    · exact absurd n2 a
  have c2154 : v4 ∨ ¬v6 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v38 := by
      rcases c2139 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v24 := by
      rcases c2151 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : v37 := by
      rcases c2094 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v29 := by
      rcases c2146 with a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u21 : v30 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u20
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u22 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u18
    have u23 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u2
    have u25 : v5 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
    have u26 : ¬v11 := by
      rcases c2153 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a n3
    have u27 : v10 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u2
    have u28 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a n3
    have u29 : v1 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u5
    rcases c20 with a|a|a|a
    · exact absurd u29 a
    · exact absurd u25 a
    · exact absurd u28 a
    · exact absurd n1 a
  have c2155 : v9 ∨ ¬v5 ∨ ¬v6 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v4 := by
      rcases c2154 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v2 := by
      rcases c27 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact absurd n1 a
    have u5 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u1 a
    have u6 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v8 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n10
    have u10 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n10
  have c2156 : v7 ∨ v5 ∨ ¬v6 ∨ v11 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v4 := by
      rcases c2154 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v14 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd n2 a
      · exact a
      · exact absurd a n9
      · exact absurd a u1
    have u6 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v1 := by
      rcases c517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n10
    have u11 : ¬v2 := by
      rcases c6 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n2 a
      · exact absurd u2 a
    rcases c1975 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd u10 a
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n10
  have c2157 : v11 ∨ ¬v6 ∨ v9 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u2
    have u5 : v4 := by
      rcases c2154 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v5 := by
      rcases c2155 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v7 := by
      rcases c2156 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v1 := by
      rcases c19 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u11 a
      · exact absurd n1 a
    have u13 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u11 a
      · exact absurd n1 a
    have u14 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u9
    have u15 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u9
    rcases c459 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd u5 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u15
  have c2158 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v9 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c6 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c22 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u2 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c2159 : ¬v1 ∨ v2 ∨ ¬v6 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v4 := by
      rcases c2154 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v7 := by
      rcases c19 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v5 := by
      rcases c17 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v12 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n4
    have u9 : ¬v14 := by
      rcases c1975 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
    rcases c259 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u8
  have c2160 : ¬v14 ∨ v2 ∨ ¬v6 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v1 := by
      rcases c2159 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v35 := by
      rcases c2028 with a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u11
    have u18 : v3 := by
      rcases c1952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u19 : v23 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    rcases c1959 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd u19 a
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n5
  have c2161 : ¬v42 ∨ v2 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v9 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v1 := by
      rcases c2159 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v35 := by
      rcases c2028 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u9
    have u15 : ¬v14 := by
      rcases c2160 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v12 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd n3 a
      · exact absurd a u15
      · exact absurd a n6
      · exact a
    have u17 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v3 := by
      rcases c1322 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u8
    have u19 : v23 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n1
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u9
    rcases c1959 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a u17
    · exact absurd u19 a
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n7
  have c2162 : v28 ∨ v1 ∨ v7 ∨ v9 ∨ ¬v12 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v35 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u8 : ¬v22 := by
      rcases c2061 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c1441 with a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u6
  have c2163 : ¬v12 ∨ v1 ∨ v2 ∨ v7 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v28 := by
      rcases c2162 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v29 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u11
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    have u14 : ¬v16 := by
      rcases c2095 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u15 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v37 := by
      rcases c2146 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u12
  have c2164 : ¬v29 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c2146 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c2045 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n9
  have c2165 : ¬v28 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v9 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v4 := by
      rcases c2154 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v2 := by
      rcases c2158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v42 := by
      rcases c2161 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v1 := by
      rcases c2159 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v35 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u16 : ¬v12 := by
      rcases c2163 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u17 : v14 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a u16
    have u18 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v29 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u21 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u22 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u20
      · exact a
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u14
    have u23 : v30 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u24 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u23 a
    rcases c242 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd n0 a
    · exact absurd a u15
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u1
    · exact absurd a u5
  exact ⟨c2118, c2122, c2127, c2129, c2130, c2133, c2134, c2140, c2146, c2147, c2148, c2152, c2154, c2157, c2158, c2159, c2161, c2163, c2164, c2165⟩
