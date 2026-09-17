import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1300-1349 of the 2915-step refutation of ccase001: 138 core clauses and 68 earlier-derived ones give 10 more. -/
theorem CCase001_block026
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c80 : ¬v15 ∨ ¬v16)
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
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c115 : ¬v27 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c146 : ¬v36 ∨ ¬v37)
    (c147 : ¬v36 ∨ ¬v38)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c169 : ¬v45 ∨ ¬v43)
    (c174 : ¬v44 ∨ ¬v45)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c216 : ¬v21 ∨ v28 ∨ v8 ∨ v14 ∨ v20 ∨ v27 ∨ v13 ∨ v15)
    (c259 : ¬v19 ∨ v13 ∨ v25 ∨ v11 ∨ v26 ∨ v20 ∨ v12 ∨ v18)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c310 : v43 ∨ v36 ∨ v30 ∨ v44 ∨ v38 ∨ v35 ∨ v31 ∨ v17 ∨ v23 ∨ v42 ∨ v15 ∨ ¬v37 ∨ v49 ∨ v16)
    (c311 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v35 ∨ v28 ∨ v33 ∨ v40)
    (c312 : ¬v19 ∨ v26 ∨ v13 ∨ v11 ∨ v12 ∨ v27 ∨ v18 ∨ v20)
    (c340 : ¬v32 ∨ v39 ∨ v33 ∨ v26 ∨ v31 ∨ v40 ∨ v25 ∨ v24)
    (c346 : v43 ∨ v9 ∨ v37 ∨ v31 ∨ v1 ∨ v10 ∨ ¬v2 ∨ v4 ∨ v11 ∨ v30 ∨ v29 ∨ v3 ∨ v44 ∨ v46)
    (c367 : ¬v45 ∨ v3 ∨ v39 ∨ v37 ∨ v2 ∨ v38 ∨ v44 ∨ v46)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c394 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v8)
    (c408 : v15 ∨ v21 ∨ v16 ∨ v1 ∨ v7 ∨ v14 ∨ v9 ∨ ¬v8)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c462 : ¬v39 ∨ v32 ∨ v47 ∨ v40 ∨ v38 ∨ v31 ∨ v46 ∨ v33)
    (c495 : v29 ∨ ¬v22 ∨ v30 ∨ v35 ∨ v28 ∨ v23 ∨ v15 ∨ v16)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c527 : v29 ∨ ¬v16 ∨ v30 ∨ v24 ∨ v9 ∨ v23 ∨ v27 ∨ v8 ∨ v20 ∨ v15 ∨ v21 ∨ v13 ∨ v17 ∨ v31)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c536 : v27 ∨ v6 ∨ v13 ∨ v12 ∨ v19 ∨ v7 ∨ v9 ∨ v5 ∨ v16 ∨ v21 ∨ v23 ∨ v15 ∨ ¬v20 ∨ v28)
    (c542 : v12 ∨ v10 ∨ v3 ∨ v5 ∨ v11 ∨ ¬v4 ∨ v46 ∨ v47)
    (c543 : v15 ∨ v9 ∨ v2 ∨ v24 ∨ v8 ∨ v3 ∨ v12 ∨ v19 ∨ v18 ∨ v17 ∨ v1 ∨ v23 ∨ ¬v16 ∨ v26)
    (c580 : ¬v45 ∨ v38 ∨ v44 ∨ v37 ∨ v4 ∨ v2 ∨ v3 ∨ v46)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c740 : v25 ∨ ¬v10 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49)
    (c768 : v21 ∨ ¬v10 ∨ v16 ∨ v19 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c861 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1030 : ¬v33 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1141 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1143 : ¬v34 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49)
    (c1196 : v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1244 : v39 ∨ v33 ∨ ¬v40 ∨ v46 ∨ v47 ∨ v48)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1300 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v35)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1375 : v29 ∨ ¬v19 ∨ ¬v22)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1457 : v12 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1469 : ¬v17 ∨ v1 ∨ v8 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1477 : ¬v5 ∨ ¬v2 ∨ v6 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1500 : v32 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v26 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48)
    (c1511 : v28 ∨ ¬v8 ∨ v13 ∨ ¬v20 ∨ v26 ∨ v27)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1535 : ¬v2 ∨ ¬v1 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v19)
    (c1541 : v20 ∨ v6 ∨ v13 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1571 : ¬v4 ∨ ¬v6 ∨ ¬v10 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1577 : ¬v26 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1579 : ¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c1587 : ¬v3 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1628 : v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1629 : ¬v1 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v14 ∨ v43 ∨ v49)
    (c1688 : ¬v2 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1700 : ¬v35 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1703 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1715 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48)
    (c1726 : ¬v5 ∨ ¬v4 ∨ v37 ∨ v38 ∨ v39 ∨ ¬v45 ∨ v46)
    (c1741 : ¬v35 ∨ ¬v39 ∨ v46 ∨ v47)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1765 : ¬v9 ∨ ¬v3 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1801 : v38 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31)
    (c1828 : v4 ∨ v3 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1848 : ¬v26 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48)
    (c1858 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c1864 : v49 ∨ v7 ∨ v8 ∨ v22 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48)
    (c1871 : v20 ∨ v15 ∨ v21 ∨ v22 ∨ ¬v27 ∨ ¬v35 ∨ v47 ∨ v48 ∨ v49)
    (c1878 : ¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c1897 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49)
    (c1898 : v22 ∨ v8 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1909 : ¬v37 ∨ v1 ∨ v2 ∨ v3 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v45 ∨ v46)
    (c1910 : v3 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v39 ∨ ¬v45 ∨ v46)
    (c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16)
    (c1919 : v39 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1920 : v41 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33 ∨ v34 ∨ v40)
    (c1922 : ¬v13 ∨ v8 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1923 : v39 ∨ ¬v4 ∨ v13 ∨ ¬v22 ∨ ¬v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v11 ∨ v2 ∨ v13 ∨ v18 ∨ v19 ∨ ¬v22 ∨ v33 ∨ ¬v34 ∨ v39 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v20 ∨ ¬v11 ∨ v13 ∨ v26 ∨ v27 ∨ v28) ∧ (v12 ∨ ¬v2 ∨ v6 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38) ∧ (v8 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v8 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v46) ∧ (v27 ∨ ¬v2 ∨ v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v12 ∨ ¬v2 ∨ v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v19 ∨ ¬v2 ∨ v6 ∨ v13 ∨ v14 ∨ ¬v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49) := by
  have c1925 : v34 ∨ ¬v4 ∨ ¬v10 ∨ v13 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v19 := by
      rcases c740 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v6 := by
      rcases c1571 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v20 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n15
    have u5 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v14 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u5
    have u7 : v12 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c68 with a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd n2 a
  have c1926 : v34 ∨ v2 ∨ v3 ∨ ¬v4 ∨ v8 ∨ ¬v9 ∨ v10 ∨ v13 ∨ v16 ∨ v17 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v15 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
    have u2 : v1 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n8
    have u3 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd u2 a
      · exact absurd n3 a
      · exact a
    rcases c1483 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1927 : ¬v4 ∨ v2 ∨ v3 ∨ v8 ∨ v10 ∨ v16 ∨ v17 ∨ v34 ∨ v37 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v33 := by
      rcases c1923 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd u3 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : v38 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a n10
    have u14 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v35 := by
      rcases c1700 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u14
    have u17 : ¬v9 := by
      rcases c1926 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u7
    have u19 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u19
      · exact absurd a u16
    have u21 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd u3 a
    have u22 : v6 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a n12
    have u23 : v1 := by
      rcases c1910 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd u4 a
      · exact absurd a n10
    rcases c11 with a|a|a
    · exact absurd u23 a
    · exact absurd n0 a
    · exact absurd u22 a
  have c1928 : v49 ∨ v2 ∨ v3 ∨ v8 ∨ v11 ∨ v18 ∨ v19 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u2 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u3 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u5 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : v38 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a n11
    have u13 : v4 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v33 := by
      rcases c1923 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u13 a
      · exact absurd a u3
      · exact absurd u2 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u17 : ¬v35 := by
      rcases c1700 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u14
    have u18 : ¬v10 := by
      rcases c1925 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u13 a
      · exact a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u19 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u20 : v16 := by
      rcases c1927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
      · exact a
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u21 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v6 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a n13
    have u25 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u24 a
    have u26 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u13 a
    have u27 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd u13 a
      · exact absurd u24 a
      · exact a
    have u28 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd u24 a
      · exact absurd a u26
      · exact a
      · exact absurd a n12
      · exact absurd a u27
      · exact absurd a u3
    rcases c530 with a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd u28 a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u22
    · exact absurd a u27
    · exact absurd a u25
  have c1929 : ¬v3 ∨ ¬v4 ∨ v8 ∨ v11 ∨ v18 ∨ v19 ∨ v32 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u6
    have u10 : v20 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u9 a
      · exact absurd a u2
    have u11 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v14 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u13
    rcases c1523 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd u14 a
    · exact absurd a u13
  have c1930 : v11 ∨ v2 ∨ v8 ∨ v18 ∨ v19 ∨ v32 ∨ v34 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v4 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v33 := by
      rcases c1923 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u10 a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v3 := by
      rcases c1929 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v37 := by
      rcases c1928 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v1 := by
      rcases c1909 with a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n8
    have u15 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u14 a
      · exact absurd u10 a
      · exact a
    have u16 : v12 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a u15
      · exact a
    have u18 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd u14 a
    rcases c62 with a|a|a
    · exact absurd u17 a
    · exact absurd u18 a
    · exact absurd u16 a
  have c1931 : v11 ∨ v2 ∨ v13 ∨ v18 ∨ v19 ∨ ¬v22 ∨ v33 ∨ ¬v34 ∨ v39 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a u1
      · exact absurd a u4
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n9 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n9 a
      · exact a
    have u11 : v4 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u12 : ¬v40 := by
      rcases c1244 with a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u14 : v41 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u12
    have u15 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v3 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n10
    have u17 : ¬v5 := by
      rcases c1726 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
    have u18 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u11 a
      · exact absurd u16 a
      · exact a
    have u19 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u12
    rcases c450 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd u19 a
    · exact absurd a u17
  have c1932 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    rcases c340 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
  have c1933 : v13 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v18 ∨ v19 ∨ ¬v22 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u8
    have u10 : v20 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u9 a
      · exact absurd a u3
    have u11 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : v14 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u11
    have u13 : ¬v8 := by
      rcases c1511 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u7
    rcases c1523 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd u12 a
    · exact absurd a u11
  have c1934 : v46 ∨ v8 ∨ v11 ∨ v18 ∨ v19 ∨ v39 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v4 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v33 := by
      rcases c1923 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd u3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v32 := by
      rcases c1932 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u9
    have u11 : ¬v2 := by
      rcases c1933 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v34 := by
      rcases c1931 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a u8
      · exact a
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    rcases c1930 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1935 : ¬v20 ∨ ¬v11 ∨ v13 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v14 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u1
    have u4 : v12 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c71 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n1 a
  have c1936 : v39 ∨ ¬v4 ∨ v8 ∨ v18 ∨ v19 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v11 := by
      rcases c1934 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v20 := by
      rcases c1935 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u8 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    have u11 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u8 a
      · exact absurd a u9
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u2
    have u12 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd u8 a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u10
    rcases c71 with a|a|a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd u1 a
  have c1937 : v2 ∨ ¬v4 ∨ v8 ∨ v18 ∨ v19 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v11 := by
      rcases c1934 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v34 := by
      rcases c1936 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u17 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v41 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u17
    have u19 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : v3 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a n6
    have u21 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd n1 a
    have u22 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd n1 a
    have u23 : v12 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u21
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u25 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u23 a
    have u26 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u1 a
    have u27 : ¬v16 := by
      rcases c861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u10
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u27
    · exact absurd a u8
  have c1938 : v9 ∨ v2 ∨ v8 ∨ v13 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n5
    have u2 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    rcases c527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd u1 a
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n10
  have c1939 : v33 ∨ v2 ∨ v4 ∨ v8 ∨ ¬v11 ∨ v19 ∨ ¬v34 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u6 a
    have u11 : ¬v20 := by
      rcases c887 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u2
    have u12 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n0
    have u13 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u6 a
      · exact a
    have u17 : v41 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u7
    have u18 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u8 a
    have u19 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : v3 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n8
    have u22 : v9 := by
      rcases c1938 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u18
    have u23 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n4 a
    have u24 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u22 a
      · exact absurd n4 a
      · exact a
    have u25 : ¬v6 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u26 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c376 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u24
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd u26 a
  have c1940 : v2 ∨ v4 ∨ v8 ∨ ¬v9 ∨ ¬v11 ∨ v19 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u2 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u5 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u7
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u6
    have u9 : ¬v1 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v6 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd u8 a
    have u11 : ¬v3 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v16 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
    rcases c1599 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd n4 a
    · exact absurd a u2
  have c1941 : ¬v16 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ v9 ∨ v12 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    rcases c543 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd n0 a
    · exact absurd a n11
  have c1942 : v8 ∨ v2 ∨ v12 ∨ v18 ∨ v19 ∨ v33 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c1937 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v11 := by
      rcases c1934 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v1 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v20 := by
      rcases c1935 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
    have u15 : ¬v34 := by
      rcases c1939 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u5
    have u17 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u6 a
    have u18 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u16 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v37 := by
      rcases c1909 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u6 a
      · exact absurd a n7
    have u22 : v38 := by
      rcases c580 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n7
    have u23 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v9 := by
      rcases c1940 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u25 : v10 := by
      rcases c1910 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u24
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd u6 a
      · exact absurd a n7
    have u26 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u4 a
    have u27 : ¬v16 := by
      rcases c1941 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u7
    have u28 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a n1
      · exact a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u27
      · exact absurd a u9
    have u29 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u20
      · exact absurd a u26
      · exact a
      · exact absurd a u29
      · exact absurd a u8
      · exact absurd a u23
    have u31 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u30 a
    rcases c216 with a|a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u26
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u31
  have c1943 : v39 ∨ v2 ∨ v8 ∨ v18 ∨ v19 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v11 := by
      rcases c1934 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v4 := by
      rcases c1937 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v20 := by
      rcases c1935 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
    have u13 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : v12 := by
      rcases c1942 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u14 a
    have u16 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u3 a
    have u17 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u3 a
    have u18 : ¬v34 := by
      rcases c1939 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v1 := by
      rcases c1629 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n9
    have u21 : ¬v3 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1910 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd u5 a
    · exact absurd a n6
  have c1944 : v49 ∨ v2 ∨ v8 ∨ v18 ∨ v19 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v4 := by
      rcases c1937 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : v11 := by
      rcases c1934 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u5 : v33 := by
      rcases c1943 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u6 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u7 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v20 := by
      rcases c1935 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
    have u14 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u5 a
      · exact a
    have u16 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u5 a
      · exact a
    have u17 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u5 a
    have u18 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u6 a
    have u19 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u20 : v40 := by
      rcases c1920 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd u5 a
      · exact absurd a u16
      · exact a
    have u21 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u16
    have u22 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v3 := by
      rcases c580 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n6
    have u25 : v9 := by
      rcases c1938 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u18
    have u26 : v14 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd u21 a
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    rcases c60 with a|a|a
    · exact absurd u26 a
    · exact absurd u25 a
    · exact absurd u4 a
  have c1945 : v12 ∨ ¬v2 ∨ v6 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v5 := by
      rcases c1477 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1435 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1946 : v49 ∨ v8 ∨ v18 ∨ v19 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v11 := by
      rcases c1934 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u12 : ¬v20 := by
      rcases c1935 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
    have u13 : v2 := by
      rcases c1944 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v6 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u11 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u15 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u16 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v12 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u20 a
    have u22 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u11 a
    have u23 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u11 a
    have u24 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u25 : ¬v16 := by
      rcases c861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u9
    have u26 : v15 := by
      rcases c495 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a u25
    have u27 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v7 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n0
    have u29 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u28 a
    rcases c394 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u14
    · exact absurd a u29
    · exact absurd u28 a
    · exact absurd a u22
    · exact absurd a n1
  have c1947 : v18 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v11 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v4 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c1919 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1948 : ¬v37 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    rcases c310 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n11
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n12
    · exact absurd a n2
  have c1949 : ¬v37 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1948 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1950 : v18 ∨ v8 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : v19 := by
      rcases c1946 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v29 := by
      rcases c1375 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u1 a
    have u18 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v1 := by
      rcases c1897 with a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u27 : ¬v37 := by
      rcases c1949 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u28 : ¬v10 := by
      rcases c740 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd u12 a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u29 : ¬v2 := by
      rcases c1947 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u24 a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u30 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u18
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u6
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u30 a
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u26
  have c1951 : ¬v18 ∨ v8 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : v29 := by
      rcases c1371 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u7 a
    have u17 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u16 a
    have u24 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
    have u27 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u28 : ¬v1 := by
      rcases c1897 with a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n5
    have u29 : ¬v37 := by
      rcases c1949 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n5
    have u30 : ¬v10 := by
      rcases c768 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u31 : v11 := by
      rcases c883 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u30
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u10
    have u32 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u31 a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u33 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u19
      · exact absurd a u29
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u12
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u33 a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u30
    · exact absurd a u32
    · exact absurd a u28
  have c1952 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    rcases c1801 with a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
  have c1953 : v2 ∨ v8 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v18 := by
      rcases c1951 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : v39 := by
      rcases c1950 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v35 := by
      rcases c1741 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v31 := by
      rcases c1952 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u14
    have u20 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u21 : ¬v33 := by
      rcases c1920 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u8
      · exact a
      · exact absurd a u20
      · exact absurd a u17
    have u22 : v32 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u21
    have u23 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v19 := by
      rcases c1375 with a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd u1 a
    have u26 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u23
      · exact absurd a u18
    have u27 : v6 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n4
    have u28 : v9 := by
      rcases c1938 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u12
    have u29 : ¬v3 := by
      rcases c1765 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u3
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u30 : v4 := by
      rcases c580 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a u29
      · exact absurd a n2
    have u31 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd u30 a
      · exact absurd u27 a
      · exact a
    have u32 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u30 a
    have u33 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u27 a
      · exact absurd a u32
      · exact a
      · exact absurd a n3
      · exact absurd a u31
      · exact absurd a u3
    have u34 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u27 a
      · exact absurd a n4
      · exact absurd a u32
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u31
    rcases c62 with a|a|a
    · exact absurd u33 a
    · exact absurd u28 a
    · exact absurd u34 a
  have c1954 : v8 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v18 := by
      rcases c1951 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v13 := by
      rcases c1922 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v2 := by
      rcases c1953 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : v39 := by
      rcases c1950 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v35 := by
      rcases c1741 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v31 := by
      rcases c1801 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact a
    have u18 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u19 : ¬v33 := by
      rcases c1920 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a u18
      · exact absurd a u15
    have u20 : v32 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u19
    have u21 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v19 := by
      rcases c1375 with a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd u1 a
    have u23 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u21
      · exact absurd a u16
    have u24 : v6 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n3
    have u25 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u24 a
    have u26 : ¬v4 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u24 a
    have u27 : ¬v11 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd u24 a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u28 : v12 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u25
      · exact a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u9
    · exact absurd a u25
    · exact absurd a u8
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd u28 a
  have c1955 : v13 ∨ ¬v2 ∨ v20 ∨ v27 ∨ ¬v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v6 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
    have u6 : ¬v7 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u7 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u4 a
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n0
    have u8 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u6
    rcases c52 with a|a|a
    · exact absurd u3 a
    · exact absurd u8 a
    · exact absurd u7 a
  have c1956 : ¬v8 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n3
    have u4 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
    rcases c52 with a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1957 : v14 ∨ ¬v2 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ ¬v18 ∨ v20 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v1 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u1
    have u6 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u3
      · exact a
    have u7 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v7 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd a n10
      · exact absurd a n0
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u7
  have c1958 : ¬v2 ∨ v5 ∨ v6 ∨ ¬v8 ∨ ¬v12 ∨ v13 ∨ v20 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v18 := by
      rcases c1957 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v19 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd n4 a
      · exact absurd a n1
    have u7 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u8
      · exact a
    have u10 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u4
    have u11 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u10 a
    rcases c203 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd u10 a
    · exact absurd a n9
    · exact absurd a u1
  have c1959 : v5 ∨ ¬v2 ∨ v11 ∨ v13 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v45 := by
      rcases c1628 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v6 := by
      rcases c1956 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v42 := by
      rcases c1143 with a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v12 := by
      rcases c1958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd u5 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd u8 a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u3
      · exact a
    have u15 : v41 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v26 := by
      rcases c312 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n6
    have u17 : ¬v39 := by
      rcases c1955 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v4 := by
      rcases c1577 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n8
    have u20 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u19 a
      · exact absurd n1 a
      · exact a
    have u21 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd n1 a
    have u22 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u20
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u11
    have u23 : v10 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u19 a
      · exact absurd a n8
      · exact absurd a n9
    rcases c47 with a|a|a
    · exact absurd u5 a
    · exact absurd u22 a
    · exact absurd u23 a
  have c1960 : v19 ∨ v5 ∨ v12 ∨ v18 ∨ v20 ∨ v32 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v26 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1443 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1961 : ¬v2 ∨ v5 ∨ v13 ∨ v18 ∨ v20 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v6 := by
      rcases c1956 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v12 := by
      rcases c1958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v19 := by
      rcases c1960 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u13
      · exact a
    have u15 : v11 := by
      rcases c1959 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u15 a
    have u17 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u9
    have u18 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u17 a
    rcases c203 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd u17 a
    · exact absurd a n8
    · exact absurd a u16
  have c1962 : v20 ∨ ¬v2 ∨ v5 ∨ v13 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v6 := by
      rcases c1956 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v18 := by
      rcases c1961 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v26 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u12
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u12
      · exact a
    have u15 : v12 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd u2 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u2 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v1 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd u15 a
      · exact absurd a n3
      · exact absurd a u10
    have u19 : ¬v7 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u18
      · exact a
      · exact absurd a n7
      · exact absurd a u16
    rcases c1858 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
  have c1963 : v46 ∨ ¬v2 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v6 := by
      rcases c1956 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u11 : v5 := by
      rcases c1962 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
    have u14 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n1 a
    have u15 : v12 := by
      rcases c1477 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u2 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u2 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u15 a
    rcases c346 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd n1 a
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a n0
  have c1965 : ¬v12 ∨ ¬v2 ∨ v6 ∨ ¬v8 ∨ v13 ∨ v15 ∨ v16 ∨ v19 ∨ v21 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v1 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n7
    have u5 : ¬v7 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u4
      · exact a
      · exact absurd a n10
      · exact absurd a u1
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd n3 a
  have c1966 : ¬v34 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    rcases c346 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n10
  have c1967 : v49 ∨ v1 ∨ ¬v2 ∨ ¬v7 ∨ v13 ∨ v27 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v20 := by
      rcases c1963 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : ¬v4 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u3 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u6 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u7 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u8 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u12 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u13 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : v14 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n8
      · exact a
    have u16 : ¬v12 := by
      rcases c1965 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n0
    have u17 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd u6 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd u6 a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u6 a
      · exact absurd u15 a
      · exact a
    have u20 : v26 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u11
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u21 : ¬v34 := by
      rcases c1966 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n6
    have u22 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v33 := by
      rcases c1848 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact a
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : v39 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u22
      · exact a
    have u29 : v37 := by
      rcases c346 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u17
      · exact a
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n6
    rcases c153 with a|a
    · exact absurd u28 a
    · exact absurd u29 a
  have c1968 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ ¬v20 ∨ ¬v26 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : v8 := by
      rcases c1864 with a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : v9 := by
      rcases c536 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd n5 a
      · exact absurd a u3
    have u10 : v14 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u8
    rcases c43 with a|a|a
    · exact absurd u4 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c1969 : ¬v7 ∨ ¬v2 ∨ v13 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c1967 with a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1970 : v27 ∨ ¬v2 ∨ v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v6 := by
      rcases c1956 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v7 := by
      rcases c1969 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v20 := by
      rcases c1963 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v12 := by
      rcases c1965 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v5 := by
      rcases c1477 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v26 := by
      rcases c1968 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v28 := by
      rcases c1511 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a u13
      · exact absurd a n0
    have u16 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u14 a
    rcases c1451 with a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
  have c1971 : v26 ∨ ¬v2 ∨ v5 ∨ v6 ∨ ¬v7 ∨ v12 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n4 a
    have u2 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
    rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1972 : ¬v2 ∨ v7 ∨ v13 ∨ v19 ∨ v21 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v27 := by
      rcases c1970 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v20 := by
      rcases c1433 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v14 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd u2 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u2 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v5 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v4 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n0 a
    rcases c542 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd u16 a
    · exact absurd a n9
    · exact absurd a n10
  have c1973 : v13 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v27 := by
      rcases c1970 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v6 := by
      rcases c1956 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : v33 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u23 : ¬v37 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u24 : ¬v5 := by
      rcases c1477 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u25 : v40 := by
      rcases c1030 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u23
      · exact a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v7 := by
      rcases c1971 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u24
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u28 : v21 := by
      rcases c1972 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u29 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u28 a
    rcases c1878 with a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u30
    · exact absurd a n3
    · exact absurd a u29
    · exact absurd u1 a
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1974 : v12 ∨ ¬v2 ∨ v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v27 := by
      rcases c1970 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v6 := by
      rcases c1956 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : v19 := by
      rcases c1973 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : v11 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u11
    have u16 : ¬v35 := by
      rcases c1871 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd u3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u15 a
    have u18 : v7 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u18 a
    rcases c203 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd u18 a
    · exact absurd a n5
    · exact absurd a u17
  have c1975 : ¬v19 ∨ ¬v2 ∨ v6 ∨ v13 ∨ v14 ∨ ¬v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v35 := by
      rcases c1871 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd n5 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v7 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    rcases c203 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd u7 a
    · exact absurd a n8
    · exact absurd a n4
  exact ⟨c1931, c1935, c1945, c1952, c1954, c1956, c1966, c1970, c1974, c1975⟩
