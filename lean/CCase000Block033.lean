import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1650-1699 of the 2189-step refutation of ccase000: 122 core clauses and 88 earlier-derived ones give 19 more. -/
theorem CCase000_block033
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c44 : ¬v8 ∨ ¬v13)
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
    (c56 : ¬v11 ∨ ¬v13)
    (c58 : ¬v13 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c62 : ¬v15 ∨ ¬v17)
    (c65 : ¬v15 ∨ ¬v20)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v20)
    (c71 : ¬v21 ∨ ¬v16)
    (c73 : ¬v17 ∨ ¬v19)
    (c74 : ¬v17 ∨ ¬v20)
    (c76 : ¬v18 ∨ ¬v19)
    (c79 : ¬v19 ∨ ¬v20)
    (c81 : ¬v20 ∨ ¬v21)
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
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c103 : v22 ∨ v28 ∨ v23 ∨ v25 ∨ v27 ∨ v26 ∨ v24)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
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
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
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
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c151 : ¬v47 ∨ ¬v43)
    (c156 : ¬v44 ∨ ¬v47)
    (c160 : ¬v47 ∨ ¬v45)
    (c163 : ¬v46 ∨ ¬v47)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c220 : ¬v28 ∨ v35 ∨ v20 ∨ v27 ∨ v22 ∨ v34 ∨ v21 ∨ v15)
    (c244 : ¬v47 ∨ v6 ∨ v41 ∨ v46 ∨ v5 ∨ v4 ∨ v40 ∨ v48)
    (c266 : v3 ∨ ¬v2 ∨ v10 ∨ v9 ∨ v1 ∨ v44 ∨ v45 ∨ v8)
    (c288 : v12 ∨ ¬v19 ∨ v18 ∨ v20 ∨ v26 ∨ v11 ∨ v27 ∨ v13)
    (c291 : v43 ∨ v20 ∨ v3 ∨ v2 ∨ v6 ∨ v16 ∨ v13 ∨ v14 ∨ v10 ∨ v8 ∨ ¬v9 ∨ v15 ∨ v44 ∨ v45)
    (c300 : ¬v38 ∨ v37 ∨ v31 ∨ v39 ∨ v46 ∨ v45 ∨ v44 ∨ v32)
    (c302 : ¬v24 ∨ v38 ∨ v18 ∨ v46 ∨ v25 ∨ v17 ∨ v31 ∨ v33 ∨ v19 ∨ v23 ∨ v26 ∨ v44 ∨ v45 ∨ v30)
    (c329 : v43 ∨ ¬v23 ∨ v35 ∨ v30 ∨ v45 ∨ v44 ∨ v28 ∨ v24 ∨ v31 ∨ v21 ∨ v37 ∨ v22 ∨ v15 ∨ v16)
    (c342 : ¬v47 ∨ v6 ∨ v40 ∨ v4 ∨ v5 ∨ v46 ∨ v39 ∨ v48)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c386 : v2 ∨ v10 ∨ v17 ∨ v3 ∨ v15 ∨ v8 ∨ ¬v9 ∨ v16)
    (c391 : v36 ∨ v29 ∨ v38 ∨ v37 ∨ ¬v30 ∨ v31 ∨ v23 ∨ v24)
    (c407 : ¬v47 ∨ v46 ∨ v40 ∨ v41 ∨ v5 ∨ v39 ∨ v6 ∨ v48)
    (c408 : ¬v47 ∨ v36 ∨ v39 ∨ v1 ∨ v5 ∨ v6 ∨ v32 ∨ v34 ∨ v33 ∨ v40 ∨ v43 ∨ v46 ∨ v48 ∨ v49)
    (c411 : v41 ∨ ¬v33 ∨ v40 ∨ v19 ∨ v35 ∨ v26 ∨ v34 ∨ v11 ∨ v28 ∨ v32 ∨ v13 ∨ v25 ∨ v12 ∨ v42)
    (c414 : v11 ∨ ¬v33 ∨ v31 ∨ v26 ∨ v38 ∨ v40 ∨ v24 ∨ v27 ∨ v12 ∨ v13 ∨ v19 ∨ v39 ∨ v34 ∨ v32)
    (c531 : v40 ∨ ¬v33 ∨ v27 ∨ v39 ∨ v34 ∨ v32 ∨ v25 ∨ v26)
    (c533 : v36 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v22 ∨ v23 ∨ v29 ∨ v38)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c820 : v4 ∨ ¬v13 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c857 : ¬v32 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c982 : ¬v17 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c997 : ¬v35 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c1012 : v23 ∨ v17 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1029 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1101 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1120 : ¬v28 ∨ ¬v20 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1128 : ¬v12 ∨ ¬v2 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v31 ∨ v36 ∨ v38 ∨ v43 ∨ v45)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1190 : v6 ∨ v1 ∨ ¬v7 ∨ ¬v8 ∨ v43 ∨ v48 ∨ v49)
    (c1204 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1253 : v6 ∨ v11 ∨ v12 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c1260 : v27 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1311 : ¬v17 ∨ v7 ∨ v24 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1322 : v3 ∨ ¬v12 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1429 : ¬v12 ∨ v2 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1471 : ¬v9 ∨ v1 ∨ v2 ∨ v10 ∨ v15 ∨ v16 ∨ v17)
    (c1483 : v21 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1499 : v5 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1505 : v16 ∨ ¬v1 ∨ ¬v2 ∨ v9 ∨ ¬v10 ∨ v12 ∨ v13 ∨ v22 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    (c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1538 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v21 ∨ v27 ∨ v28)
    (c1621 : ¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1702 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1708 : ¬v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1763 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ ¬v40 ∨ v48)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1799 : v41 ∨ v1 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1806 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v26 ∨ v27)
    (c1838 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1889 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38)
    (c1920 : ¬v15 ∨ v1 ∨ v8 ∨ v10 ∨ v14 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c1921 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1930 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c1957 : ¬v29 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v43 ∨ v44 ∨ v45)
    (c2017 : ¬v7 ∨ ¬v2 ∨ ¬v5 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c2045 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v44)
    (c2056 : v47 ∨ v48 ∨ v49)
    (c2058 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46)
    (c2060 : v22 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2062 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v42)
    (c2064 : v28 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v27 ∨ v29 ∨ v36 ∨ v42 ∨ v49)
    (c2095 : v8 ∨ v9 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c2112 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45)
    (c2118 : v2 ∨ v8 ∨ v9 ∨ v11 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2127 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c2129 : ¬v17 ∨ v3 ∨ v9 ∨ v10 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46)
    (c2130 : v31 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2134 : ¬v31 ∨ v24 ∨ v25 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2140 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39)
    (c2146 : ¬v29 ∨ ¬v37 ∨ v43 ∨ v44 ∨ v45)
    (c2167 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v22 ∨ v28 ∨ v43 ∨ v44 ∨ v49)
    (c2190 : v3 ∨ ¬v6 ∨ v48 ∨ v49)
    (c2191 : ¬v6 ∨ v48 ∨ v49)
    (c2192 : v22 ∨ v1 ∨ ¬v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v49)
    (c2194 : ¬v1 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49)
    (c2200 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2204 : v1 ∨ v2 ∨ v9 ∨ v28 ∨ v48 ∨ v49)
    (c2205 : ¬v24 ∨ v2 ∨ v9 ∨ v10 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2206 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v23 ∨ v28 ∨ v29 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2213 : ¬v3 ∨ v2 ∨ v28 ∨ v48 ∨ v49)
    (c2214 : v37 ∨ v2 ∨ v9 ∨ ¬v27 ∨ v30 ∨ v44)
    (c2215 : v11 ∨ v2 ∨ v3 ∨ v6 ∨ v9 ∨ ¬v10 ∨ v12 ∨ v17 ∨ v18 ∨ v20 ∨ v44 ∨ v45 ∨ v46)
    : (¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v17 ∨ v2 ∨ v3 ∨ v6 ∨ ¬v9 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45) ∧ (v28 ∨ v2 ∨ v48 ∨ v49) ∧ (¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v38) ∧ (¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45) ∧ (v37 ∨ v2 ∨ ¬v28 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (v2 ∨ v48 ∨ v49) ∧ (¬v28 ∨ v29 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v38 ∨ v48 ∨ v49) ∧ (¬v9 ∨ v3 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v7 ∨ ¬v1 ∨ v39 ∨ v40 ∨ v48 ∨ v49) ∧ (v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (v34 ∨ v13 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v48 ∨ v49) ∧ (v27 ∨ v13 ∨ v28 ∨ v29 ∨ v34 ∨ ¬v35 ∨ v39 ∨ v48 ∨ v49) ∧ (¬v1 ∨ ¬v2 ∨ ¬v5 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46) ∧ (¬v2 ∨ ¬v5 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (v1 ∨ v5 ∨ v28 ∨ v29 ∨ v34 ∨ ¬v35 ∨ v39 ∨ v48 ∨ v49) ∧ (v42 ∨ ¬v1 ∨ v5 ∨ v28 ∨ v34 ∨ ¬v35 ∨ v36 ∨ v39 ∨ v48 ∨ v49) := by
  have c2216 : ¬v10 ∨ v2 ∨ v3 ∨ v6 ∨ v9 ∨ v12 ∨ v17 ∨ v18 ∨ v20 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2215 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2217 : v9 ∨ v2 ∨ v3 ∨ v6 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n10
      · exact a
      · exact absurd a n4
    have u3 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v10 := by
      rcases c2216 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v29 := by
      rcases c2206 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    rcases c1957 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2218 : v3 ∨ v2 ∨ v6 ∨ v9 ∨ v23 ∨ v28 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n4
    have u2 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v24 := by
      rcases c2217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v10 := by
      rcases c2205 with a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u9 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u7 a
    rcases c2215 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2219 : ¬v29 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v23 ∨ v28 ∨ v37 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd n4 a
      · exact a
    rcases c329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n2
  have c2220 : v48 ∨ v2 ∨ v9 ∨ ¬v10 ∨ v28 ∨ v30 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v3 := by
      rcases c2213 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
    have u7 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u8 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n0
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
    have u13 : ¬v27 := by
      rcases c2214 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a u11
    have u14 : v23 := by
      rcases c2218 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u15 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n4
    have u20 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n4
    have u21 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n4
    have u22 : ¬v40 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u13
      · exact a
      · exact absurd a n0
    have u23 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
    have u24 : v17 := by
      rcases c2215 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u3
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u25 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v29 := by
      rcases c2219 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd u14 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u27 : v31 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a u11
    have u28 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : ¬v42 := by
      rcases c1026 with a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u32 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u31
      · exact absurd a n0
      · exact absurd a n7
    rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a n4
    · exact absurd a u29
    · exact absurd a u22
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a n0
  have c2221 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
  have c2222 : v31 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v29 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n10
  have c2223 : v9 ∨ v2 ∨ v28 ∨ v30 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c2213 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
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
    have u8 : v1 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v27 := by
      rcases c2214 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u6
    have u10 : ¬v10 := by
      rcases c2220 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u11 : ¬v24 := by
      rcases c2205 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u12 : ¬v29 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u13 : v23 := by
      rcases c2206 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u14 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v31 := by
      rcases c2222 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u17 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v42 := by
      rcases c1026 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v38 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u23 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a n5
    have u27 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u23
      · exact a
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a n5
    have u28 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : v7 := by
      rcases c1221 with a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a n6
    have u31 : ¬v4 := by
      rcases c18 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u30 a
      · exact absurd u27 a
    rcases c969 with a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u31
    · exact absurd a u10
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a u25
    · exact absurd a u4
  have c2224 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v28 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u2 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u1 a
      · exact a
    rcases c1538 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n5
  have c2225 : v2 ∨ v24 ∨ v28 ∨ v30 ∨ ¬v31 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1026 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v3 := by
      rcases c2213 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v9 := by
      rcases c2223 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u8 a
    have u17 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u8 a
      · exact a
    have u18 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u8 a
    have u19 : v27 := by
      rcases c2224 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n6
    have u20 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u24 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u3
      · exact absurd a u23
      · exact a
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
    have u25 : ¬v17 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
    have u26 : ¬v15 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n2
    have u27 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u24 a
    rcases c386 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a u26
    · exact absurd a u13
    · exact absurd u6 a
    · exact absurd a u27
  have c2226 : ¬v17 ∨ v2 ∨ v3 ∨ v6 ∨ ¬v9 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n4 a
      · exact a
    rcases c291 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n7
  have c2227 : v24 ∨ v2 ∨ v28 ∨ v30 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c2213 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v9 := by
      rcases c2223 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v17 := by
      rcases c2226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v31 := by
      rcases c2225 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u7
  have c2228 : v31 ∨ ¬v16 ∨ v17 ∨ ¬v24 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v19 := by
      rcases c69 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : v32 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
    have u8 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u7 a
      · exact a
    rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n4
  have c2229 : v37 ∨ v2 ∨ v28 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v3 := by
      rcases c2213 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v9 := by
      rcases c2223 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v24 := by
      rcases c2227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u16 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u17 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u18 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n2
    have u19 : ¬v17 := by
      rcases c2226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u20 : ¬v15 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n2
    have u21 : v16 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd u2 a
      · exact a
    have u22 : v31 := by
      rcases c2228 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u19
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u23 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v42 := by
      rcases c1026 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u27 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a n4
      · exact absurd a n5
    rcases c2224 with a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u24
    · exact absurd a u27
    · exact absurd a n4
  have c2230 : ¬v37 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v29 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c2146 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2231 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2230 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2232 : v30 ∨ v2 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    rcases c2229 with a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
  have c2233 : ¬v24 ∨ v2 ∨ v38 ∨ v39 ∨ v40 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v30 := by
      rcases c2232 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u17 : v1 := by
      rcases c1799 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n5
    have u19 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n5
    have u20 : v7 := by
      rcases c1221 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd u17 a
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n6
    have u21 : v4 := by
      rcases c820 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
    rcases c18 with a|a|a|a
    · exact absurd u17 a
    · exact absurd u21 a
    · exact absurd u20 a
    · exact absurd u18 a
  have c2234 : ¬v10 ∨ v2 ∨ ¬v5 ∨ v28 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v30 := by
      rcases c2232 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v39 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u15
    have u20 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n6
    have u21 : v27 := by
      rcases c2224 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a n5
    have u22 : v1 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd u20 a
      · exact absurd a u1
      · exact a
      · exact absurd a n6
    have u23 : ¬v4 := by
      rcases c18 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u20 a
      · exact absurd n2 a
    have u24 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u21 a
    rcases c2127 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a u15
  have c2235 : ¬v37 ∨ v2 ∨ v28 ∨ v48 ∨ v49 := by
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
    have u4 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v3 := by
      rcases c2213 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v24 := by
      rcases c2233 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v30 := by
      rcases c2232 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v12 := by
      rcases c1322 with a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u14
    have u18 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n3
    have u19 : ¬v10 := by
      rcases c2234 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
    have u20 : v23 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u14
    have u21 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u14
    have u22 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v9 := by
      rcases c2129 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u5
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    rcases c2226 with a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd u25 a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u14
  have c2236 : ¬v38 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    rcases c2221 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2237 : v24 ∨ v3 ∨ v6 ∨ v28 ∨ ¬v30 ∨ v36 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v38 := by
      rcases c2236 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v23 := by
      rcases c391 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd n4 a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
    have u7 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n11
    have u10 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u9 a
    rcases c1790 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n9
  have c2238 : v28 ∨ v2 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v3 := by
      rcases c2213 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v37 := by
      rcases c2235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v30 := by
      rcases c2232 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u17 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
    have u18 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v38 := by
      rcases c2236 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u20 : v24 := by
      rcases c2237 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
    have u21 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u20 a
    rcases c533 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u5 a
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u10
    · exact absurd a u19
  have c2239 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1204 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c2240 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2118 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2241 : v37 ∨ v2 ∨ ¬v28 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n3
    have u8 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n3
    have u9 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
    have u10 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
    have u11 : ¬v10 := by
      rcases c2240 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n6
    have u13 : v4 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v9 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
    have u15 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v20 := by
      rcases c1806 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
    have u19 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
    have u20 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    have u21 : ¬v1 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u12 a
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u22 : v29 := by
      rcases c2192 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd u14 a
      · exact absurd a u2
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u23 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v15 := by
      rcases c1920 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u26 : v21 := by
      rcases c220 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u23
      · exact a
      · exact absurd a u25
    have u27 : ¬v16 := by
      rcases c71 with a|a
      · exact absurd u26 a
      · exact a
    rcases c1471 with a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u21
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u20
  have c2242 : v38 ∨ v2 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v28 := by
      rcases c2238 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : v37 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
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
    have u19 : v30 := by
      rcases c2231 with a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u20 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u15
      · exact a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a n2
    have u21 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u19 a
    have u26 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
    have u27 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u8
      · exact absurd a u15
    have u28 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u27 a
    have u32 : v4 := by
      rcases c820 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u10
    have u33 : v1 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u31
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
    have u34 : v3 := by
      rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    rcases c11 with a|a|a|a
    · exact absurd u33 a
    · exact absurd u20 a
    · exact absurd u34 a
    · exact absurd u32 a
  have c2243 : v2 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v28 := by
      rcases c2238 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v38 := by
      rcases c2242 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v31 := by
      rcases c2221 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u9
    have u20 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
    rcases c175 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a u12
  have c2244 : ¬v28 ∨ v29 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n9
    have u12 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n7
    have u14 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : v1 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u21 : v4 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u8
    rcases c5 with a|a|a|a
    · exact absurd u20 a
    · exact absurd u7 a
    · exact absurd u11 a
    · exact absurd u21 a
  have c2245 : ¬v13 ∨ v7 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a n11
    have u5 : ¬v27 := by
      rcases c616 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v22 := by
      rcases c2064 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u7 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u6 a
      · exact a
    rcases c1708 with a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd u6 a
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2246 : ¬v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n1
    have u15 : v31 := by
      rcases c2221 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v7 := by
      rcases c2017 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v28 := by
      rcases c2244 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
    have u23 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a n2
    have u24 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a n2
    have u25 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a n2
    have u26 : ¬v13 := by
      rcases c2245 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
    have u27 : v27 := by
      rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u26
      · exact a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n1
    have u28 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u21
    have u31 : v4 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u28
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u10
    have u32 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u30
      · exact absurd a n2
    have u33 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd u31 a
      · exact absurd u7 a
      · exact a
      · exact absurd u14 a
    have u34 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u14 a
      · exact absurd u31 a
    have u35 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u32 a
    have u36 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u32 a
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a u33
    · exact absurd u7 a
    · exact absurd a u25
    · exact absurd a u35
    · exact absurd a u34
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u36
  have c2247 : v28 ∨ ¬v3 ∨ v11 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v31 ∨ v32 ∨ v35 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v2 := by
      rcases c2238 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
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
    have u8 : v4 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u4
    have u9 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n15
    have u10 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd u8 a
    have u13 : ¬v12 := by
      rcases c1128 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
    have u14 : ¬v7 := by
      rcases c23 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u7
    have u16 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u7
    have u17 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v16 := by
      rcases c1499 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n3
      · exact a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u10
      · exact absurd a n15
    have u20 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n12
      · exact a
      · exact absurd a n15
    rcases c71 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c2248 : v49 ∨ ¬v3 ∨ ¬v7 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v2 := by
      rcases c2238 with a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v1 := by
      rcases c4 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd n2 a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
    rcases c2167 with a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n0
  have c2249 : v28 ∨ ¬v3 ∨ v10 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v7 := by
      rcases c2248 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n14
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n15
    have u9 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n15
    have u10 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v39 := by
      rcases c2247 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u9
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
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v33 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u15 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u14 a
    rcases c411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u14 a
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a n13
    · exact absurd a n8
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u7
  have c2250 : v48 ∨ v10 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v27 := by
      rcases c103 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n5
    have u2 : v2 := by
      rcases c2238 with a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n13
    have u3 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
    have u5 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
    have u6 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u5
    have u11 : ¬v30 := by
      rcases c1204 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u5
    have u12 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u7
    have u13 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n13
    have u14 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n13
    have u15 : ¬v7 := by
      rcases c2248 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd u12 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u16 : v32 := by
      rcases c2249 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u10
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n13
    have u17 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : v39 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u5
      · exact a
    have u19 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n13
    have u20 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a n10
      · exact absurd a n11
    have u21 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a u20
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a n10
    have u22 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u20
      · exact absurd a n13
    have u24 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a n3
      · exact a
    have u27 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u12 a
      · exact absurd u2 a
    have u28 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd u26 a
      · exact absurd u2 a
      · exact absurd u12 a
      · exact a
    rcases c244 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a u6
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u22
    · exact absurd a n0
  have c2251 : v29 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : v2 := by
      rcases c2238 with a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u6
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n12
    have u13 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v10 := by
      rcases c2250 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u15 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n12
    have u19 : v1 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u10
    have u20 : ¬v16 := by
      rcases c2095 with a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v5 := by
      rcases c2017 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd u3 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u18 a
      · exact absurd u3 a
    have u23 : v32 := by
      rcases c1505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u19 a
      · exact absurd u3 a
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n12
    have u24 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v39 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u6
      · exact a
    have u26 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a n12
    have u27 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u25 a
      · exact a
    rcases c244 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u26
    · exact absurd a u7
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u27
    · exact absurd a n11
  have c2252 : v48 ∨ v3 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v2 := by
      rcases c2238 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n12
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
    have u4 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
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
    have u9 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u4
    have u10 : ¬v30 := by
      rcases c1204 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u4
    have u11 : v10 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u6
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n12
    have u13 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n12
    have u14 : ¬v12 := by
      rcases c1322 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u6
    have u15 : ¬v27 := by
      rcases c2251 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u16 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a n12
    have u18 : v1 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u8
    have u19 : v41 := by
      rcases c2224 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n0
    have u20 : ¬v5 := by
      rcases c2017 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n12
    have u21 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u17 a
      · exact absurd u1 a
    have u22 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u19 a
    rcases c342 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a u22
    · exact absurd a n0
  have c2253 : v1 ∨ ¬v2 ∨ v3 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1921 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
  have c2254 : ¬v9 ∨ v3 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
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
    have u4 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    rcases c982 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2255 : ¬v7 ∨ ¬v1 ∨ v39 ∨ v40 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    rcases c342 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n4
  have c2256 : v24 ∨ v3 ∨ v13 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c2190 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v25 := by
      rcases c2252 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u3 : v2 := by
      rcases c2238 with a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v40 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n5
      · exact a
      · exact absurd a n11
    have u11 : v41 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n11
    have u12 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v1 := by
      rcases c2253 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n12
    have u14 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v33 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v7 := by
      rcases c2255 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a n12
    have u19 : ¬v17 := by
      rcases c1311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a n12
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a u7
  have c2257 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
    rcases c1224 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2258 : v34 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v2 := by
      rcases c2238 with a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u9 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v27 := by
      rcases c2251 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v3 := by
      rcases c2256 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v7 := by
      rcases c2248 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd u11 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    have u13 : v14 := by
      rcases c2257 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n11
    have u14 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n11
    have u15 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n11
    have u16 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n11
    have u17 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : v1 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
    have u20 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u11 a
      · exact absurd u1 a
    have u21 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd u19 a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact a
    have u22 : v41 := by
      rcases c1260 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v33 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u26 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u5
    have u29 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u29
      · exact absurd a u10
      · exact absurd a n5
    have u31 : v19 := by
      rcases c414 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u25 a
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n1
      · exact a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u26
    have u32 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u31 a
    rcases c288 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u31 a
    · exact absurd a u32
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a n1
  have c2259 : v34 ∨ v13 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v22 := by
      rcases c2258 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
      · exact absurd a n10
    have u7 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u3
    have u11 : ¬v40 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n9
    have u12 : v41 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n9
    have u13 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v33 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u13
    rcases c531 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd u14 a
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u8
  have c2260 : v42 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v35 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u6 : v22 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n0
    have u7 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u6 a
      · exact a
    rcases c1101 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
  have c2261 : v27 ∨ v13 ∨ v28 ∨ v29 ∨ v34 ∨ ¬v35 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v42 := by
      rcases c2260 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v26 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n7
    have u7 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a u5
    have u8 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u7 a
    rcases c607 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd u6 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
  have c2262 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v3 := by
      rcases c2 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u3 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    rcases c1097 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd u3 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n11
  have c2263 : ¬v2 ∨ ¬v5 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v1 := by
      rcases c2262 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
    have u3 : v8 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
    have u4 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n0 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact absurd n1 a
    rcases c2127 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n16
  have c2264 : v1 ∨ v5 ∨ v28 ∨ v29 ∨ v34 ∨ ¬v35 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u9 : v40 := by
      rcases c408 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1290 with a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
  have c2265 : v42 ∨ ¬v1 ∨ v5 ∨ v28 ∨ v34 ∨ ¬v35 ∨ v36 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v41 := by
      rcases c1290 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n0
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v7 := by
      rcases c2255 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    rcases c997 with a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n9
  exact ⟨c2221, c2226, c2231, c2238, c2239, c2240, c2241, c2243, c2244, c2246, c2254, c2255, c2257, c2259, c2261, c2262, c2263, c2264, c2265⟩
