import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1300-1349 of the 2934-step refutation of ccase002: 115 core clauses and 57 earlier-derived ones give 22 more. -/
theorem CCase002_block026
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c20 : ¬v7 ∨ ¬v2 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c99 : v16 ∨ v21 ∨ v18 ∨ v20 ∨ v17 ∨ v19)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c145 : ¬v39 ∨ ¬v36)
    (c150 : ¬v39 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c162 : ¬v42 ∨ ¬v40)
    (c165 : ¬v45 ∨ ¬v43)
    (c170 : ¬v45 ∨ ¬v44)
    (c178 : ¬v49 ∨ ¬v45)
    (c181 : ¬v49 ∨ ¬v46)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c197 : v43 ∨ v49 ∨ v48 ∨ v6 ∨ v13 ∨ ¬v7 ∨ v1 ∨ v14)
    (c214 : ¬v28 ∨ v22 ∨ v23 ∨ v20 ∨ v13 ∨ v8 ∨ v27 ∨ v31 ∨ v17 ∨ v24 ∨ v29 ∨ v21 ∨ v14 ∨ v35)
    (c247 : ¬v19 ∨ v26 ∨ v25 ∨ v18 ∨ v20 ∨ v13 ∨ v11 ∨ v12)
    (c266 : v43 ∨ ¬v15 ∨ v49 ∨ v44 ∨ v1 ∨ v22 ∨ v21 ∨ v14 ∨ v17 ∨ v16 ∨ v10 ∨ v23 ∨ v8 ∨ v24)
    (c277 : v29 ∨ ¬v23 ∨ v31 ∨ v16 ∨ v22 ∨ v30 ∨ v24 ∨ v17)
    (c297 : v27 ∨ v20 ∨ v26 ∨ v18 ∨ v11 ∨ ¬v19 ∨ v13 ∨ v12)
    (c300 : v22 ∨ v16 ∨ v21 ∨ v28 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v8)
    (c315 : ¬v25 ∨ v32 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v17 ∨ v31)
    (c318 : ¬v27 ∨ v34 ∨ v19 ∨ v41 ∨ v49 ∨ v35 ∨ v20 ∨ v26 ∨ v28 ∨ v18 ∨ v32 ∨ v47 ∨ v48 ∨ v25)
    (c330 : v10 ∨ ¬v11 ∨ v3 ∨ v18 ∨ v19 ∨ v17 ∨ v4 ∨ v12)
    (c337 : ¬v45 ∨ v39 ∨ v2 ∨ v44 ∨ v3 ∨ v38 ∨ v37 ∨ v46)
    (c358 : v36 ∨ ¬v35 ∨ v37 ∨ v27 ∨ v28 ∨ v42 ∨ v8 ∨ v30 ∨ v14 ∨ v34 ∨ v21 ∨ v23 ∨ v13 ∨ v29)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c392 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ v46 ∨ ¬v3 ∨ v10)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c399 : v13 ∨ v12 ∨ v48 ∨ v47 ∨ v14 ∨ v7 ∨ ¬v6 ∨ v5)
    (c487 : ¬v45 ∨ v38 ∨ v1 ∨ v16 ∨ v3 ∨ v10 ∨ v17 ∨ v18 ∨ v4 ∨ v37 ∨ v36 ∨ v43 ∨ v44 ∨ v46)
    (c511 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v2 ∨ v44 ∨ v3 ∨ v4)
    (c512 : v43 ∨ ¬v2 ∨ v3 ∨ v1 ∨ v9 ∨ v44 ∨ v8 ∨ v10)
    (c516 : ¬v39 ∨ v32 ∨ v18 ∨ v17 ∨ v38 ∨ v31 ∨ v34 ∨ v25 ∨ v19 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c591 : v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26)
    (c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28)
    (c595 : ¬v19 ∨ v12 ∨ ¬v15 ∨ v25 ∨ v26 ∨ v27)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c718 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17)
    (c742 : ¬v12 ∨ v4 ∨ v5 ∨ v13 ∨ v18 ∨ v19 ∨ v20)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c876 : ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1150 : ¬v26 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1239 : v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33)
    (c1283 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1297 : ¬v2 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1361 : ¬v29 ∨ v17 ∨ v18 ∨ ¬v25)
    (c1362 : ¬v34 ∨ v17 ∨ v18 ∨ ¬v25)
    (c1370 : v21 ∨ v16 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28)
    (c1376 : ¬v36 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v43 ∨ v49)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1465 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v49)
    (c1467 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v43 ∨ v49)
    (c1483 : v6 ∨ v5 ∨ v12 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21)
    (c1491 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1506 : v7 ∨ v3 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1533 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1697 : ¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v47 ∨ v48 ∨ v49)
    (c1702 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1703 : ¬v36 ∨ v2 ∨ v3 ∨ ¬v45 ∨ v46)
    (c1713 : ¬v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46)
    (c1723 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v37)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1741 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46)
    (c1745 : v39 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1773 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1787 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47)
    (c1792 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1803 : v34 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1817 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47)
    (c1818 : v19 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ ¬v26 ∨ v33)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1838 : v20 ∨ v6 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49)
    (c1848 : ¬v1 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1853 : ¬v10 ∨ v6 ∨ v14 ∨ ¬v15 ∨ v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1855 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v21)
    (c1856 : v49 ∨ ¬v5 ∨ ¬v10 ∨ v14 ∨ ¬v15 ∨ v18 ∨ v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48)
    : (v20 ∨ ¬v10 ∨ v14 ∨ ¬v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22) ∧ (v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22) ∧ (v22 ∨ v9 ∨ v14 ∨ ¬v15 ∨ ¬v19 ∨ v20 ∨ v26) ∧ (¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44) ∧ (v14 ∨ v9 ∨ ¬v15 ∨ ¬v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26) ∧ (v23 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ ¬v25 ∨ v26 ∨ v27) ∧ (v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ ¬v26) ∧ (¬v34 ∨ v8 ∨ v13 ∨ v14 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ ¬v28) ∧ (v12 ∨ v10 ∨ v11 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v49 ∨ ¬v9 ∨ v14 ∨ ¬v15 ∨ v20 ∨ v46 ∨ v47 ∨ v48) ∧ (v33 ∨ v8 ∨ ¬v15 ∨ v19 ∨ v20 ∨ ¬v26) ∧ (v37 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v19 ∨ v32 ∨ ¬v40 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v23 ∨ v16 ∨ v17 ∨ v29 ∨ v30 ∨ v31) ∧ (v17 ∨ v12 ∨ v14 ∨ ¬v15 ∨ v20 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v7 ∨ v1 ∨ v9 ∨ ¬v12 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v18 ∨ ¬v12 ∨ ¬v15 ∨ v17 ∨ v21) ∧ (¬v35 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v36 ∨ v37 ∨ v42) ∧ (v8 ∨ v4 ∨ v7 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v21 ∨ ¬v22 ∨ v25 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v17 ∨ v7 ∨ v14 ∨ v18 ∨ v21 ∨ ¬v25 ∨ v43 ∨ v47 ∨ v48 ∨ v49) := by
  have c1857 : v20 ∨ ¬v10 ∨ v14 ∨ ¬v15 ∨ v18 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v6 := by
      rcases c1853 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v5 := by
      rcases c1856 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v7 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd u5 a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
    have u9 : v33 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u5 a
    have u11 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u5 a
    have u12 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n7
    have u14 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u6
    have u16 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u15 a
    rcases c860 with a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n6
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u14
  have c1858 : v14 ∨ ¬v10 ∨ ¬v15 ∨ v18 ∨ v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v26 := by
      rcases c1857 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v33 := by
      rcases c1818 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd u6 a
      · exact a
    have u11 : v6 := by
      rcases c1838 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u7
      · exact absurd a u13
    have u18 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v17 := by
      rcases c516 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a n3
      · exact a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u20 a
    have u22 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u20 a
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u5
  have c1859 : v14 ∨ ¬v10 ∨ ¬v15 ∨ v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u4 : v18 := by
      rcases c1858 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u4 a
    have u6 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v17 := by
      rcases c63 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v28 := by
      rcases c1855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u6
    have u9 : v22 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u3
    have u10 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u9 a
      · exact a
    rcases c591 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd u4 a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
  have c1860 : v20 ∨ ¬v10 ∨ v14 ∨ ¬v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v19 := by
      rcases c1859 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n3 a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
    have u10 : ¬v28 := by
      rcases c1855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u9
      · exact absurd a u8
    have u11 : v22 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u5
    have u12 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u11 a
      · exact a
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a u1
  have c1861 : ¬v39 ∨ v1 ∨ v4 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd n12 a
      · exact a
    have u5 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd n12 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a u2
    have u7 : v3 := by
      rcases c487 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n12 a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n13
    have u8 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u5
      · exact a
    rcases c17 with a|a|a
    · exact absurd u8 a
    · exact absurd u7 a
    · exact absurd n3 a
  have c1862 : v27 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c1861 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd u2 a
      · exact absurd a n15
    have u8 : v32 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n15
      · exact absurd a u7
      · exact absurd a n13
      · exact a
    have u9 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
    have u13 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u6
      · exact a
    have u14 : ¬v5 := by
      rcases c21 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u1 a
    have u15 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u1 a
    rcases c542 with a|a|a|a|a|a|a|a
    · exact absurd a n18
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a n16
    · exact absurd u1 a
    · exact absurd a u15
    · exact absurd a n17
    · exact absurd a n5
  have c1863 : v46 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v21 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
    have u11 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u2
    have u12 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : v34 := by
      rcases c1862 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
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
    have u21 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v42 := by
      rcases c1150 with a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a u18
      · exact absurd a u20
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u23 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a u22
    have u24 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u13
    have u25 : v6 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n10
      · exact a
      · exact absurd a u15
      · exact absurd u23 a
      · exact absurd a u8
      · exact absurd a n1
    have u26 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u13
      · exact a
    rcases c23 with a|a|a
    · exact absurd u26 a
    · exact absurd u23 a
    · exact absurd u25 a
  have c1864 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c1855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u3
  have c1865 : v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v28 := by
      rcases c1855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n0
  have c1866 : v22 ∨ v9 ∨ v14 ∨ ¬v15 ∨ ¬v19 ∨ v20 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u3 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u4 : v8 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
    have u5 : ¬v12 := by
      rcases c1864 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
    have u6 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v25 := by
      rcases c654 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u9 : v27 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd n4 a
      · exact absurd a u6
      · exact absurd a u5
    rcases c116 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c1867 : ¬v6 ∨ ¬v3 ∨ v13 ∨ v14 ∨ v44 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c27 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u5 : v49 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n2
    have u6 : v12 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u2
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u6 a
    rcases c392 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a u10
  have c1868 : v21 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v39 := by
      rcases c1745 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v3 := by
      rcases c487 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n16
    have u12 : ¬v6 := by
      rcases c1867 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n17
      · exact absurd a n18
    have u13 : v34 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n18
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a u5
      · exact a
    have u14 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u13 a
    rcases c1217 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u5
  have c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 := by
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
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n1
    rcases c1773 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
  have c1871 : v14 ∨ v9 ∨ ¬v15 ∨ ¬v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v17 := by
      rcases c64 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u5 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v26 := by
      rcases c1863 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v22 := by
      rcases c1866 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u10
    have u12 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : v12 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
    have u18 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u10
    have u19 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v4 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u21 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u23 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : v2 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
    have u25 : v3 := by
      rcases c512 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u24 a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u7
    rcases c15 with a|a|a
    · exact absurd u24 a
    · exact absurd u25 a
    · exact absurd u21 a
  have c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v25 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n2
  have c1873 : v20 ∨ v14 ∨ ¬v15 ∨ ¬v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v9 := by
      rcases c1871 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v17 := by
      rcases c64 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u6 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u13 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n0
    have u14 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n0
      · exact a
    have u17 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u16 a
    rcases c266 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd n2 a
    · exact absurd a n7
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd a u13
  have c1874 : v23 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ ¬v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n5 a
    rcases c1370 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u2
  have c1875 : v8 ∨ v10 ∨ ¬v15 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v21 ∨ v23 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c1874 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v24 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n8
      · exact a
      · exact absurd a u1
    have u3 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u2 a
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n8
  have c1876 : v21 ∨ v8 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v18 ∨ v20 ∨ v26 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v19 := by
      rcases c1873 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v17 := by
      rcases c99 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u2
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
    have u7 : v6 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u7 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v23 := by
      rcases c1875 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a u6
    have u12 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
    have u17 : v39 := by
      rcases c1745 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u19 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c1465 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a n11
    · exact absurd a u1
    · exact absurd a n15
  have c1877 : v21 ∨ v8 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v18 ∨ v20 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v19 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v34 := by
      rcases c1876 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n14
    have u10 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v28 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a n14
    · exact absurd a u11
  have c1878 : v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ ¬v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n4 a
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u1
  have c1879 : v8 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v20 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact a
    have u2 : ¬v19 := by
      rcases c1873 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v18 := by
      rcases c1877 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v17 := by
      rcases c63 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u8 a
    have u10 : v25 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u9
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u5
    have u11 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u10 a
    rcases c266 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd n5 a
    · exact absurd a n12
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u13
  have c1880 : v20 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
    have u7 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v4 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n8 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v6 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u11 a
      · exact a
    rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u6
  have c1881 : v48 ∨ ¬v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v20 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u7 : ¬v19 := by
      rcases c1873 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u8 : v21 := by
      rcases c1879 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u9 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n3 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd n3 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v33 := by
      rcases c1880 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u12 : ¬v26 := by
      rcases c1818 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u9
      · exact a
      · exact absurd a u11
    have u13 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u14 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u15 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c718 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd a u10
  have c1882 : v28 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n14
    have u10 : ¬v4 := by
      rcases c1506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u11 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a n14
    have u12 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n14
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u10
    have u13 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a u13
    rcases c1491 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a n16
    · exact absurd a n17
  have c1883 : v28 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n13
    have u8 : v34 := by
      rcases c1882 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a n16
    · exact absurd a u11
  have c1884 : ¬v34 ∨ v8 ∨ v13 ∨ v14 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n8 a
      · exact a
    rcases c214 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
  have c1885 : v28 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a n12
    have u7 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v27 := by
      rcases c1883 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : v34 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n15
    · exact absurd a u12
  have c1886 : v25 ∨ v8 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v7 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v28 := by
      rcases c1885 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v34 := by
      rcases c1884 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd u8 a
    have u13 : ¬v4 := by
      rcases c1506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u14 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd u4 a
      · exact absurd a n14
    have u15 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n14
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u13
    have u16 : v39 := by
      rcases c1745 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c154 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c1887 : v21 ∨ v8 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v7 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v25 := by
      rcases c1886 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v34 := by
      rcases c1362 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u9 a
    have u16 : ¬v4 := by
      rcases c1506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u17 : v42 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n16
    have u18 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd u4 a
      · exact absurd a n13
    have u19 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n13
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u16
    rcases c157 with a|a
    · exact absurd u17 a
    · exact absurd u19 a
  have c1888 : v12 ∨ v10 ∨ v11 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v6 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
    have u6 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u4 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd n9 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n11
  have c1889 : v49 ∨ ¬v9 ∨ v14 ∨ ¬v15 ∨ v20 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : v16 := by
      rcases c1881 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u7 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u6 a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u6 a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u6 a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v33 := by
      rcases c1888 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u10
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u12 : ¬v26 := by
      rcases c1818 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u7
      · exact a
      · exact absurd a u11
    rcases c1887 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
  have c1890 : v21 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n11
    have u2 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v4 := by
      rcases c1506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd u4 a
      · exact absurd a n12
    have u12 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n12
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u10
    have u13 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v32 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n12
    have u16 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v28 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u16
      · exact a
      · exact absurd a n15
      · exact absurd a u13
    rcases c1283 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd u18 a
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a n14
    · exact absurd a n15
  have c1891 : v21 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n11
    have u7 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v34 := by
      rcases c1890 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : ¬v28 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
    have u16 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n14
      · exact absurd a u13
    have u17 : v4 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a n11
    rcases c31 with a|a|a
    · exact absurd u1 a
    · exact absurd u17 a
    · exact absurd u16 a
  have c1892 : v17 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v20 ∨ v21 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v19 := by
      rcases c1871 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd n5 a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n9
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a u4
    have u9 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v18 := by
      rcases c1891 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n10
    have u13 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u10 a
    have u14 : v25 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u1
    have u15 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u7
    have u20 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u21 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u22 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd u3 a
      · exact absurd a n10
    have u23 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u11
    rcases c1723 with a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u22
  have c1893 : v11 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v21 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v19 := by
      rcases c1871 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd n4 a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v26 := by
      rcases c1892 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v18 := by
      rcases c1818 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd u4 a
      · exact absurd a n8
    rcases c368 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u1
  have c1894 : v33 ∨ v8 ∨ ¬v15 ∨ v19 ∨ v20 ∨ ¬v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : v18 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd a u4
      · exact absurd a n0
    have u7 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u6 a
    have u8 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u6 a
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u2
  have c1895 : v21 ∨ v11 ∨ v12 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v19 := by
      rcases c1871 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd n4 a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v13 := by
      rcases c1893 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v26 := by
      rcases c1894 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a n6
      · exact a
    have u7 : v18 := by
      rcases c1891 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u7 a
    have u9 : v25 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u1
    have u10 : v22 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u8
      · exact absurd a n0
      · exact a
    rcases c102 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c1896 : v8 ∨ v3 ∨ ¬v5 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ ¬v18 ∨ v20 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n7 a
    have u2 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v7 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v22 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a n9
      · exact a
    have u7 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
    have u13 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd u5 a
      · exact absurd a n10
    have u16 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u2
    have u17 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u14
    have u18 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u17 a
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a n13
    · exact absurd a u19
  have c1897 : v21 ∨ v12 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v19 := by
      rcases c1871 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v11 := by
      rcases c1895 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v26 := by
      rcases c1894 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a n5
      · exact a
    have u10 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v7 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a n7
    have u15 : ¬v18 := by
      rcases c1896 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v4 := by
      rcases c330 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u6 a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n4
      · exact a
      · exact absurd a n1
    have u17 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u16 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : v34 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v28 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a n10
    · exact absurd a u21
  have c1898 : v37 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v19 ∨ v32 ∨ ¬v40 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : v4 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    rcases c337 with a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n8
  have c1899 : v21 ∨ v1 ∨ ¬v4 ∨ ¬v7 ∨ v12 ∨ v14 ∨ v19 ∨ v20 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v13 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c197 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n5
  have c1900 : v18 ∨ v4 ∨ ¬v7 ∨ v17 ∨ v19 ∨ ¬v33 ∨ v41 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u2
    have u9 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
    have u10 : v39 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v40 := by
      rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact a
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u10 a
    rcases c516 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1901 : ¬v23 ∨ v16 ∨ v17 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n2
  have c1902 : v17 ∨ v12 ∨ v14 ∨ ¬v15 ∨ v20 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v19 := by
      rcases c1871 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v33 := by
      rcases c1897 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
    have u15 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n9
    have u16 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a u17
    have u19 : ¬v4 := by
      rcases c1899 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u20 : v18 := by
      rcases c1900 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u18 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd u7 a
      · exact absurd a u13
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u20 a
    have u22 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u23 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u6
      · exact a
    have u24 : v8 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd u18 a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u25 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u23 a
      · exact absurd u18 a
      · exact a
    have u26 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u24 a
      · exact a
    rcases c1803 with a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1903 : ¬v7 ∨ v1 ∨ v9 ∨ ¬v12 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v6 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n11
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n4
    have u6 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u7 : v18 := by
      rcases c742 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u7 a
    have u9 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd a u8
      · exact absurd a n9
      · exact a
    have u10 : v22 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u8
      · exact absurd a n9
      · exact a
    have u11 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u10 a
      · exact a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd u7 a
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u9
  have c1904 : ¬v18 ∨ ¬v12 ∨ ¬v15 ∨ v17 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v19 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
    have u8 : v22 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
    have u9 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u8 a
      · exact a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u7
  have c1905 : ¬v35 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    rcases c358 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u2
  have c1906 : v8 ∨ v4 ∨ v7 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v21 ∨ ¬v22 ∨ v25 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : v39 := by
      rcases c1745 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a u7
    rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u7
  have c1912 : v17 ∨ v7 ∨ v14 ∨ v18 ∨ v21 ∨ ¬v25 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v29 := by
      rcases c1361 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n5 a
    have u8 : ¬v34 := by
      rcases c1362 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n5 a
    have u9 : v42 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n9
    have u10 : ¬v36 := by
      rcases c1376 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n9
    have u11 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v35 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u14 a
    rcases c315 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u16
  exact ⟨c1860, c1862, c1864, c1865, c1866, c1870, c1871, c1872, c1874, c1878, c1884, c1888, c1889, c1894, c1898, c1901, c1902, c1903, c1904, c1905, c1906, c1912⟩
