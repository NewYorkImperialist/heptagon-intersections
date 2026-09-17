import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1100-1149 of the 2915-step refutation of ccase001: 114 core clauses and 51 earlier-derived ones give 20 more. -/
theorem CCase001_block022
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c87 : ¬v16 ∨ ¬v18)
    (c89 : ¬v16 ∨ ¬v20)
    (c93 : ¬v17 ∨ ¬v20)
    (c96 : ¬v18 ∨ ¬v20)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c123 : v22 ∨ v27 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v26)
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
    (c138 : ¬v35 ∨ ¬v31)
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
    (c153 : ¬v39 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c169 : ¬v45 ∨ ¬v43)
    (c174 : ¬v44 ∨ ¬v45)
    (c181 : ¬v48 ∨ ¬v45)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c243 : ¬v15 ∨ v29 ∨ v42 ∨ v21 ∨ v37 ∨ v13 ∨ v8 ∨ v16 ∨ v14 ∨ v22 ∨ v23 ∨ v20 ∨ v27 ∨ v36)
    (c266 : v29 ∨ ¬v28 ∨ v35 ∨ v34 ∨ v21 ∨ v27 ∨ v22 ∨ v20)
    (c272 : ¬v27 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v19 ∨ v26 ∨ v34)
    (c279 : v22 ∨ v21 ∨ v44 ∨ v1 ∨ v49 ∨ v16 ∨ ¬v15 ∨ v23 ∨ v17 ∨ v14 ∨ v10 ∨ v43 ∨ v8 ∨ v24)
    (c281 : v43 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v27 ∨ v22 ∨ v42 ∨ v20 ∨ v33 ∨ v19 ∨ v26 ∨ v29 ∨ v48 ∨ v49)
    (c289 : v29 ∨ v22 ∨ v30 ∨ v24 ∨ v31 ∨ v17 ∨ ¬v23 ∨ v16)
    (c292 : v22 ∨ ¬v15 ∨ v14 ∨ v11 ∨ v16 ∨ v21 ∨ v17 ∨ v2 ∨ v23 ∨ v18 ∨ v7 ∨ v1 ∨ v8 ∨ v25)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c327 : v22 ∨ ¬v15 ∨ v21 ∨ v28 ∨ v9 ∨ v16 ∨ v23 ∨ v8)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c357 : v43 ∨ v36 ∨ v30 ∨ v44 ∨ v1 ∨ v3 ∨ v2 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v37 ∨ v31 ∨ v47)
    (c367 : ¬v45 ∨ v3 ∨ v39 ∨ v37 ∨ v2 ∨ v38 ∨ v44 ∨ v46)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c423 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v23 ∨ v35 ∨ v42 ∨ v30)
    (c451 : ¬v45 ∨ v4 ∨ v37 ∨ v46 ∨ v3 ∨ v39 ∨ v44 ∨ v38)
    (c462 : ¬v39 ∨ v32 ∨ v47 ∨ v40 ∨ v38 ∨ v31 ∨ v46 ∨ v33)
    (c485 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v30 ∨ v42 ∨ v35 ∨ v28)
    (c486 : v48 ∨ v21 ∨ v12 ∨ v8 ∨ v13 ∨ v11 ∨ v1 ∨ v7 ∨ ¬v14 ∨ v4 ∨ v20 ∨ v43 ∨ v18 ∨ v49)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c542 : v12 ∨ v10 ∨ v3 ∨ v5 ∨ v11 ∨ ¬v4 ∨ v46 ∨ v47)
    (c580 : ¬v45 ∨ v38 ∨ v44 ∨ v37 ∨ v4 ∨ v2 ∨ v3 ∨ v46)
    (c581 : v43 ∨ v9 ∨ v44 ∨ v1 ∨ v8 ∨ v3 ∨ ¬v2 ∨ v10)
    (c597 : v22 ∨ ¬v15 ∨ v23 ∨ v21 ∨ v16 ∨ v14 ∨ v28 ∨ v8)
    (c599 : v43 ∨ ¬v37 ∨ v44 ∨ v30 ∨ v31 ∨ v38 ∨ v36 ∨ v29)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c626 : v20 ∨ ¬v3 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v46 ∨ v48)
    (c637 : ¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c768 : v21 ∨ ¬v10 ∨ v16 ∨ v19 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c788 : v10 ∨ v2 ∨ ¬v12 ∨ v16 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c789 : ¬v2 ∨ ¬v9 ∨ ¬v12 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c864 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1031 : v34 ∨ v20 ∨ ¬v27 ∨ v30 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1168 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1195 : v11 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1244 : v39 ∨ v33 ∨ ¬v40 ∨ v46 ∨ v47 ∨ v48)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1347 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1465 : ¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1481 : ¬v29 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1500 : v32 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v26 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48)
    (c1517 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1541 : v20 ∨ v6 ∨ v13 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1560 : ¬v15 ∨ v8 ∨ v14 ∨ v22 ∨ v23 ∨ v28)
    (c1575 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1587 : ¬v3 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c1590 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v22)
    (c1628 : v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1671 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22)
    (c1675 : v11 ∨ ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1684 : ¬v24 ∨ v8 ∨ v9 ∨ ¬v15)
    (c1688 : ¬v2 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1689 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10)
    (c1690 : ¬v7 ∨ v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1695 : ¬v23 ∨ v7 ∨ v8 ∨ v14 ∨ v41 ∨ v42 ∨ v49)
    (c1703 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1707 : ¬v36 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1714 : v22 ∨ v1 ∨ v8 ∨ ¬v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1715 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48)
    (c1716 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48)
    (c1723 : v24 ∨ v1 ∨ v8 ∨ v15 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v5 ∨ ¬v4 ∨ v37 ∨ v38 ∨ v39 ∨ ¬v45 ∨ v46) ∧ (v35 ∨ v5 ∨ v12 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v46 ∨ v47 ∨ v48) ∧ (v5 ∨ v12 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v34 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v39 ∨ v46) ∧ (¬v35 ∨ ¬v39 ∨ v46 ∨ v47) ∧ (¬v34 ∨ ¬v37 ∨ v43 ∨ v44) ∧ (v23 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v24 ∨ v35 ∨ ¬v37 ∨ v43 ∨ v44 ∨ v48) ∧ (¬v15 ∨ v8 ∨ ¬v12 ∨ ¬v13 ∨ v22) ∧ (v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35) ∧ (v46 ∨ v1 ∨ v8 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v33 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v24) ∧ (¬v9 ∨ v1 ∨ v8 ∨ v13 ∨ ¬v15 ∨ v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v31 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v9 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v24) ∧ (¬v9 ∨ ¬v3 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ v1 ∨ v7 ∨ v8 ∨ v13 ∨ v15 ∨ v21 ∨ ¬v23 ∨ v41 ∨ v42 ∨ v49) ∧ (v22 ∨ v1 ∨ v8 ∨ ¬v9 ∨ v13 ∨ v19 ∨ v24 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v20 ∨ v1 ∨ v8 ∨ v22 ∨ ¬v23 ∨ v43 ∨ v44 ∨ v49) ∧ (v37 ∨ v2 ∨ v3 ∨ v4 ∨ v22 ∨ v28 ∨ ¬v29 ∨ ¬v45 ∨ v46 ∨ v49) ∧ (¬v37 ∨ v1 ∨ v2 ∨ v3 ∨ v30 ∨ v31 ∨ v33 ∨ v40 ∨ v43 ∨ v44 ∨ v47) := by
  have c1724 : v27 ∨ ¬v3 ∨ v10 ∨ ¬v12 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v2 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u4 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n18
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n15
    have u5 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n17
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n11
    rcases c73 with a|a|a
    · exact absurd n3 a
    · exact absurd u4 a
    · exact absurd u5 a
  have c1725 : v28 ∨ v4 ∨ v16 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v40 := by
      rcases c1244 with a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n10
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v3 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n16
      · exact a
      · exact absurd a n15
      · exact absurd a u5
      · exact absurd a n14
    have u8 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n18
      · exact absurd a n19
    have u9 : ¬v10 := by
      rcases c768 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u10 : ¬v12 := by
      rcases c1724 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u7 a
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n18
      · exact absurd a n19
    have u11 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u12 : v11 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u13 : ¬v7 := by
      rcases c30 with a|a|a
      · exact absurd u11 a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u11 a
      · exact absurd u7 a
      · exact a
    have u15 : v13 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n18
      · exact a
      · exact absurd a u10
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a n17
      · exact absurd u11 a
    have u16 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n19
      · exact absurd a u13
      · exact a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a u8
    rcases c72 with a|a|a
    · exact absurd u16 a
    · exact absurd u15 a
    · exact absurd u12 a
  have c1726 : ¬v5 ∨ ¬v4 ∨ v37 ∨ v38 ∨ v39 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n5 a
    rcases c367 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n6
  have c1727 : v49 ∨ v1 ∨ v8 ∨ v15 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u13 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n0
    have u14 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
    have u16 : ¬v37 := by
      rcases c1716 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u17 : v36 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u6
    have u18 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v18 := by
      rcases c1723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u21 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u8
    have u24 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u1
      · exact a
    have u25 : ¬v10 := by
      rcases c768 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u26 : v4 := by
      rcases c1725 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u27 : ¬v5 := by
      rcases c1726 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd u2 a
      · exact absurd a n8
    have u28 : v12 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u27
      · exact a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u29 : ¬v3 := by
      rcases c1724 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u25
      · exact absurd u28 a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n0
    have u30 : v2 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u29
      · exact absurd a u19
      · exact absurd a u16
      · exact a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a n8
    have u31 : v9 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u29
      · exact absurd u30 a
      · exact absurd a u25
    rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd u31 a
    · exact absurd u28 a
    · exact absurd a u21
    · exact absurd a n5
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n10
    · exact absurd a n0
  have c1728 : v28 ∨ v8 ∨ ¬v12 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v14 := by
      rcases c1560 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u2 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    rcases c327 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n1
  have c1729 : v35 ∨ v5 ∨ v12 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u3 a
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd n7 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n4
  have c1730 : v28 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v14 := by
      rcases c1560 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : v13 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
    have u4 : v9 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n4
    rcases c63 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd u1 a
  have c1731 : v5 ∨ v12 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v35 := by
      rcases c1729 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    rcases c1435 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1732 : v27 ∨ ¬v3 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v20 ∨ v23 ∨ v25 ∨ ¬v35 ∨ v37 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n11
    · exact absurd a n13
  have c1733 : v34 ∨ v6 ∨ ¬v12 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v16 := by
      rcases c678 with a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n0
      · exact absurd a n7
    have u3 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : v15 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
    have u5 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n9
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n0
    have u6 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n2 a
    have u7 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u5 a
    rcases c1590 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a n5
  have c1734 : v22 ∨ v1 ∨ ¬v3 ∨ ¬v4 ∨ v8 ∨ ¬v15 ∨ v19 ∨ v23 ∨ v37 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v28 := by
      rcases c1730 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n7
    have u10 : v12 := by
      rcases c1731 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v35 := by
      rcases c1732 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n2 a
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u13
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
    have u17 : v34 := by
      rcases c1733 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a u15
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u17 a
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd u9 a
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u19
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a n12
    · exact absurd a n13
  have c1735 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n5 a
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
  have c1736 : ¬v3 ∨ v8 ∨ ¬v12 ∨ ¬v15 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v37 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v28 := by
      rcases c1728 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v35 := by
      rcases c1732 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u8
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v34 := by
      rcases c1735 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u7 a
      · exact a
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v29 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u3
    have u14 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u13 a
    rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a n12
  have c1737 : v12 ∨ ¬v3 ∨ v4 ∨ ¬v5 ∨ v19 ∨ v20 ∨ v21 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v7 := by
      rcases c30 with a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact a
    have u3 : v11 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v13 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd n3 a
    have u5 : v14 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a u2
    rcases c72 with a|a|a
    · exact absurd u5 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1738 : v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c1483 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1739 : ¬v34 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1071 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
  have c1740 : v19 ∨ v1 ∨ ¬v3 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v15 := by
      rcases c1727 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v4 := by
      rcases c1734 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v12 := by
      rcases c1736 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v5 := by
      rcases c1737 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n2 a
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v28 := by
      rcases c1731 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v9 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u12
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n3
    have u14 : v14 := by
      rcases c597 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a u12
      · exact absurd a n3
    have u15 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd u14 a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v34 := by
      rcases c1739 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v7 := by
      rcases c486 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd u14 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n12
    have u19 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd n2 a
      · exact absurd u18 a
      · exact a
    have u21 : v35 := by
      rcases c1738 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u17
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u22 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n11
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u17
    have u23 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u22 a
    rcases c272 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a u17
  have c1741 : ¬v35 ∨ ¬v39 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n1 a
      · exact a
    rcases c462 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u1
  have c1742 : v41 ∨ ¬v3 ∨ v8 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v23 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v30 := by
      rcases c1033 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v29 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n10
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u4
    have u7 : ¬v28 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u2
    have u8 : v14 := by
      rcases c1560 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
    have u9 : v9 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n2
    have u10 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v5 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : v6 := by
      rcases c1738 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : v7 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a u10
      · exact absurd u14 a
      · exact absurd a n15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n14
      · exact a
    rcases c31 with a|a|a
    · exact absurd n1 a
    · exact absurd u15 a
    · exact absurd u14 a
  have c1743 : v46 ∨ v1 ∨ ¬v3 ∨ v8 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v15 := by
      rcases c1727 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v39 := by
      rcases c1740 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v35 := by
      rcases c1741 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n9
    have u10 : v34 := by
      rcases c1742 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u10 a
    rcases c462 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u12
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u13
  have c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n1 a
    rcases c599 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u1
  have c1745 : v24 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v31 ∨ v35 ∨ ¬v37 ∨ v43 ∨ v44 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v34 := by
      rcases c1744 with a|a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v30 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n8
    have u7 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v28 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n3
    have u11 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
    have u12 : v25 := by
      rcases c123 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a u11
    rcases c850 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u9
  have c1746 : v23 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v24 ∨ v35 ∨ ¬v37 ∨ v43 ∨ v44 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v34 := by
      rcases c1744 with a|a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v31 := by
      rcases c1745 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v25 := by
      rcases c1517 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a u2
    have u8 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
    rcases c996 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u5
  have c1747 : v44 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v37 ∨ v43 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v34 := by
      rcases c1744 with a|a|a|a
      · exact a
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n0
    have u4 : v35 := by
      rcases c1746 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u5 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1716 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n10 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n12
  have c1748 : v1 ∨ v8 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v15 := by
      rcases c1727 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v40 := by
      rcases c1244 with a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n7
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v37 := by
      rcases c1747 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u11
      · exact absurd a n13
    have u13 : ¬v3 := by
      rcases c1743 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : v4 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a n9
    have u15 : v2 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a u12
      · exact a
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n11
    have u16 : ¬v5 := by
      rcases c1726 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u4 a
      · exact absurd a n11
    have u17 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u14 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u14 a
      · exact absurd u15 a
      · exact a
    have u19 : v12 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u20 : v28 := by
      rcases c1730 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v13 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u18
      · exact a
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u23 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u19 a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u19 a
    rcases c581 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd u15 a
    · exact absurd a u23
  have c1749 : ¬v15 ∨ v8 ∨ ¬v12 ∨ ¬v13 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1590 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a n4
  have c1750 : ¬v12 ∨ v1 ∨ v3 ∨ v8 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v29 ∨ v30 ∨ v36 ∨ v37 ∨ v42 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v13 := by
      rcases c1749 with a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
    have u2 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v14 := by
      rcases c243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n11
    have u5 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v2 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a u5
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n15
    · exact absurd a u2
    · exact absurd a n7
  have c1751 : v30 ∨ v1 ∨ v3 ∨ v8 ∨ v13 ∨ ¬v15 ∨ v19 ∨ v22 ∨ v23 ∨ v25 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v39 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
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
    have u5 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v40 := by
      rcases c1244 with a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n12
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u8 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u9 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n20
    have u13 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n14
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u14 : v6 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u15 : ¬v12 := by
      rcases c1750 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a u11
      · exact absurd a u10
    have u16 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u6
      · exact a
      · exact absurd a n18
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a u7
    have u17 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u14 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u14 a
    have u19 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n15
    have u20 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n8
    have u21 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u19 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd u19 a
    · exact absurd a u17
    · exact absurd a u2
  have c1752 : ¬v14 ∨ v1 ∨ v3 ∨ v8 ∨ ¬v13 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u3 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n6
    rcases c581 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd u3 a
    · exact absurd a u2
  have c1753 : v23 ∨ v1 ∨ v8 ∨ v19 ∨ v22 ∨ v24 ∨ ¬v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v39 := by
      rcases c1741 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v15 := by
      rcases c1727 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u11 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
    have u17 : v38 := by
      rcases c1748 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v3 := by
      rcases c1743 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v13 := by
      rcases c1751 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n2
      · exact a
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v14 := by
      rcases c1752 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd u21 a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u14
    have u23 : v9 := by
      rcases c1671 with a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n2
      · exact a
      · exact absurd a u22
      · exact absurd a n4
    have u24 : v10 := by
      rcases c279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u22
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n5
    rcases c56 with a|a|a
    · exact absurd u23 a
    · exact absurd u21 a
    · exact absurd u24 a
  have c1754 : ¬v13 ∨ v1 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v9 := by
      rcases c1671 with a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u2 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    rcases c279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a u2
    · exact absurd n4 a
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n8
  have c1755 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n4 a
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
  have c1756 : v35 ∨ v1 ∨ v3 ∨ v8 ∨ ¬v13 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : v14 := by
      rcases c1754 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u3 a
    have u5 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u3 a
      · exact absurd n4 a
      · exact a
    have u6 : v28 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n3
    have u7 : ¬v2 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a u5
    have u8 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n8
    have u9 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1755 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd u6 a
    · exact absurd a u10
    · exact absurd a n0
  have c1757 : v3 ∨ v1 ∨ v8 ∨ v9 ∨ v13 ∨ ¬v15 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v35 ∨ v37 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n5 a
    have u2 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
    have u3 : v14 := by
      rcases c1671 with a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n8
    have u4 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u6 : v28 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n5 a
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n2
    have u7 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v34 := by
      rcases c1735 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u6 a
      · exact a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
    have u11 : v29 := by
      rcases c1755 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n10
    have u12 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v36 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd u11 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u12
    have u16 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n9
    have u17 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v10 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u16 a
      · exact a
    have u19 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u10 a
    have u20 : v12 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u19
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n14
    rcases c68 with a|a|a
    · exact absurd u20 a
    · exact absurd u3 a
    · exact absurd u18 a
  have c1758 : v19 ∨ v1 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v13 ∨ ¬v14 ∨ ¬v15 ∨ v21 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd n6 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd n4 a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd n6 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : v45 := by
      rcases c1628 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v2 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v5 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v4 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u3
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v7 := by
      rcases c486 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n1
      · exact a
      · exact absurd n6 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n13
    have u12 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u11 a
    have u13 : v34 := by
      rcases c1738 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v26 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n8
      · exact a
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c1195 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u7 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1759 : v46 ∨ v1 ∨ v8 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v35 := by
      rcases c1753 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v15 := by
      rcases c1727 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v37 := by
      rcases c1746 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u12 : ¬v3 := by
      rcases c1743 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v13 := by
      rcases c1756 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u14 : v9 := by
      rcases c1757 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v14 := by
      rcases c1758 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u13
      · exact a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v28 := by
      rcases c597 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u15
      · exact a
      · exact absurd a n2
    have u17 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : v10 := by
      rcases c279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u15
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
    have u19 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u14 a
      · exact absurd u18 a
      · exact a
    have u21 : v5 := by
      rcases c1731 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd u16 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v2 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v7 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u21 a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    rcases c292 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u6 a
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a u22
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u17
  have c1760 : ¬v33 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    rcases c289 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a n1
  have c1761 : ¬v9 ∨ v1 ∨ v3 ∨ ¬v6 ∨ v8 ∨ v13 ∨ ¬v15 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v14 := by
      rcases c1758 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
      · exact a
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n13
    have u3 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u2 a
    have u4 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u2 a
    have u5 : v12 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : v10 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
    rcases c55 with a|a|a
    · exact absurd n0 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c1762 : ¬v9 ∨ v1 ∨ v8 ∨ v13 ∨ ¬v15 ∨ v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v31 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v42 := by
      rcases c1168 with a|a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
    have u7 : v3 := by
      rcases c1761 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u10 : v14 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact absurd a n3
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd u6 a
      · exact absurd a n14
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a u8
    rcases c62 with a|a|a
    · exact absurd u10 a
    · exact absurd n0 a
    · exact absurd u11 a
  have c1763 : ¬v9 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
    have u3 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u5 : v14 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u3
    rcases c62 with a|a|a
    · exact absurd u5 a
    · exact absurd n0 a
    · exact absurd u6 a
  have c1764 : ¬v34 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    rcases c289 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a n1
  have c1765 : ¬v9 ∨ ¬v3 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    rcases c1763 with a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1766 : v13 ∨ v1 ∨ v3 ∨ ¬v6 ∨ v8 ∨ ¬v9 ∨ ¬v12 ∨ ¬v15 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : v2 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u2
    have u6 : ¬v4 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n3 a
    have u7 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n3 a
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd n6 a
  have c1767 : v46 ∨ v1 ∨ v8 ∨ ¬v9 ∨ v13 ∨ ¬v15 ∨ v19 ∨ v22 ∨ v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : v23 := by
      rcases c1759 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v45 := by
      rcases c1628 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v33 := by
      rcases c1760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd u4 a
      · exact absurd a n8
    have u7 : ¬v34 := by
      rcases c1764 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd u4 a
      · exact absurd a n8
    have u8 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v3 := by
      rcases c1765 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u7
    have u15 : ¬v12 := by
      rcases c1766 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
    have u16 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u8
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u11
    have u17 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u16 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u14 a
    have u19 : v10 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
    have u20 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u19 a
    have u21 : v42 := by
      rcases c1695 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u13
      · exact a
      · exact absurd a n11
    have u22 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u21 a
      · exact a
    rcases c367 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u12
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a u10
    · exact absurd a n0
  have c1768 : v20 ∨ v1 ∨ v7 ∨ v8 ∨ v13 ∨ v15 ∨ v21 ∨ ¬v23 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c530 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n1
    rcases c1695 with a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1769 : ¬v9 ∨ v1 ∨ v8 ∨ v13 ∨ v15 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v23 ∨ ¬v29 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : v6 := by
      rcases c1481 with a|a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v7 := by
      rcases c1768 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n15
    have u8 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u7 a
    have u9 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u7 a
    have u10 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u6
    have u11 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u10 a
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd u10 a
  have c1770 : v22 ∨ v1 ∨ v8 ∨ ¬v9 ∨ v13 ∨ v19 ∨ v24 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v23 := by
      rcases c1759 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v45 := by
      rcases c1628 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v15 := by
      rcases c1767 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u8 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v18 := by
      rcases c637 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u10
    have u13 : v20 := by
      rcases c1769 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u13 a
    rcases c864 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u10
  have c1771 : ¬v20 ∨ v1 ∨ v8 ∨ v22 ∨ ¬v23 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u4 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u4 a
    rcases c864 with a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u6
  have c1772 : v37 ∨ v2 ∨ v3 ∨ v4 ∨ v22 ∨ v28 ∨ ¬v29 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v48 := by
      rcases c181 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n9
    have u7 : v38 := by
      rcases c580 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n8
    have u8 : v36 := by
      rcases c485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n5
    rcases c147 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c1773 : ¬v37 ∨ v1 ∨ v2 ∨ v3 ∨ v30 ∨ v31 ∨ v33 ∨ v40 ∨ v43 ∨ v44 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
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
    rcases c357 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n10
  exact ⟨c1726, c1729, c1731, c1739, c1741, c1744, c1746, c1749, c1755, c1759, c1760, c1762, c1763, c1764, c1765, c1768, c1770, c1771, c1772, c1773⟩
