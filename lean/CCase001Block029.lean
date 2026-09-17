import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1450-1499 of the 2915-step refutation of ccase001: 123 core clauses and 62 earlier-derived ones give 15 more. -/
theorem CCase001_block029
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c78 : v11 ∨ v14 ∨ v12 ∨ v9 ∨ v13 ∨ v8)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
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
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c133 : ¬v34 ∨ ¬v30)
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
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c170 : ¬v46 ∨ ¬v43)
    (c175 : ¬v46 ∨ ¬v44)
    (c179 : ¬v46 ∨ ¬v45)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c197 : ¬v40 ∨ v33 ∨ v41 ∨ v34 ∨ v47 ∨ v32 ∨ v48 ∨ v39)
    (c198 : v36 ∨ v43 ∨ v23 ∨ v16 ∨ v29 ∨ v17 ∨ ¬v22 ∨ v28 ∨ v35 ∨ v24 ∨ v15 ∨ v44 ∨ v31 ∨ v49)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c264 : ¬v46 ∨ v36 ∨ v1 ∨ v39 ∨ v11 ∨ v12 ∨ v5 ∨ v10 ∨ v4 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v47)
    (c270 : v36 ∨ v22 ∨ v23 ∨ v35 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v37)
    (c272 : ¬v27 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v19 ∨ v26 ∨ v34)
    (c281 : v43 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v27 ∨ v22 ∨ v42 ∨ v20 ∨ v33 ∨ v19 ∨ v26 ∨ v29 ∨ v48 ∨ v49)
    (c297 : v11 ∨ v4 ∨ v48 ∨ v6 ∨ v12 ∨ v13 ∨ ¬v5 ∨ v47)
    (c301 : ¬v26 ∨ v33 ∨ v18 ∨ v25 ∨ v19 ∨ v20 ∨ v34 ∨ v27)
    (c327 : v22 ∨ ¬v15 ∨ v21 ∨ v28 ∨ v9 ∨ v16 ∨ v23 ∨ v8)
    (c361 : ¬v46 ∨ v39 ∨ v4 ∨ v32 ∨ v38 ∨ v7 ∨ v5 ∨ v33 ∨ v42 ∨ v31 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c374 : ¬v34 ∨ v6 ∨ v28 ∨ v27 ∨ v22 ∨ v36 ∨ v5 ∨ v7 ∨ v35 ∨ v41 ∨ v29 ∨ v40 ∨ v33 ∨ v48)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c403 : ¬v46 ∨ v39 ∨ v4 ∨ v45 ∨ v38 ∨ v40 ∨ v5 ∨ v47)
    (c404 : ¬v18 ∨ v25 ∨ v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19)
    (c408 : v15 ∨ v21 ∨ v16 ∨ v1 ∨ v7 ∨ v14 ∨ v9 ∨ ¬v8)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c418 : ¬v8 ∨ v20 ∨ v16 ∨ v7 ∨ v35 ∨ v15 ∨ v14 ∨ v1 ∨ v6 ∨ v29 ∨ v9 ∨ v13 ∨ v30 ∨ v22)
    (c423 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v23 ∨ v35 ∨ v42 ∨ v30)
    (c459 : ¬v33 ∨ v26 ∨ v4 ∨ v40 ∨ v32 ∨ v38 ∨ v25 ∨ v5 ∨ v24 ∨ v34 ∨ v31 ∨ v6 ∨ v41 ∨ v47)
    (c478 : ¬v33 ∨ v40 ∨ v32 ∨ v41 ∨ v26 ∨ v25 ∨ v27 ∨ v34)
    (c485 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v30 ∨ v42 ∨ v35 ∨ v28)
    (c494 : v36 ∨ ¬v35 ∨ v1 ∨ v42 ∨ v28 ∨ v6 ∨ v7 ∨ v29 ∨ v33 ∨ v34 ∨ v26 ∨ v27 ∨ v40 ∨ v49)
    (c498 : ¬v25 ∨ v18 ∨ v19 ∨ v26 ∨ v17 ∨ v24 ∨ v32 ∨ v31)
    (c519 : ¬v46 ∨ v39 ∨ v4 ∨ v26 ∨ v38 ∨ v6 ∨ v5 ∨ v24 ∨ v25 ∨ v32 ∨ v41 ∨ v45 ∨ v47 ∨ v48)
    (c522 : v22 ∨ v42 ∨ v37 ∨ v17 ∨ v24 ∨ v21 ∨ v10 ∨ v28 ∨ ¬v15 ∨ v9 ∨ v16 ∨ v8 ∨ v29 ∨ v36)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c536 : v27 ∨ v6 ∨ v13 ∨ v12 ∨ v19 ∨ v7 ∨ v9 ∨ v5 ∨ v16 ∨ v21 ∨ v23 ∨ v15 ∨ ¬v20 ∨ v28)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c680 : ¬v19 ∨ v11 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c861 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1141 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1300 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v35)
    (c1316 : v43 ∨ ¬v2 ∨ ¬v10 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1349 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19)
    (c1375 : v29 ∨ ¬v19 ∨ ¬v22)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1462 : ¬v35 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1465 : ¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1468 : ¬v3 ∨ ¬v2 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c1469 : ¬v17 ∨ v1 ∨ v8 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c1535 : ¬v2 ∨ ¬v1 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v19)
    (c1541 : v20 ∨ v6 ∨ v13 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1570 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1579 : ¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c1590 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v22)
    (c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16)
    (c1684 : ¬v24 ∨ v8 ∨ v9 ∨ ¬v15)
    (c1695 : ¬v23 ∨ v7 ∨ v8 ∨ v14 ∨ v41 ∨ v42 ∨ v49)
    (c1697 : ¬v22 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v11 ∨ v14 ∨ ¬v21)
    (c1704 : v15 ∨ v1 ∨ v8 ∨ v22 ∨ v29 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1705 : ¬v21 ∨ v8 ∨ v14 ∨ v22 ∨ ¬v24)
    (c1707 : ¬v36 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1755 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c1858 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c1867 : ¬v14 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1878 : ¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c1920 : v41 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33 ∨ v34 ∨ v40)
    (c1952 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38)
    (c1954 : v8 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1979 : v7 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c2011 : v34 ∨ v6 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c2047 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ ¬v19 ∨ v20)
    (c2049 : v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2066 : v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2069 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2070 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c2071 : v39 ∨ v3 ∨ v4 ∨ v5 ∨ v45 ∨ ¬v46 ∨ v47)
    (c2073 : v33 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v24 ∨ v34 ∨ v37 ∨ v38 ∨ v47 ∨ v48 ∨ v49)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2076 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v24)
    : (¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24) ∧ (¬v19 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11) ∧ (¬v27 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v33 ∨ v38 ∨ v40 ∨ v41 ∨ v47) ∧ (¬v12 ∨ ¬v2 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v19 ∨ v43 ∨ v44 ∨ v45) ∧ (v31 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v37 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47) ∧ (¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48) ∧ (¬v15 ∨ v8 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v28) ∧ (v22 ∨ v1 ∨ v4 ∨ v5 ∨ v7 ∨ v8 ∨ v14 ∨ v15 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47) ∧ (v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49) ∧ (v18 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v19 ∨ v20 ∨ v40 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v26 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v15 ∨ ¬v20) ∧ (v4 ∨ ¬v2 ∨ v9 ∨ v11 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v20 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ ¬v10) := by
  have c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2076 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
  have c2078 : v24 ∨ v3 ∨ v5 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v26 ∨ v33 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n8
      · exact a
      · exact absurd a n13
    have u2 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    rcases c2073 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c2079 : ¬v19 ∨ v6 ∨ v7 ∨ ¬v12 ∨ v29 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c1375 with a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
    have u4 : ¬v28 := by
      rcases c1755 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v13 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n10
    rcases c73 with a|a|a
    · exact absurd n3 a
    · exact absurd u7 a
    · exact absurd u6 a
  have c2080 : v7 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v17 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n9
    have u6 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n9
    have u7 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
    have u13 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n8
      · exact a
    have u14 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : v12 := by
      rcases c2078 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v19 := by
      rcases c2079 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd u19 a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v14 := by
      rcases c1867 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u19 a
      · exact absurd a u20
    have u22 : v13 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd u19 a
      · exact absurd a u20
    have u23 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u19 a
    have u24 : ¬v23 := by
      rcases c1695 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    have u25 : v25 := by
      rcases c1952 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u24
      · exact absurd a n8
      · exact a
      · exact absurd a u5
      · exact absurd a u7
    have u26 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : v18 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u1
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u15
    have u28 : v21 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u21
      · exact a
      · exact absurd a u26
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    rcases c97 with a|a
    · exact absurd u27 a
    · exact absurd u28 a
  have c2081 : ¬v24 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v11 ∨ ¬v12 ∨ v26 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v33 := by
      rcases c1920 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd a n12
    have u9 : ¬v19 := by
      rcases c2079 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u10 : ¬v14 := by
      rcases c1867 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n6 a
      · exact absurd a u9
    have u11 : v13 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u9
    have u12 : v21 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n17
    have u13 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n6 a
    rcases c1705 with a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd n0 a
  have c2082 : v11 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
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
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n6
    have u6 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u4
    have u7 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
    have u10 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n6
    have u11 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u3
    have u17 : v24 := by
      rcases c2080 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
    have u24 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u25 : ¬v30 := by
      rcases c1033 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u11
    have u26 : ¬v29 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u19
      · exact a
      · exact absurd a u25
      · exact absurd a u5
    have u27 : ¬v12 := by
      rcases c2081 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u16
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u28 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u18
    have u29 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n6
      · exact a
      · exact absurd a u28
      · exact absurd a u15
    have u30 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u29 a
    rcases c478 with a|a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u15
    · exact absurd a u30
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u23
  have c2083 : ¬v19 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd n4 a
    · exact absurd a n5
  have c2084 : ¬v10 ∨ ¬v2 ∨ v3 ∨ v4 ∨ ¬v5 ∨ v9 ∨ v11 ∨ v12 ∨ v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n4 a
    have u3 : v13 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd n4 a
      · exact absurd a n11
    have u4 : v8 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
    rcases c46 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n0 a
  have c2085 : ¬v27 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v33 ∨ v38 ∨ v40 ∨ v41 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n4 a
    rcases c459 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
  have c2086 : v4 ∨ ¬v2 ∨ v3 ∨ v6 ∨ v9 ∨ v11 ∨ v12 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v10 := by
      rcases c2082 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n5
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
    have u7 : ¬v5 := by
      rcases c2084 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n8
    have u9 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n8
      · exact a
      · exact absurd a u3
      · exact absurd a u12
    have u14 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v27 := by
      rcases c2085 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u18 : v25 := by
      rcases c478 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n7
      · exact a
      · exact absurd a u17
      · exact absurd a u14
    have u19 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v20 := by
      rcases c1316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u21 a
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd a n5
  have c2087 : v3 ∨ ¬v2 ∨ v4 ∨ v9 ∨ v11 ∨ v12 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v10 := by
      rcases c2082 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
    have u6 : ¬v5 := by
      rcases c2084 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v6 := by
      rcases c2086 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v1 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u9 : ¬v7 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u10 : v13 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd u7 a
      · exact absurd a n8
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a u9
    have u11 : v8 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
    rcases c46 with a|a|a
    · exact absurd u11 a
    · exact absurd u10 a
    · exact absurd u1 a
  have c2088 : ¬v12 ∨ ¬v2 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v19 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u3 : v1 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u1
    have u4 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
    rcases c1535 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u3 a
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n6
  have c2089 : v11 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v9 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v10 := by
      rcases c2082 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n0
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
    have u7 : ¬v12 := by
      rcases c2088 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v5 := by
      rcases c2084 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v26 := by
      rcases c2087 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n5
    have u11 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u9 a
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
    have u18 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u19 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
    have u20 : v20 := by
      rcases c1316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u20 a
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd a n0
  have c2090 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v23 ∨ v24 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n4 a
      · exact a
    rcases c198 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n12
  have c2091 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n4 a
      · exact a
    rcases c2090 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2092 : v49 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v27 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u2 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v14 := by
      rcases c78 with a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n4
    have u5 : v21 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd u4 a
      · exact a
    have u6 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u11 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
    have u15 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
    rcases c2091 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd u14 a
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n0
  have c2093 : ¬v37 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd n3 a
      · exact a
    rcases c403 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
  have c2094 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    rcases c197 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u1
  have c2095 : ¬v22 ∨ v5 ∨ v12 ∨ ¬v20 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v29 := by
      rcases c1300 with a|a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
    have u3 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v40 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u3
      · exact a
    rcases c2094 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n6
  have c2096 : ¬v20 ∨ v1 ∨ v5 ∨ v8 ∨ v12 ∨ v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u4 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v46 := by
      rcases c1954 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v22 := by
      rcases c2095 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v29 := by
      rcases c1704 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n8
    have u12 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a n6
  have c2097 : ¬v40 ∨ v1 ∨ v4 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd n7 a
      · exact a
    rcases c264 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n8
  have c2098 : v19 ∨ v1 ∨ v5 ∨ v8 ∨ v12 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd a n9
    have u2 : v46 := by
      rcases c1954 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v25 := by
      rcases c478 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v15 := by
      rcases c1704 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n12
    have u12 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u11 a
      · exact a
    rcases c498 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u4
  have c2099 : ¬v15 ∨ v8 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    rcases c327 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n1
  have c2100 : v22 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v9 ∨ v11 ∨ v12 ∨ v19 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v3 := by
      rcases c2089 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v13 := by
      rcases c2092 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n10
    have u11 : ¬v20 := by
      rcases c2096 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v14 := by
      rcases c1468 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd u9 a
      · exact a
      · exact absurd a u11
    have u13 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u12 a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v40 := by
      rcases c2097 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n10
    have u15 : v26 := by
      rcases c2098 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v16 := by
      rcases c1621 with a|a|a|a
      · exact absurd u15 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u21 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
    have u22 : ¬v18 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a n7
    have u23 : ¬v15 := by
      rcases c2099 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u19
    have u24 : v33 := by
      rcases c301 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n8
    have u25 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n12
    rcases c127 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c2101 : v22 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v9 ∨ v11 ∨ v12 ∨ v19 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u2 : v3 := by
      rcases c2089 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u7 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u8 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u9 : v13 := by
      rcases c2092 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a n9
    have u11 : ¬v20 := by
      rcases c2096 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v14 := by
      rcases c1468 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd u9 a
      · exact a
      · exact absurd a u11
    have u13 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u12 a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v40 := by
      rcases c2097 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n9
    have u15 : v34 := by
      rcases c2100 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
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
    have u16 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n11
    have u23 : v15 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n11
    have u24 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    have u25 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
    have u26 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a u14
    have u27 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    have u28 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u23 a
      · exact a
    have u29 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u23 a
      · exact a
    have u30 : v28 := by
      rcases c522 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u13
      · exact a
      · exact absurd u23 a
      · exact absurd a n4
      · exact absurd a u28
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u22
    rcases c121 with a|a
    · exact absurd u30 a
    · exact absurd u26 a
  have c2102 : v4 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v11 ∨ v12 ∨ v22 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v3 := by
      rcases c2089 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n8
    have u10 : ¬v20 := by
      rcases c2096 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : v19 := by
      rcases c2101 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n10
    have u16 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u14
      · exact a
    have u18 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    have u23 : v36 := by
      rcases c485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd u15 a
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u17
    have u24 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u23 a
    rcases c361 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u25
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2103 : v47 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v9 ∨ v11 ∨ v12 ∨ v27 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v3 := by
      rcases c2089 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n0
    have u8 : v22 := by
      rcases c2102 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v13 := by
      rcases c2092 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u12 : ¬v20 := by
      rcases c2096 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v14 := by
      rcases c1468 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd u11 a
      · exact a
      · exact absurd a u12
    have u14 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u13 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v40 := by
      rcases c2097 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n0
    have u16 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u17 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a u16
      · exact absurd a u15
    have u18 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v41 := by
      rcases c478 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u15
      · exact absurd a u19
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u18
    rcases c1432 with a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
  have c2104 : v47 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v9 ∨ v11 ∨ v12 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v3 := by
      rcases c2089 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v27 := by
      rcases c2103 with a|a|a|a|a|a|a|a|a|a
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
    have u8 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
    have u13 : ¬v15 := by
      rcases c2099 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
    have u14 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n8
    have u15 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n7
    have u21 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n0
    have u22 : v20 := by
      rcases c1028 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
    rcases c98 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c2105 : ¬v19 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v12 ∨ v37 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact a
    have u7 : v14 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v13 := by
      rcases c530 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd u7 a
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n1
    rcases c73 with a|a|a
    · exact absurd n4 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c2106 : v22 ∨ v1 ∨ v4 ∨ v5 ∨ v7 ∨ v8 ∨ v14 ∨ v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
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
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n8
    have u6 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n10
    have u7 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v23 := by
      rcases c1695 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n10
    have u16 : v36 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd u6 a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u7
    have u17 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u16 a
    rcases c361 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2107 : v15 ∨ v1 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v22 := by
      rcases c2106 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n11
    have u9 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v16 := by
      rcases c861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u6
    have u11 : ¬v21 := by
      rcases c1697 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u12 : v35 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
    rcases c1462 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n12
    · exact absurd a n13
  have c2108 : v4 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v11 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v3 := by
      rcases c2089 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n5
    have u11 : v12 := by
      rcases c2104 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v19 := by
      rcases c2105 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v10 := by
      rcases c1349 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a u12
    have u14 : ¬v14 := by
      rcases c1867 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd u11 a
      · exact absurd a u12
    have u15 : v15 := by
      rcases c2107 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v22 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd u15 a
      · exact absurd a u16
      · exact a
    have u19 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd u15 a
    have u20 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u15 a
    have u21 : v35 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u18 a
      · exact a
    have u25 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u21 a
      · exact a
    have u27 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u21 a
      · exact a
    have u28 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u21 a
      · exact a
    have u29 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u30 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a n5
      · exact absurd a n6
    have u31 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n7
    have u32 : v42 := by
      rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u31
      · exact absurd u21 a
      · exact absurd a u4
      · exact a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u30
      · exact absurd a n7
    have u33 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u32 a
      · exact a
    rcases c519 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u34
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u33
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u27
    · exact absurd a u29
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a n6
  have c2109 : v20 ∨ ¬v2 ∨ ¬v3 ∨ ¬v8 ∨ v14 ∨ v21 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v35 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v13 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v12 := by
      rcases c51 with a|a|a
      · exact absurd n3 a
      · exact absurd u7 a
      · exact a
    rcases c1468 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a u8
    · exact absurd u7 a
    · exact absurd a n4
    · exact absurd a n0
  have c2110 : v19 ∨ ¬v2 ∨ ¬v3 ∨ v4 ∨ ¬v8 ∨ v11 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u5 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u6 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u7 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v14 := by
      rcases c2109 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd n4 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v40 := by
      rcases c2097 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n9
    have u13 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a u12
    have u14 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c142 with a|a
    · exact absurd u13 a
    · exact absurd u14 a
  have c2111 : ¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u2
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n6
  have c2112 : ¬v14 ∨ v1 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v8 ∨ v11 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd n5 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n0 a
    have u4 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v40 := by
      rcases c2097 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a n11
    have u6 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n11
    have u7 : v27 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v33 := by
      rcases c1878 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c272 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a u6
  have c2113 : ¬v28 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
  have c2114 : v21 ∨ ¬v2 ∨ ¬v3 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v27 := by
      rcases c1979 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v28 := by
      rcases c2113 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    rcases c1570 with a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n13
  have c2115 : v20 ∨ ¬v2 ∨ ¬v3 ∨ ¬v8 ∨ v9 ∨ v14 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v13 := by
      rcases c2114 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v12 := by
      rcases c51 with a|a|a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact a
    rcases c1468 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a n0
  have c2116 : v48 ∨ ¬v2 ∨ v4 ∨ v9 ∨ v11 ∨ ¬v15 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : v8 := by
      rcases c2108 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u7 : v3 := by
      rcases c2089 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
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
    have u10 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u11 : ¬v14 := by
      rcases c2112 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u12 : ¬v22 := by
      rcases c2110 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    rcases c2115 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
  have c2117 : v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v28 := by
      rcases c2113 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1858 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2118 : ¬v13 ∨ ¬v2 ∨ ¬v3 ∨ ¬v8 ∨ v14 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v12 := by
      rcases c51 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    rcases c1468 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
  have c2119 : v49 ∨ ¬v2 ∨ ¬v3 ∨ v4 ∨ ¬v8 ∨ v14 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c2118 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n8
    have u2 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u5 : v34 := by
      rcases c2011 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n0
    have u9 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u8
  have c2120 : v20 ∨ ¬v2 ∨ v4 ∨ v9 ∨ v11 ∨ v14 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v15 := by
      rcases c2116 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n9
    have u2 : v3 := by
      rcases c2089 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v8 := by
      rcases c2108 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u6 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u7 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v13 := by
      rcases c2118 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n0
    have u11 : v21 := by
      rcases c2119 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v27 := by
      rcases c1979 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n9
    have u22 : ¬v22 := by
      rcases c2091 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u13
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n9
    rcases c418 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u18
    · exact absurd a u22
  have c2121 : v18 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v19 ∨ v20 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v27 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v33 := by
      rcases c1878 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n7
  have c2122 : v11 ∨ ¬v2 ∨ v4 ∨ v9 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v15 := by
      rcases c2116 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    have u2 : v3 := by
      rcases c2089 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v8 := by
      rcases c2108 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u6 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u7 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u8 : v14 := by
      rcases c2120 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u3 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v40 := by
      rcases c2097 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd u4 a
      · exact absurd a n6
    have u13 : v18 := by
      rcases c2121 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v34 := by
      rcases c2011 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
    have u22 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u12
    have u23 : v25 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n4
    rcases c117 with a|a
    · exact absurd u23 a
    · exact absurd u22 a
  have c2123 : v4 ∨ ¬v2 ∨ v9 ∨ v11 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v3 := by
      rcases c2089 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v8 := by
      rcases c2108 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u6 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u7 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
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
    have u11 : ¬v15 := by
      rcases c2116 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u12 : v19 := by
      rcases c2122 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v14 := by
      rcases c408 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd u2 a
    have u17 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u2 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v40 := by
      rcases c2097 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd u3 a
      · exact absurd a n5
    have u21 : v26 := by
      rcases c2047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd u12 a
      · exact absurd a n4
    have u22 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n7
    have u30 : v41 := by
      rcases c374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u29
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u28
      · exact a
      · exact absurd a u26
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a n6
    have u31 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u30 a
      · exact a
    rcases c264 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u29
    · exact absurd a u5
    · exact absurd a u31
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u32
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n5
  have c2124 : ¬v26 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v15 ∨ ¬v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n8 a
    rcases c536 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd n8 a
    · exact absurd a u3
  have c2125 : v4 ∨ ¬v2 ∨ v9 ∨ v11 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v20 := by
      rcases c2123 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v3 := by
      rcases c2089 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u10 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u11 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u12 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    have u13 : v8 := by
      rcases c2108 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : v14 := by
      rcases c408 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd u13 a
    have u15 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v26 := by
      rcases c2124 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd u3 a
    have u19 : ¬v40 := by
      rcases c2097 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a n4
    have u20 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u19
    have u21 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v28 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
    have u25 : v39 := by
      rcases c1474 with a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u18
      · exact a
      · exact absurd a u19
      · exact absurd a u23
    have u26 : v27 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u18
      · exact a
      · exact absurd a u24
    have u27 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u25 a
    rcases c2085 with a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd u20 a
    · exact absurd a u27
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a n4
  have c2126 : ¬v20 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ ¬v10 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u4 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n5 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd n3 a
  exact ⟨c2077, c2083, c2085, c2088, c2091, c2093, c2094, c2099, c2106, c2111, c2117, c2121, c2124, c2125, c2126⟩
