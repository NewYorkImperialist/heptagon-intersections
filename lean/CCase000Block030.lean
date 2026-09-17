import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1500-1549 of the 2189-step refutation of ccase000: 116 core clauses and 83 earlier-derived ones give 13 more. -/
theorem CCase000_block030
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c19 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c58 : ¬v13 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v18)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c71 : ¬v21 ∨ ¬v16)
    (c75 : ¬v21 ∨ ¬v17)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c98 : ¬v27 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
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
    (c124 : ¬v34 ∨ ¬v35)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c147 : v36 ∨ v42 ∨ v38 ∨ v41 ∨ v40 ∨ v37 ∨ v39)
    (c151 : ¬v47 ∨ ¬v43)
    (c156 : ¬v44 ∨ ¬v47)
    (c160 : ¬v47 ∨ ¬v45)
    (c163 : ¬v46 ∨ ¬v47)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c188 : v18 ∨ v11 ∨ v17 ∨ v2 ∨ v4 ∨ v3 ∨ v9 ∨ ¬v10)
    (c194 : ¬v31 ∨ v37 ∨ v24 ∨ v38 ∨ v32 ∨ v39 ∨ v25 ∨ v30)
    (c207 : ¬v47 ∨ v36 ∨ v41 ∨ v4 ∨ v13 ∨ v40 ∨ v5 ∨ v1 ∨ v12 ∨ v11 ∨ v43 ∨ v46 ∨ v48 ∨ v49)
    (c233 : ¬v32 ∨ v39 ∨ v25 ∨ v38 ∨ v33 ∨ v26 ∨ v24 ∨ v31)
    (c259 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ ¬v6 ∨ v14 ∨ v48 ∨ v12)
    (c292 : v42 ∨ v48 ∨ v3 ∨ v4 ∨ v40 ∨ v7 ∨ v13 ∨ v5 ∨ v12 ∨ v41 ∨ ¬v6 ∨ v45 ∨ v10 ∨ v49)
    (c300 : ¬v38 ∨ v37 ∨ v31 ∨ v39 ∨ v46 ∨ v45 ∨ v44 ∨ v32)
    (c321 : ¬v31 ∨ v4 ∨ v23 ∨ v24 ∨ v2 ∨ v38 ∨ v39 ∨ v3 ∨ v22 ∨ v32 ∨ v36 ∨ v29 ∨ v30 ∨ v45)
    (c335 : v43 ∨ ¬v1 ∨ v49 ∨ v44 ∨ v7 ∨ v8 ∨ v2 ∨ v14)
    (c387 : v36 ∨ v22 ∨ v25 ∨ v38 ∨ v17 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v23 ∨ v30 ∨ v9 ∨ v37 ∨ v11)
    (c435 : ¬v31 ∨ v30 ∨ v38 ∨ v39 ∨ v37 ∨ v32 ∨ v24 ∨ v23)
    (c438 : v43 ∨ v22 ∨ v45 ∨ v15 ∨ ¬v16 ∨ v10 ∨ v9 ∨ v44 ∨ v17 ∨ v14 ∨ v23 ∨ v28 ∨ v21 ∨ v2)
    (c455 : v36 ∨ ¬v33 ∨ v40 ∨ v34 ∨ v20 ∨ v26 ∨ v41 ∨ v22 ∨ v35 ∨ v25 ∨ v19 ∨ v29 ∨ v32 ∨ v18)
    (c475 : ¬v47 ∨ v5 ∨ v41 ∨ v39 ∨ v40 ∨ v46 ∨ v4 ∨ v48)
    (c479 : ¬v32 ∨ v39 ∨ v25 ∨ v38 ∨ v37 ∨ v31 ∨ v30 ∨ v33 ∨ v18 ∨ v23 ∨ v26 ∨ v11 ∨ v12 ∨ v10)
    (c506 : v36 ∨ v29 ∨ v44 ∨ ¬v22 ∨ v34 ∨ v15 ∨ v23 ∨ v20 ∨ v28 ∨ v30 ∨ v21 ∨ v43 ∨ v27 ∨ v49)
    (c513 : ¬v39 ∨ v32 ∨ v4 ∨ v45 ∨ v46 ∨ v40 ∨ v41 ∨ v10 ∨ v33 ∨ v38 ∨ v11 ∨ v12 ∨ v34 ∨ v48)
    (c517 : v5 ∨ v12 ∨ v48 ∨ v7 ∨ ¬v6 ∨ v27 ∨ v8 ∨ v26 ∨ v28 ∨ v1 ∨ v20 ∨ v43 ∨ v13 ∨ v49)
    (c533 : v36 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v22 ∨ v23 ∨ v29 ∨ v38)
    (c557 : ¬v47 ∨ v26 ∨ v38 ∨ v5 ∨ v3 ∨ v25 ∨ v4 ∨ v33 ∨ v27 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c600 : v15 ∨ ¬v2 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c628 : ¬v16 ∨ v8 ∨ v9 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c652 : v15 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c692 : v44 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c857 : ¬v32 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c895 : ¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c953 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44)
    (c957 : v24 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v14 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c982 : ¬v17 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c1012 : v23 ∨ v17 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1029 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c1030 : v4 ∨ v2 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1034 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1101 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1148 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1204 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1311 : ¬v17 ∨ v7 ∨ v24 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1313 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v17)
    (c1322 : v3 ∨ ¬v12 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1338 : ¬v29 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42)
    (c1342 : ¬v29 ∨ ¬v38 ∨ v45 ∨ v46)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1460 : ¬v28 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43)
    (c1483 : v21 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1621 : ¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1708 : ¬v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1835 : ¬v35 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c1838 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1881 : v30 ∨ v22 ∨ v23 ∨ ¬v29 ∨ v36 ∨ v37 ∨ v42)
    (c1882 : ¬v29 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v42)
    (c1883 : v37 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v36 ∨ v42 ∨ v43)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1889 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38)
    (c1917 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1921 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1923 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37)
    (c1930 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c1932 : v30 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c1952 : v32 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v43 ∨ v44 ∨ v45)
    (c1957 : ¬v29 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v43 ∨ v44 ∨ v45)
    (c1959 : ¬v3 ∨ v1 ∨ v2 ∨ ¬v6 ∨ v9 ∨ v10 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2015 : ¬v6 ∨ ¬v2 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2045 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v44)
    (c2055 : ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c2056 : v47 ∨ v48 ∨ v49)
    (c2058 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46)
    (c2059 : ¬v29 ∨ ¬v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v48 ∨ v49)
    (c2060 : v22 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2062 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v42)
    (c2064 : v28 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v27 ∨ v29 ∨ v36 ∨ v42 ∨ v49)
    (c2065 : v42 ∨ ¬v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v24 ∨ v48 ∨ v49)
    : (¬v13 ∨ ¬v6 ∨ v48 ∨ v49) ∧ (¬v10 ∨ ¬v2 ∨ ¬v6 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v9 ∨ v4 ∨ v25 ∨ v26 ∨ v37 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (v10 ∨ v2 ∨ v9 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v24 ∨ v4 ∨ ¬v6 ∨ v37 ∨ v48 ∨ v49) ∧ (v8 ∨ v9 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24) ∧ (v24 ∨ v2 ∨ v4 ∨ v9 ∨ v22 ∨ v23 ∨ ¬v36 ∨ v37 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (¬v39 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v24 ∨ v45 ∨ v46 ∨ v48) ∧ (v49 ∨ v4 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v28 ∨ v37 ∨ v42 ∨ v48) ∧ (v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45) ∧ (v42 ∨ v3 ∨ v4 ∨ ¬v6 ∨ v10 ∨ v23 ∨ v28 ∨ v37 ∨ v48 ∨ v49) ∧ (¬v38 ∨ v4 ∨ v5 ∨ ¬v47 ∨ v48) ∧ (v12 ∨ v1 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49) := by
  have c2066 : v24 ∨ ¬v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
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
    have u6 : v42 := by
      rcases c2065 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v3 := by
      rcases c1952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u15 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u14 a
      · exact absurd n2 a
    have u16 : ¬v4 := by
      rcases c22 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd n2 a
      · exact a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u16
    · exact absurd a n9
  have c2067 : ¬v2 ∨ ¬v6 ∨ ¬v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
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
    have u12 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u13 : v24 := by
      rcases c2066 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v29 := by
      rcases c2059 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u20 : v42 := by
      rcases c2064 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact a
      · exact absurd a n4
    have u21 : v1 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u22 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n3
      · exact absurd a n4
    have u24 : ¬v4 := by
      rcases c6 with a|a|a|a
      · exact absurd u21 a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c1376 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u24
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u8
  have c2068 : ¬v42 ∨ v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u11
    have u14 : v4 := by
      rcases c1030 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v23 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u11
    have u17 : v3 := by
      rcases c1952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u18 : v1 := by
      rcases c1959 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    rcases c12 with a|a|a|a
    · exact absurd u18 a
    · exact absurd u17 a
    · exact absurd n2 a
    · exact absurd u14 a
  have c2069 : ¬v4 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v1 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v7 := by
      rcases c2064 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n12
    rcases c19 with a|a|a|a
    · exact absurd u5 a
    · exact absurd n0 a
    · exact absurd u6 a
    · exact absurd n1 a
  have c2070 : v24 ∨ v2 ∨ ¬v4 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v29 ∨ v38 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u2 : ¬v23 := by
      rcases c2069 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u3 : v30 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n14
    have u8 : ¬v1 := by
      rcases c12 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u9 : ¬v7 := by
      rcases c33 with a|a|a|a
      · exact absurd u7 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v28 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n12
    have u11 : v22 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u12 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a u6
      · exact a
      · exact absurd a n15
    rcases c1708 with a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n15
  have c2071 : v38 ∨ v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v24 ∨ v29 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v42 := by
      rcases c2068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
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
    have u7 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
    have u8 : ¬v4 := by
      rcases c2070 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n12
    have u9 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : v31 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a u4
    have u11 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v23 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v37 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u13 a
    rcases c194 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u14
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a n10
    · exact absurd a u15
    · exact absurd a u12
  have c2072 : v38 ∨ v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v24 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v42 := by
      rcases c2068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
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
    have u7 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u8 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
    have u12 : v23 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : v1 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u19 : v7 := by
      rcases c2064 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n11
    have u20 : ¬v4 := by
      rcases c19 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
      · exact absurd n2 a
    have u21 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
      · exact absurd n2 a
    have u22 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd n2 a
      · exact absurd u19 a
    have u23 : v31 := by
      rcases c957 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u4
    have u24 : v33 := by
      rcases c557 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u20
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    rcases c116 with a|a
    · exact absurd u23 a
    · exact absurd u24 a
  have c2073 : v29 ∨ v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v42 := by
      rcases c2068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
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
    have u7 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u8 : v38 := by
      rcases c2072 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u12 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u9
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u11
    have u13 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v23 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : v1 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u20 : v4 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u3
    have u21 : v7 := by
      rcases c2064 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n11
    rcases c19 with a|a|a|a
    · exact absurd u19 a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd n2 a
  have c2074 : v24 ∨ v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v42 := by
      rcases c2068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
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
    have u7 : v29 := by
      rcases c2073 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v3 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : v4 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u14 : v23 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u5
    have u15 : ¬v7 := by
      rcases c33 with a|a|a|a
      · exact absurd u11 a
      · exact absurd u13 a
      · exact a
      · exact absurd n2 a
    have u16 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a u17
    have u20 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u10
      · exact a
      · exact absurd a n10
    rcases c967 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u17
  have c2075 : ¬v29 ∨ v2 ∨ ¬v13 ∨ ¬v24 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : v37 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd a n5
    rcases c1917 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2076 : ¬v37 ∨ v4 ∨ v5 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u4 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n3 a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n4
  have c2077 : ¬v13 ∨ ¬v6 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
    have u12 : ¬v2 := by
      rcases c2067 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v42 := by
      rcases c2068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u14 : v24 := by
      rcases c2074 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u14 a
    have u21 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u19
    have u22 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u17
    have u23 : ¬v16 := by
      rcases c652 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a u15
      · exact absurd a u20
    have u24 : ¬v29 := by
      rcases c2075 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u25 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
    have u26 : v1 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u11
    have u27 : v7 := by
      rcases c2064 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a n3
    have u28 : ¬v4 := by
      rcases c19 with a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u27 a
      · exact absurd n1 a
    have u29 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u27 a
      · exact absurd n1 a
    have u30 : ¬v37 := by
      rcases c2076 with a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd u7 a
      · exact absurd a n2
    have u31 : v30 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u30
      · exact a
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u20
    have u32 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u31 a
    have u33 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u31 a
      · exact a
    have u35 : v39 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u28
      · exact absurd a u4
      · exact absurd a u34
      · exact absurd a u33
      · exact absurd a u32
      · exact a
      · exact absurd a u8
    have u36 : v38 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd u31 a
      · exact absurd a u34
      · exact absurd a u30
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u24
      · exact a
    rcases c137 with a|a
    · exact absurd u36 a
    · exact absurd u35 a
  have c2078 : v4 ∨ v2 ∨ v3 ∨ v9 ∨ v11 ∨ v22 ∨ v23 ∨ v25 ∨ v30 ∨ v36 ∨ v37 ∨ v38 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n12
      · exact a
      · exact absurd a n6
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v10 := by
      rcases c387 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n4
    rcases c188 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd u5 a
  have c2079 : ¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    rcases c455 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n0 a
    · exact absurd a n11
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n12
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n1
  have c2080 : v19 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v6 ∨ v20 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n19
    have u10 : v39 := by
      rcases c147 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a n13
      · exact a
    have u11 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n15
      · exact absurd a u6
      · exact absurd a u5
    have u12 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n13
      · exact absurd a u7
    have u13 : ¬v11 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a u6
      · exact absurd a n18
      · exact absurd a n19
    have u14 : v9 := by
      rcases c2078 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u7
    have u15 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v1 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u8
    have u19 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n17
      · exact absurd a n19
    have u20 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
    have u21 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
      · exact absurd n4 a
    have u22 : ¬v33 := by
      rcases c2079 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n15
      · exact absurd a n16
    rcases c557 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n9
    · exact absurd a n14
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a n10
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n18
  have c2081 : ¬v6 ∨ v2 ∨ v4 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n16
    have u11 : v39 := by
      rcases c147 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n10
      · exact a
    have u12 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a u7
    have u14 : ¬v11 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
    have u15 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v3 := by
      rcases c2080 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a n3
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
    have u17 : v10 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n16
    have u19 : v1 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u8
    rcases c16 with a|a|a|a
    · exact absurd u19 a
    · exact absurd u16 a
    · exact absurd n0 a
    · exact absurd u18 a
  have c2082 : v40 ∨ ¬v2 ∨ ¬v3 ∨ v4 ∨ ¬v6 ∨ v28 ∨ v35 ∨ v36 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v7 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd n1 a
    have u3 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
    have u4 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
    have u7 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
    have u8 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    rcases c207 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n10
    · exact absurd a n11
  have c2083 : ¬v10 ∨ ¬v2 ∨ ¬v6 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    rcases c2015 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2084 : v9 ∨ ¬v2 ∨ v3 ∨ v4 ∨ ¬v6 ∨ v28 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n10
      · exact absurd a n11
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
    have u6 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : ¬v10 := by
      rcases c2083 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n11
    have u8 : v1 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
    have u10 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n4 a
      · exact absurd n1 a
    rcases c292 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n8
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n11
  have c2085 : ¬v6 ∨ v4 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v37 ∨ ¬v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n10 a
    have u5 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n10 a
    have u6 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u4
    have u9 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v2 := by
      rcases c2081 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
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
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v3 := by
      rcases c2082 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u10 a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v9 := by
      rcases c2084 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v1 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u9
    have u16 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n12
    rcases c10 with a|a|a|a
    · exact absurd u15 a
    · exact absurd u10 a
    · exact absurd u16 a
    · exact absurd n0 a
  have c2086 : ¬v2 ∨ ¬v6 ∨ ¬v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v1 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u5 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    rcases c10 with a|a|a|a
    · exact absurd u4 a
    · exact absurd n0 a
    · exact absurd u5 a
    · exact absurd n1 a
  have c2087 : v39 ∨ ¬v2 ∨ v4 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
    have u2 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n12
    have u3 : ¬v10 := by
      rcases c2083 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u4 : ¬v9 := by
      rcases c2086 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
    have u5 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n17
    have u7 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n17
    have u8 : v32 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a n16
    have u9 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v38 := by
      rcases c857 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c479 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u13
    · exact absurd a n11
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u3
  have c2088 : v29 ∨ ¬v2 ∨ v4 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v39 := by
      rcases c2085 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v42 := by
      rcases c2087 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n12
    have u8 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v5 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n11
    have u11 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n3 a
      · exact absurd n1 a
    have u13 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c1921 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n12
  have c2089 : ¬v42 ∨ v2 ∨ v4 ∨ ¬v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v9 := by
      rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u13 : v10 := by
      rcases c1030 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    rcases c46 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c2090 : ¬v9 ∨ v4 ∨ v25 ∨ v26 ∨ v37 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u4 : v32 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n8
    have u5 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v38 := by
      rcases c857 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v24 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a u7
    have u11 : v23 := by
      rcases c479 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    rcases c88 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c2091 : v10 ∨ v2 ∨ v9 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v8 := by
      rcases c652 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u4 a
      · exact a
    rcases c438 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
  have c2092 : ¬v16 ∨ v2 ∨ v4 ∨ ¬v6 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v10 := by
      rcases c2091 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u4 : v3 := by
      rcases c1313 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u1
    have u5 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
    have u6 : v1 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n11
    rcases c16 with a|a|a|a
    · exact absurd u6 a
    · exact absurd u4 a
    · exact absurd n3 a
    · exact absurd u5 a
  have c2093 : v29 ∨ v4 ∨ ¬v6 ∨ ¬v24 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u13 : ¬v39 := by
      rcases c2085 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v9 := by
      rcases c2090 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v2 := by
      rcases c2088 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v42 := by
      rcases c2089 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u16
    have u18 : ¬v16 := by
      rcases c2092 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u19 : v30 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u7
    have u20 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v38 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u20
    rcases c533 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u19 a
    · exact absurd a u21
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u22
  have c2094 : ¬v24 ∨ v4 ∨ ¬v6 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v29 := by
      rcases c2093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u11 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u9 a
      · exact a
    have u21 : ¬v38 := by
      rcases c1342 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u22 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
    have u23 : v36 := by
      rcases c1881 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd u9 a
      · exact a
      · exact absurd a n3
      · exact absurd a u22
    have u24 : v17 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd n0 a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
    have u25 : ¬v39 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u11
    have u26 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u24 a
    have u30 : ¬v9 := by
      rcases c2090 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u31 : v5 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n4
    have u32 : v2 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u30
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u13
    rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd u32 a
    · exact absurd u31 a
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u29
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a n5
  have c2095 : v8 ∨ v9 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd n2 a
      · exact a
    rcases c628 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2096 : v24 ∨ v2 ∨ v4 ∨ v9 ∨ v22 ∨ v23 ∨ ¬v36 ∨ v37 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v29 := by
      rcases c1838 with a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u2 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v10 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
    have u4 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n9
      · exact a
      · exact absurd a n5
    have u5 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u3 a
    rcases c2095 with a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd u4 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
  have c2097 : v9 ∨ v2 ∨ v4 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v35 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u2 : ¬v36 := by
      rcases c2096 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
    have u5 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n10
      · exact a
      · exact absurd a n4
    have u6 : v10 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
    have u7 : v8 := by
      rcases c2095 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c41 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c2098 : ¬v6 ∨ v4 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u4 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
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
    have u9 : ¬v30 := by
      rcases c1204 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v31 := by
      rcases c435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n4
    have u11 : v2 := by
      rcases c2097 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n14
    have u12 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u11 a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v10 := by
      rcases c2083 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n14
    have u14 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n14
    have u15 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n14
    have u16 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u6
    have u17 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n0 a
      · exact absurd u11 a
    have u18 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u16 a
      · exact absurd n0 a
    have u19 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u8
    have u20 : v14 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd n0 a
      · exact a
      · exact absurd a n13
      · exact absurd a u15
    rcases c45 with a|a
    · exact absurd u19 a
    · exact absurd u20 a
  have c2099 : ¬v6 ∨ v4 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u2 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
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
    have u9 : v2 := by
      rcases c2097 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u10 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u9 a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v10 := by
      rcases c2083 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u12 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n13
    have u13 : ¬v17 := by
      rcases c1311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n13
    have u14 : v32 := by
      rcases c2098 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a u6
    have u17 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n0 a
      · exact absurd u9 a
    have u18 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u16 a
      · exact absurd n0 a
    have u19 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u8
    have u20 : v14 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd n0 a
      · exact a
      · exact absurd a n12
      · exact absurd a u12
    rcases c45 with a|a
    · exact absurd u19 a
    · exact absurd u20 a
  have c2100 : ¬v2 ∨ v4 ∨ ¬v6 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v38 := by
      rcases c2099 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v5 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n12
    have u7 : v3 := by
      rcases c2084 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c24 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u6 a
    · exact absurd u7 a
    · exact absurd n2 a
  have c2101 : v4 ∨ ¬v2 ∨ ¬v6 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
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
    have u7 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u8 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
    have u9 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
    have u10 : v39 := by
      rcases c2100 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v3 := by
      rcases c2084 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact absurd n1 a
    have u15 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
      · exact absurd n2 a
    rcases c207 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n11
    · exact absurd a n12
  have c2102 : v32 ∨ ¬v2 ∨ ¬v3 ∨ v4 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v28 ∨ v29 ∨ v36 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
    have u3 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v14 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n4 a
      · exact a
      · exact absurd a n11
      · exact absurd a n6
    have u6 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u6
    have u13 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u12 a
      · exact a
    rcases c1500 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u7
  have c2103 : v4 ∨ ¬v6 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v37 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c1882 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v2 := by
      rcases c2097 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u9 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : v35 := by
      rcases c2101 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd n1 a
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
    have u11 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v27 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n8
    have u15 : v41 := by
      rcases c1290 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n6
      · exact a
      · exact absurd a n8
    have u16 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u4
    have u22 : ¬v3 := by
      rcases c2102 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u8 a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a n9
      · exact absurd a n10
    have u23 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u22
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u5
    have u24 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a u11
      · exact absurd a u19
    rcases c1675 with a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u23
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u17
  have c2104 : ¬v6 ∨ v4 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v37 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v36 := by
      rcases c2103 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v2 := by
      rcases c2096 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u13 : v29 := by
      rcases c1838 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u14 : v5 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n8
    have u15 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd u12 a
      · exact absurd u14 a
      · exact a
      · exact absurd n0 a
    have u19 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n9
    have u20 : v10 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n2
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u4
    rcases c2083 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd u12 a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a u17
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n9
  have c2105 : v10 ∨ ¬v2 ∨ v4 ∨ ¬v6 ∨ v23 ∨ v24 ∨ ¬v36 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v5 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n7
    have u11 : v29 := by
      rcases c1838 with a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
    have u12 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
      · exact absurd n3 a
    have u13 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u11 a
    rcases c809 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u7
  have c2106 : v14 ∨ ¬v2 ∨ v4 ∨ ¬v6 ∨ v8 ∨ v10 ∨ v12 ∨ v15 ∨ v22 ∨ v23 ∨ v37 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c2105 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n9
      · exact absurd a u3
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v1 := by
      rcases c1883 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a u4
    have u7 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    rcases c259 with a|a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n6
  have c2107 : v2 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v36 ∨ v38 ∨ v39 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v31 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n4
      · exact a
      · exact absurd a n11
      · exact absurd a n13
    have u2 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    rcases c321 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n13
  have c2108 : v39 ∨ v2 ∨ v4 ∨ v5 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v36 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n12 a
    have u2 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n12 a
    have u4 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u5 : v38 := by
      rcases c2107 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n0
      · exact absurd a u2
    have u6 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u5 a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd n12 a
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n13
  have c2109 : ¬v39 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v24 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v31 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a n8
    have u5 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    rcases c513 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n10
  have c2110 : ¬v6 ∨ v4 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v37 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c1882 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v9 := by
      rcases c2104 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : v1 := by
      rcases c1883 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u13
    have u15 : ¬v2 := by
      rcases c2106 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v7 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u14 a
      · exact absurd a n10
      · exact absurd a u12
      · exact a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u5
    have u17 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u18 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u16 a
      · exact absurd n0 a
    have u19 : ¬v17 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u20 : ¬v39 := by
      rcases c2109 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n9
    have u21 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    rcases c2108 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u21
    · exact absurd a n6
    · exact absurd u4 a
    · exact absurd a n9
  have c2111 : v49 ∨ v4 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v28 ∨ v37 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n8
      · exact absurd a n0
    have u2 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
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
    have u8 : v9 := by
      rcases c2104 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u9 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n5
    have u15 : ¬v15 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v2 := by
      rcases c2106 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u17 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v17 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u19 : v36 := by
      rcases c2110 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u20 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v29 := by
      rcases c1838 with a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
    have u22 : v31 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u18
      · exact a
      · exact absurd a u20
      · exact absurd a u5
    rcases c105 with a|a
    · exact absurd u22 a
    · exact absurd u21 a
  have c2112 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u2 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u3 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
    have u4 : ¬v12 := by
      rcases c1322 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
    have u5 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
    rcases c774 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2113 : v42 ∨ v3 ∨ v4 ∨ ¬v6 ∨ v10 ∨ v23 ∨ v28 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v22 := by
      rcases c2111 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u3 : ¬v24 := by
      rcases c2094 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v27 := by
      rcases c86 with a|a
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
    have u12 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n6
    have u13 : v38 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u9
    have u14 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v29 := by
      rcases c1342 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a u8
    have u19 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a n0
    have u20 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u21 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u22 : ¬v35 := by
      rcases c1101 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u23 : ¬v9 := by
      rcases c2090 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u24 : ¬v21 := by
      rcases c1708 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n9
    have u25 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n7
      · exact a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u20
    have u26 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : v15 := by
      rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a u19
      · exact a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n9
    have u28 : ¬v18 := by
      rcases c63 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u28
      · exact absurd a u20
      · exact absurd a u16
    have u31 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n7
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u29
      · exact absurd a n5
    have u32 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a n6
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a n9
    rcases c2015 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd u31 a
    · exact absurd u32 a
    · exact absurd a u23
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c2114 : ¬v38 ∨ v4 ∨ v5 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n3 a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n4
  have c2115 : v12 ∨ v1 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v14 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd n3 a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
    have u5 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u4 a
    rcases c517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n9
  exact ⟨c2077, c2083, c2090, c2091, c2094, c2095, c2096, c2109, c2111, c2112, c2113, c2114, c2115⟩
