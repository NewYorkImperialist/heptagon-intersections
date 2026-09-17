import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1300-1349 of the 2189-step refutation of ccase000: 121 core clauses and 82 earlier-derived ones give 21 more. -/
theorem CCase000_block026
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c25 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c37 : v2 ∨ v6 ∨ v3 ∨ v1 ∨ v7)
    (c38 : v4 ∨ v6 ∨ v2 ∨ v1 ∨ v7)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v10)
    (c53 : ¬v10 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v13)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c64 : ¬v15 ∨ ¬v19)
    (c66 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v20)
    (c71 : ¬v21 ∨ ¬v16)
    (c73 : ¬v17 ∨ ¬v19)
    (c76 : ¬v18 ∨ ¬v19)
    (c79 : ¬v19 ∨ ¬v20)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v27)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c102 : ¬v27 ∨ ¬v28)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c111 : ¬v32 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c119 : ¬v32 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
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
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c150 : ¬v46 ∨ ¬v43)
    (c155 : ¬v46 ∨ ¬v44)
    (c159 : ¬v46 ∨ ¬v45)
    (c161 : ¬v48 ∨ ¬v45)
    (c162 : ¬v49 ∨ ¬v45)
    (c164 : ¬v48 ∨ ¬v46)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c178 : ¬v40 ∨ v47 ∨ v41 ∨ v32 ∨ v34 ∨ v39 ∨ v33 ∨ v48)
    (c208 : ¬v46 ∨ v39 ∨ v38 ∨ v4 ∨ v3 ∨ v40 ∨ v45 ∨ v47)
    (c220 : ¬v28 ∨ v35 ∨ v20 ∨ v27 ∨ v22 ∨ v34 ∨ v21 ∨ v15)
    (c222 : ¬v46 ∨ v40 ∨ v45 ∨ v3 ∨ v5 ∨ v4 ∨ v39 ∨ v47)
    (c252 : v43 ∨ ¬v37 ∨ v44 ∨ v45 ∨ v30 ∨ v38 ∨ v36 ∨ v31)
    (c275 : v4 ∨ v6 ∨ ¬v5 ∨ v13 ∨ v11 ∨ v47 ∨ v12 ∨ v48)
    (c288 : v12 ∨ ¬v19 ∨ v18 ∨ v20 ∨ v26 ∨ v11 ∨ v27 ∨ v13)
    (c294 : v43 ∨ ¬v16 ∨ v2 ∨ v11 ∨ v24 ∨ v18 ∨ v9 ∨ v8 ∨ v25 ∨ v17 ∨ v23 ∨ v15 ∨ v44 ∨ v45)
    (c319 : v36 ∨ ¬v29 ∨ v22 ∨ v28 ∨ v23 ∨ v35 ∨ v30 ∨ v42)
    (c335 : v43 ∨ ¬v1 ∨ v49 ∨ v44 ∨ v7 ∨ v8 ∨ v2 ∨ v14)
    (c340 : v43 ∨ ¬v37 ∨ v44 ∨ v45 ∨ v30 ∨ v29 ∨ v36 ∨ v38)
    (c343 : v43 ∨ v9 ∨ v44 ∨ v1 ∨ v3 ∨ v45 ∨ ¬v2 ∨ v10)
    (c348 : ¬v46 ∨ v40 ∨ v4 ∨ v45 ∨ v39 ∨ v12 ∨ v10 ∨ v11 ∨ v3 ∨ v42 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c359 : v1 ∨ v10 ∨ v3 ∨ v17 ∨ v16 ∨ v2 ∨ ¬v9 ∨ v8)
    (c363 : ¬v46 ∨ v39 ∨ v4 ∨ v45 ∨ v40 ∨ v5 ∨ v38 ∨ v47)
    (c377 : v43 ∨ v8 ∨ v44 ∨ v3 ∨ v45 ∨ v1 ∨ ¬v2 ∨ v9)
    (c383 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v35 ∨ v30 ∨ v23 ∨ v42)
    (c387 : v36 ∨ v22 ∨ v25 ∨ v38 ∨ v17 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v23 ∨ v30 ∨ v9 ∨ v37 ∨ v11)
    (c388 : v43 ∨ ¬v21 ∨ v7 ∨ v13 ∨ v28 ∨ v22 ∨ v14 ∨ v23 ∨ v16 ∨ v9 ∨ v20 ∨ v15 ∨ v48 ∨ v49)
    (c418 : v36 ∨ ¬v30 ∨ v22 ∨ v37 ∨ v31 ∨ v23 ∨ v24 ∨ v29)
    (c438 : v43 ∨ v22 ∨ v45 ∨ v15 ∨ ¬v16 ∨ v10 ∨ v9 ∨ v44 ∨ v17 ∨ v14 ∨ v23 ∨ v28 ∨ v21 ∨ v2)
    (c450 : v26 ∨ ¬v25 ∨ v18 ∨ v32 ∨ v31 ∨ v19 ∨ v24 ∨ v17)
    (c533 : v36 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v22 ∨ v23 ∨ v29 ∨ v38)
    (c554 : ¬v31 ∨ v30 ∨ v38 ∨ v37 ∨ v24 ∨ v25 ∨ v23 ∨ v32)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c628 : ¬v16 ∨ v8 ∨ v9 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c632 : ¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c738 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25)
    (c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c841 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c953 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1022 : ¬v10 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1034 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1128 : ¬v12 ∨ ¬v2 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v31 ∨ v36 ∨ v38 ∨ v43 ∨ v45)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1156 : v26 ∨ v5 ∨ v12 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1190 : v6 ∨ v1 ∨ ¬v7 ∨ ¬v8 ∨ v43 ∨ v48 ∨ v49)
    (c1243 : v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1311 : ¬v17 ∨ v7 ∨ v24 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1337 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1420 : ¬v10 ∨ v1 ∨ v22 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1429 : ¬v12 ∨ v2 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1431 : v2 ∨ v7 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1464 : v47 ∨ ¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v43 ∨ v48 ∨ v49)
    (c1471 : ¬v9 ∨ v1 ∨ v2 ∨ v10 ∨ v15 ∨ v16 ∨ v17)
    (c1479 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44)
    (c1483 : v21 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1531 : ¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43)
    (c1543 : v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1601 : v37 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ ¬v5 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44)
    (c1621 : ¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1654 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1689 : v13 ∨ ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c1701 : ¬v21 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9)
    (c1702 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1703 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1713 : v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1745 : v2 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1756 : ¬v6 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1757 : v1 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1758 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c1759 : ¬v40 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c1771 : ¬v7 ∨ ¬v1 ∨ ¬v5 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47)
    (c1772 : ¬v2 ∨ ¬v1 ∨ ¬v5 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47)
    (c1796 : ¬v1 ∨ v6 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1824 : ¬v2 ∨ v6 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1825 : ¬v29 ∨ v6 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1829 : ¬v7 ∨ v6 ∨ v24 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1831 : ¬v24 ∨ v6 ∨ v47 ∨ v48 ∨ v49)
    (c1835 : ¬v35 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c1837 : ¬v28 ∨ v6 ∨ v47 ∨ v48 ∨ v49)
    (c1838 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1840 : v42 ∨ v5 ∨ v6 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1845 : v49 ∨ v6 ∨ v26 ∨ v29 ∨ ¬v30 ∨ v47 ∨ v48)
    (c1860 : v34 ∨ v6 ∨ v26 ∨ v29 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1864 : v6 ∨ ¬v1 ∨ v26 ∨ v29 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    : (v7 ∨ v2 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49) ∧ (v23 ∨ v1 ∨ v2 ∨ v6 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v48 ∨ v49) ∧ (v1 ∨ v6 ∨ v26 ∨ v29 ∨ v47 ∨ v48 ∨ v49) ∧ (v6 ∨ v26 ∨ v47 ∨ v48 ∨ v49) ∧ (v30 ∨ v22 ∨ v23 ∨ ¬v29 ∨ v36 ∨ v37 ∨ v42) ∧ (¬v29 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v42) ∧ (v37 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v36 ∨ v42 ∨ v43) ∧ (¬v36 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47) ∧ (¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47) ∧ (v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38) ∧ (¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38) ∧ (v1 ∨ ¬v2 ∨ v22 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49) ∧ (v32 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v29 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v44) ∧ (v24 ∨ v3 ∨ v10 ∨ v23 ∨ v26 ∨ v29 ∨ v36 ∨ ¬v37 ∨ v47 ∨ v48 ∨ v49) ∧ (v37 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ ¬v28 ∨ v29 ∨ v35 ∨ v36 ∨ v44) ∧ (v31 ∨ v30 ∨ v36 ∨ ¬v37 ∨ v43 ∨ v44 ∨ v45) ∧ (v3 ∨ v1 ∨ v2 ∨ v9 ∨ v23 ∨ v26 ∨ ¬v36 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (v22 ∨ v1 ∨ v3 ∨ ¬v4 ∨ v9 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v9) ∧ (v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49) := by
  have c1865 : v26 ∨ ¬v2 ∨ v6 ∨ v29 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v27 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v24 := by
      rcases c1831 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v34 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v1 := by
      rcases c1864 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u14 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
    have u16 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
    have u17 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v7 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact a
      · exact absurd u16 a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n0
    have u22 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u8
    have u23 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u10
      · exact a
      · exact absurd a n7
    have u24 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u2
    have u25 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u23 a
    rcases c388 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u23 a
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a u24
    · exact absurd a u15
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a n6
    · exact absurd a n7
  have c1866 : v2 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n3 a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v10 := by
      rcases c1022 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v9 := by
      rcases c632 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n10
      · exact absurd a n11
    rcases c1037 with a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
  have c1867 : v10 ∨ v2 ∨ v7 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    rcases c1431 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1868 : v7 ∨ v2 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    rcases c1867 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1869 : v23 ∨ v1 ∨ v2 ∨ v6 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v7 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    rcases c1866 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1870 : v42 ∨ v6 ∨ v26 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c1864 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v24 := by
      rcases c1831 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v30 := by
      rcases c1845 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u9 : v34 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v2 := by
      rcases c1865 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v37 := by
      rcases c1479 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u14 : v23 := by
      rcases c1869 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v7 := by
      rcases c1829 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n6
    have u19 : ¬v8 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n6
    rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u1
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n6
  have c1871 : v1 ∨ v6 ∨ ¬v23 ∨ v26 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v42 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v35 := by
      rcases c1702 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n6
    have u12 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u2
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd a n0
  have c1872 : v29 ∨ v1 ∨ v2 ∨ v6 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v46 := by
      rcases c1745 with a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v23 := by
      rcases c1871 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v24 := by
      rcases c1831 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v30 := by
      rcases c1845 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v42 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v35 := by
      rcases c1702 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u7
    have u18 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v7 := by
      rcases c1866 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v3 := by
      rcases c37 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a u19
    have u21 : v4 := by
      rcases c38 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u19
    have u22 : v5 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : v22 := by
      rcases c1601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd u20 a
      · exact absurd u21 a
      · exact absurd u22 a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
    have u24 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
    have u26 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n6
    have u27 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u26 a
    rcases c1037 with a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u25
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u7
  have c1873 : v1 ∨ v6 ∨ v26 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
    have u7 : v2 := by
      rcases c1872 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v23 := by
      rcases c1871 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v42 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : v27 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
    have u16 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
    have u17 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
    have u18 : v3 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd u7 a
      · exact absurd a u16
    have u19 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
    have u20 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a n2
    have u23 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u11
    have u24 : v4 := by
      rcases c275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u23 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
    rcases c21 with a|a|a|a
    · exact absurd u24 a
    · exact absurd u7 a
    · exact absurd u18 a
    · exact absurd u23 a
  have c1874 : ¬v2 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v46 := by
      rcases c1713 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n15
    have u6 : ¬v5 := by
      rcases c1772 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd u1 a
      · exact absurd a n13
    have u7 : v4 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n11
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n13
    have u8 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v6 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v12 := by
      rcases c1128 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
    have u12 : v27 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n5
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n12
      · exact a
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n9
    have u14 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u12 a
      · exact a
    rcases c1263 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a n5
  have c1875 : v29 ∨ v6 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v1 := by
      rcases c1873 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v24 := by
      rcases c1831 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v30 := by
      rcases c1845 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v42 := by
      rcases c1864 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v35 := by
      rcases c1702 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u17 : v27 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v2 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : v9 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u21
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
    have u23 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u4
    have u24 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u4
    have u25 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u22 a
      · exact a
    have u28 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u22 a
    have u29 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a n2
    have u30 : v7 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a u25
    have u31 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u6
    have u32 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u9
      · exact absurd a u29
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
    rcases c15 with a|a|a|a
    · exact absurd u1 a
    · exact absurd u32 a
    · exact absurd u31 a
    · exact absurd u30 a
  have c1876 : ¬v1 ∨ ¬v5 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v48 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n12 a
    have u2 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : ¬v7 := by
      rcases c1771 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd n12 a
      · exact absurd a n13
    have u5 : v2 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n14
    have u6 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n14
    have u7 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n14
    have u8 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n14
    have u9 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v3 := by
      rcases c2 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n12 a
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a n11
    · exact absurd a u4
    · exact absurd a n13
    · exact absurd a u1
    · exact absurd a n14
  have c1877 : v7 ∨ v1 ∨ v6 ∨ v26 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v29 := by
      rcases c1873 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v24 := by
      rcases c1831 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : v27 := by
      rcases c1825 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n7
    have u15 : ¬v17 := by
      rcases c1311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n7
    have u16 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n7
    have u17 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n7
    have u18 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u11 a
    have u19 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u11 a
      · exact a
    have u20 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u10
    have u21 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n7
    have u22 : v36 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n4
    have u23 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a n7
    have u24 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u4
    have u25 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u22 a
    have u28 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u22 a
    have u29 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u23 a
      · exact a
    have u30 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u19
    have u31 : v5 := by
      rcases c1840 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u32 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u27
      · exact absurd a u13
    have u33 : v4 := by
      rcases c275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u31 a
      · exact absurd a u29
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n6
    rcases c21 with a|a|a|a
    · exact absurd u33 a
    · exact absurd u30 a
    · exact absurd u32 a
    · exact absurd u31 a
  have c1878 : v6 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v24 := by
      rcases c1831 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v29 := by
      rcases c1875 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
    have u14 : v27 := by
      rcases c1825 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v36 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u13
    have u18 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v5 := by
      rcases c1840 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v1 := by
      rcases c1876 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n4
    have u24 : v2 := by
      rcases c1869 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u23
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u25 : v7 := by
      rcases c1877 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd u25 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
    have u27 : ¬v9 := by
      rcases c632 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd u25 a
      · exact absurd a n3
      · exact absurd a n4
    have u28 : ¬v3 := by
      rcases c25 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u25 a
      · exact absurd u24 a
    rcases c377 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u26
    · exact absurd a u3
    · exact absurd a u28
    · exact absurd a u5
    · exact absurd a u23
    · exact absurd u24 a
    · exact absurd a u27
  have c1879 : v28 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v22 ∨ v23 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n8
    have u3 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n8
    have u4 : v45 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd n2 a
      · exact absurd a u3
    have u5 : ¬v49 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v48 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v46 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u4 a
    rcases c1757 with a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a u6
    · exact absurd a u5
  have c1880 : ¬v2 ∨ v1 ∨ ¬v7 ∨ v22 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v46 := by
      rcases c1713 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v3 := by
      rcases c26 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd u2 a
    have u7 : ¬v4 := by
      rcases c29 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd u2 a
    have u8 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd u2 a
    have u9 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a n6
    have u10 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a n6
    have u11 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v28 := by
      rcases c1879 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
    have u14 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v33 := by
      rcases c1654 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u9
    have u17 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n6
    have u18 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u17 a
    rcases c377 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u19
  have c1881 : v30 ∨ v22 ∨ v23 ∨ ¬v29 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n3 a
      · exact a
    rcases c383 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n6
  have c1882 : ¬v29 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1881 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1883 : v37 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v36 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v29 := by
      rcases c1882 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
  have c1884 : ¬v36 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n3 a
      · exact a
    rcases c363 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n4
  have c1885 : v23 ∨ v1 ∨ ¬v2 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v22 ∨ v38 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v13 := by
      rcases c1243 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v46 := by
      rcases c1756 with a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v3 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u4
    have u11 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n0
    have u12 : ¬v4 := by
      rcases c22 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u10 a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n0
    have u14 : ¬v36 := by
      rcases c1884 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n9
    have u15 : v29 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u14
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n1
    have u16 : v37 := by
      rcases c1883 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u8
    have u17 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u15 a
    rcases c252 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u16 a
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u17
    · exact absurd a n7
    · exact absurd a u14
    · exact absurd a u18
  have c1886 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n3 a
      · exact a
    rcases c208 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n4
  have c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v8 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    have u2 : v10 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n2 a
      · exact a
    rcases c41 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c1888 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    rcases c554 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
  have c1889 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1888 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c1890 : v25 ∨ v1 ∨ ¬v2 ∨ ¬v6 ∨ v7 ∨ v22 ∨ v23 ∨ v24 ∨ v38 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v46 := by
      rcases c1756 with a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v5 := by
      rcases c1885 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v4 := by
      rcases c27 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
      · exact absurd u5 a
    have u7 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u5 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n10
    have u9 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    have u10 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n8
    have u11 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v18 := by
      rcases c738 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u14 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n7
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u4
    rcases c774 with a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
  have c1891 : v1 ∨ ¬v2 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v6 := by
      rcases c1837 with a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v7 := by
      rcases c1880 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v38 := by
      rcases c1890 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v33 := by
      rcases c1654 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u11
    have u16 : ¬v29 := by
      rcases c1882 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n6
    have u17 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u8
    have u18 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n7
    have u19 : ¬v4 := by
      rcases c27 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
      · exact absurd u18 a
    have u20 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact a
      · exact absurd u4 a
    have u21 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u22 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u21 a
    rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1892 : v47 ∨ v1 ∨ ¬v2 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : v42 := by
      rcases c1891 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v6 := by
      rcases c1837 with a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u12
    have u16 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n0
    have u17 : ¬v4 := by
      rcases c27 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u3 a
      · exact absurd u16 a
    have u18 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u16 a
      · exact a
      · exact absurd u3 a
    rcases c208 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a n0
  have c1893 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1516 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n6
  have c1894 : v22 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n7
    have u6 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    have u7 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v28 := by
      rcases c1892 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u10
    have u12 : ¬v15 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u10
    have u13 : ¬v7 := by
      rcases c1880 with a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v42 := by
      rcases c1893 with a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u10
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v35 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u10
      · exact a
      · exact absurd a u14
      · exact absurd a n9
    have u16 : v36 := by
      rcases c1883 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a u14
      · exact absurd a u3
    have u17 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u15 a
    rcases c1838 with a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n9
  have c1895 : v23 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v22 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v3 := by
      rcases c1894 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u6 : v13 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v36 := by
      rcases c1884 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n6
    have u8 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n0
    have u13 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n0
    have u14 : v29 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n1
    have u15 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v28 := by
      rcases c841 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u15
    rcases c1891 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd u16 a
    · exact absurd a u15
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1896 : v1 ∨ ¬v2 ∨ v22 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v4 := by
      rcases c1895 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v3 := by
      rcases c22 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
      · exact absurd u6 a
    have u8 : v13 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    rcases c49 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c1897 : v10 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v29 ∨ ¬v32 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a n4
    have u5 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v24 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u9 : v8 := by
      rcases c653 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v46 := by
      rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u12 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v43 := by
      rcases c438 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n1
    rcases c150 with a|a
    · exact absurd u11 a
    · exact absurd u13 a
  have c1898 : v32 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v29 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u2 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u3 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n10
      · exact a
      · exact absurd a n4
    have u4 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u5 : v8 := by
      rcases c628 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
    have u6 : v10 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
    rcases c41 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  have c1899 : v47 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v37 ∨ ¬v40 ∨ v44 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n12 a
    have u3 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : ¬v32 := by
      rcases c1897 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v31 := by
      rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n13
    have u6 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u5 a
      · exact a
    rcases c178 with a|a|a|a|a|a|a|a
    · exact absurd n12 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n15
  have c1900 : v40 ∨ v1 ∨ v2 ∨ v5 ∨ v10 ∨ v12 ∨ v23 ∨ v26 ∨ ¬v31 ∨ v37 ∨ v44 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u1
    have u4 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v17 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n6
    rcases c1471 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u6
  have c1901 : v31 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v37 ∨ v38 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u2 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n10
      · exact a
      · exact absurd a n5
    have u3 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v24 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u7 : v8 := by
      rcases c653 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u7 a
    rcases c387 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u9
  have c1902 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v5 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v36 ∨ v37 ∨ v44 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v40 := by
      rcases c1899 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u2 : ¬v31 := by
      rcases c1900 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u3 : v38 := by
      rcases c1901 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact a
      · exact absurd a n15
    have u4 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
    have u7 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a u6
    have u8 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v25 := by
      rcases c1263 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n11
    have u11 : v27 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n6
      · exact a
      · exact absurd a n8
    rcases c98 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c1903 : v29 ∨ v1 ∨ v3 ∨ v5 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v22 ∨ v23 ∨ v26 ∨ v36 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v2 := by
      rcases c1896 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u4
    have u7 : v37 := by
      rcases c1902 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : v30 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u11
    have u14 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u12
    have u15 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v25 := by
      rcases c1263 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact a
      · exact absurd a n10
    rcases c684 with a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u12
  have c1904 : v36 ∨ v1 ∨ v3 ∨ ¬v4 ∨ v9 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u2 : ¬v2 := by
      rcases c1896 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v6 := by
      rcases c1873 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u6
    have u8 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u6
    have u9 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v5 := by
      rcases c1903 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd n3 a
      · exact absurd u12 a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v21 := by
      rcases c1701 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd u7 a
      · exact absurd a n4
    have u15 : v35 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n8
      · exact a
      · exact absurd a u14
      · exact absurd a n12
    have u16 : v27 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : v24 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
    rcases c95 with a|a
    · exact absurd u16 a
    · exact absurd u17 a
  have c1905 : v24 ∨ v3 ∨ v10 ∨ v23 ∨ v26 ∨ v29 ∨ v36 ∨ ¬v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u7 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v30 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n7 a
      · exact absurd a u7
      · exact absurd a u9
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
    have u11 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u10 a
      · exact a
    rcases c809 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u9
  have c1906 : v37 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ ¬v28 ∨ v29 ∨ v31 ∨ v36 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v30 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
    have u4 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a n4
    have u5 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
    have u6 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
    rcases c630 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
  have c1907 : v37 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ ¬v28 ∨ v29 ∨ v35 ∨ v36 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : v31 := by
      rcases c1906 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a n4
    have u6 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd u5 a
      · exact a
    rcases c220 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u7
  have c1908 : v1 ∨ v3 ∨ v9 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v28 ∨ v29 ∨ v36 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v2 := by
      rcases c1891 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v46 := by
      rcases c1745 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v35 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n12
    have u8 : v37 := by
      rcases c1907 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u4
    have u9 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v30 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
    have u11 : v10 := by
      rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u8 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u10 a
    rcases c1420 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a n11
    · exact absurd a n12
  have c1909 : v31 ∨ v30 ∨ v36 ∨ ¬v37 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n3 a
    rcases c252 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
  have c1910 : v22 ∨ v1 ∨ v3 ∨ ¬v4 ∨ v9 ∨ v23 ∨ v26 ∨ v36 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v28 := by
      rcases c1904 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v29 := by
      rcases c1908 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u5 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v37 := by
      rcases c1882 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    rcases c1909 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd u9 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
  have c1911 : v3 ∨ v1 ∨ v2 ∨ v9 ∨ v23 ∨ v26 ∨ ¬v36 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u5 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : v29 := by
      rcases c1838 with a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u7 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u8 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n8
      · exact a
      · exact absurd a n4
    have u12 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n8
    have u13 : ¬v19 := by
      rcases c69 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n9
    have u18 : ¬v25 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
    have u19 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u17 a
    rcases c294 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd u11 a
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a n8
    · exact absurd a n9
  have c1912 : v22 ∨ v1 ∨ v3 ∨ ¬v4 ∨ v9 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v2 := by
      rcases c1896 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c1911 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n9
    have u7 : v42 := by
      rcases c1910 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u3
  have c1913 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v9 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n4 a
      · exact a
    rcases c359 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a u3
  have c1914 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v36 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n1
    rcases c1838 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  exact ⟨c1868, c1869, c1873, c1878, c1881, c1882, c1883, c1884, c1886, c1887, c1888, c1889, c1896, c1898, c1905, c1907, c1909, c1911, c1912, c1913, c1914⟩
