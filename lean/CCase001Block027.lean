import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1350-1399 of the 2915-step refutation of ccase001: 120 core clauses and 66 earlier-derived ones give 16 more. -/
theorem CCase001_block027
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c91 : ¬v17 ∨ ¬v18)
    (c93 : ¬v17 ∨ ¬v20)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
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
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c146 : ¬v36 ∨ ¬v37)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c169 : ¬v45 ∨ ¬v43)
    (c174 : ¬v44 ∨ ¬v45)
    (c182 : ¬v49 ∨ ¬v45)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c272 : ¬v27 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v19 ∨ v26 ∨ v34)
    (c281 : v43 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v27 ∨ v22 ∨ v42 ∨ v20 ∨ v33 ∨ v19 ∨ v26 ∨ v29 ∨ v48 ∨ v49)
    (c289 : v29 ∨ v22 ∨ v30 ∨ v24 ∨ v31 ∨ v17 ∨ ¬v23 ∨ v16)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c297 : v11 ∨ v4 ∨ v48 ∨ v6 ∨ v12 ∨ v13 ∨ ¬v5 ∨ v47)
    (c311 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v35 ∨ v28 ∨ v33 ∨ v40)
    (c334 : ¬v24 ∨ v31 ∨ v30 ∨ v9 ∨ v11 ∨ v17 ∨ v22 ∨ v23 ∨ v21 ∨ v18 ∨ v28 ∨ v25 ∨ v10 ∨ v35)
    (c335 : v11 ∨ v12 ∨ v24 ∨ v17 ∨ v25 ∨ v26 ∨ ¬v18 ∨ v19)
    (c344 : v22 ∨ v13 ∨ v17 ∨ v10 ∨ v1 ∨ v23 ∨ v3 ∨ ¬v16 ∨ v20 ∨ v9 ∨ v21 ∨ v2 ∨ v15 ∨ v27)
    (c367 : ¬v45 ∨ v3 ∨ v39 ∨ v37 ∨ v2 ∨ v38 ∨ v44 ∨ v46)
    (c369 : v22 ∨ ¬v21 ∨ v10 ∨ v16 ∨ v20 ∨ v14 ∨ v28 ∨ v13 ∨ v17 ∨ v6 ∨ v1 ∨ v15 ∨ v24 ∨ v7)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c430 : v43 ∨ ¬v21 ∨ v22 ∨ v14 ∨ v49 ∨ v28 ∨ v20 ∨ v15 ∨ v16 ∨ v13 ∨ v23 ∨ v9 ∨ v48 ∨ v7)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c464 : v36 ∨ ¬v30 ∨ v24 ∨ v23 ∨ v31 ∨ v37 ∨ v22 ∨ v29)
    (c465 : v22 ∨ v7 ∨ ¬v2 ∨ v10 ∨ v9 ∨ v14 ∨ v3 ∨ v23 ∨ v1 ∨ v16 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c467 : v29 ∨ ¬v27 ∨ v41 ∨ v28 ∨ v26 ∨ v20 ∨ v34 ∨ v33 ∨ v21 ∨ v22 ∨ v15 ∨ v47 ∨ v48 ∨ v49)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c536 : v27 ∨ v6 ∨ v13 ∨ v12 ∨ v19 ∨ v7 ∨ v9 ∨ v5 ∨ v16 ∨ v21 ∨ v23 ∨ v15 ∨ ¬v20 ∨ v28)
    (c538 : v10 ∨ v13 ∨ v5 ∨ v9 ∨ v2 ∨ v46 ∨ v18 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v47 ∨ v48)
    (c580 : ¬v45 ∨ v38 ∨ v44 ∨ v37 ∨ v4 ∨ v2 ∨ v3 ∨ v46)
    (c596 : ¬v20 ∨ v27 ∨ v13 ∨ v12 ∨ v21 ∨ v14 ∨ v26 ∨ v19)
    (c599 : v43 ∨ ¬v37 ∨ v44 ∨ v30 ∨ v31 ∨ v38 ∨ v36 ∨ v29)
    (c608 : ¬v26 ∨ v33 ∨ v18 ∨ v46 ∨ v25 ∨ v19 ∨ v34 ∨ v27 ∨ v40 ∨ v31 ∨ v17 ∨ v24 ∨ v47 ∨ v48)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1272 : ¬v21 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1391 : ¬v8 ∨ v1 ∨ v2 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v21)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1457 : v12 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1500 : v32 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v26 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48)
    (c1511 : v28 ∨ ¬v8 ∨ v13 ∨ ¬v20 ∨ v26 ∨ v27)
    (c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c1535 : ¬v2 ∨ ¬v1 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v19)
    (c1541 : v20 ∨ v6 ∨ v13 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1555 : v6 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1570 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1578 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1579 : ¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c1587 : ¬v3 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c1630 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c1675 : v11 ∨ ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1703 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1707 : ¬v36 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1715 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48)
    (c1741 : ¬v35 ∨ ¬v39 ∨ v46 ∨ v47)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1764 : ¬v34 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v24)
    (c1787 : v26 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33)
    (c1796 : ¬v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46)
    (c1801 : v38 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1827 : v19 ∨ v5 ∨ v12 ∨ v26 ∨ ¬v38 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1831 : ¬v39 ∨ v3 ∨ v4 ∨ v7 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v45 ∨ v46 ∨ v49)
    (c1839 : v38 ∨ ¬v1 ∨ ¬v7 ∨ ¬v45 ∨ v46)
    (c1858 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c1878 : ¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c1909 : ¬v37 ∨ v1 ∨ v2 ∨ v3 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v45 ∨ v46)
    (c1919 : v39 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1931 : v11 ∨ v2 ∨ v13 ∨ v18 ∨ v19 ∨ ¬v22 ∨ v33 ∨ ¬v34 ∨ v39 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48)
    (c1945 : v12 ∨ ¬v2 ∨ v6 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1954 : v8 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1956 : ¬v8 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1970 : v27 ∨ ¬v2 ∨ v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1974 : v12 ∨ ¬v2 ∨ v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1975 : ¬v19 ∨ ¬v2 ∨ v6 ∨ v13 ∨ v14 ∨ ¬v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    : (¬v2 ∨ v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v33 ∨ v7 ∨ v14 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v43 ∨ v48 ∨ v49) ∧ (v7 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44) ∧ (¬v35 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44) ∧ (v30 ∨ v2 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48) ∧ (v13 ∨ v6 ∨ ¬v9 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v47 ∨ v48 ∨ v49) ∧ (v34 ∨ v6 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v9 ∨ v10 ∨ ¬v16) ∧ (v6 ∨ v13 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v39 ∨ v46) ∧ (v13 ∨ v9 ∨ ¬v16 ∨ v19 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v26 ∨ v2 ∨ v9 ∨ v16 ∨ v19 ∨ v41 ∨ v43 ∨ v44 ∨ v48 ∨ v49) ∧ (¬v8 ∨ ¬v3 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49) := by
  have c1976 : ¬v2 ∨ v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v12 := by
      rcases c1974 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd u1 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u1 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u1 a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u5 a
    have u10 : v27 := by
      rcases c1970 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
    have u16 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
    have u17 : ¬v6 := by
      rcases c1956 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v19 := by
      rcases c1975 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v1 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a u18
    have u20 : ¬v7 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u19
      · exact a
      · exact absurd a n4
      · exact absurd a u6
    have u21 : v3 := by
      rcases c465 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact a
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
    have u22 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd n0 a
    have u23 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u21 a
    rcases c1226 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd u5 a
    · exact absurd a u18
  have c1977 : v33 ∨ v7 ∨ v14 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : v35 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v34 := by
      rcases c272 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact a
    rcases c144 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1978 : ¬v21 ∨ v7 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v20 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    rcases c430 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n12
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a n1
  have c1979 : v7 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v33 := by
      rcases c1878 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v21 := by
      rcases c1977 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    rcases c1978 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
  have c1980 : v48 ∨ v6 ∨ v7 ∨ ¬v12 ∨ v13 ∨ v19 ∨ ¬v27 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u3 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u4 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n6 a
      · exact a
    have u9 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n6 a
    have u10 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    have u12 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    have u13 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    have u14 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
    have u16 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
    have u17 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u4
    have u18 : v20 := by
      rcases c1979 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n5
      · exact a
      · exact absurd n6 a
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u19 : v5 := by
      rcases c538 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd n3 a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n0
    have u20 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v1 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u20
    have u23 : v35 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n9
    have u24 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u22 a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v39 := by
      rcases c1741 with a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    rcases c1254 with a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a n7
  have c1981 : ¬v35 ∨ v6 ∨ v12 ∨ v13 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v39 := by
      rcases c1741 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v2 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v4 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd u8 a
    have u12 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n11
    have u13 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u11 a
    have u14 : v42 := by
      rcases c1529 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u7
      · exact a
    have u15 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u14 a
      · exact a
    rcases c367 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a n8
  have c1982 : ¬v5 ∨ v2 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v3 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v1 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v49 := by
      rcases c182 with a|a
      · exact a
      · exact absurd n14 a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n14 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n14 a
      · exact a
    have u6 : ¬v37 := by
      rcases c1909 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd n14 a
      · exact absurd a n15
    have u7 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n10
    have u8 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v36 := by
      rcases c464 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u8
    rcases c1708 with a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c1983 : v35 ∨ v7 ∨ v12 ∨ v13 ∨ v19 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v14 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd u5 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd u5 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v5 := by
      rcases c1982 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd u6 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v37 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u15
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n7
    have u19 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n15
    have u20 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u18 a
    rcases c599 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u18 a
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u17
  have c1984 : v7 ∨ v5 ∨ v6 ∨ v13 ∨ v19 ∨ ¬v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c1980 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u2 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v35 := by
      rcases c1981 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v20 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v18 := by
      rcases c1878 with a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd n5 a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v21 := by
      rcases c1433 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a u10
      · exact a
      · exact absurd a u11
      · exact absurd a u9
    rcases c97 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c1985 : ¬v18 ∨ v1 ∨ v2 ∨ ¬v8 ∨ v12 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u4 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v11 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a u2
    rcases c1391 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u4
  have c1986 : v15 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ ¬v8 ∨ v13 ∨ v16 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n7
      · exact absurd a n10
    have u2 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd n5 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd n5 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact absurd a n4
      · exact absurd a u4
      · exact a
      · exact absurd a n15
      · exact absurd a n13
      · exact absurd a u2
    rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd u7 a
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a n13
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n4
  have c1987 : v15 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ ¬v8 ∨ v13 ∨ v20 ∨ ¬v27 ∨ v33 ∨ v35 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : v34 := by
      rcases c1028 with a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact a
      · exact absurd a n10
    have u7 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v16 := by
      rcases c1986 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v14 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u13 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd n5 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd n5 a
      · exact absurd u12 a
      · exact a
    rcases c817 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u4
  have c1988 : v19 ∨ v6 ∨ v7 ∨ v13 ∨ ¬v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v5 := by
      rcases c1984 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v12 := by
      rcases c1980 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u14 : ¬v1 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v35 := by
      rcases c1981 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v20 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v18 := by
      rcases c1985 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
    have u18 : ¬v33 := by
      rcases c1878 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : v34 := by
      rcases c1028 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u18
      · exact a
      · exact absurd a u15
    have u20 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u22 : v15 := by
      rcases c1987 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd n4 a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u4
    have u26 : v14 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact a
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    rcases c43 with a|a|a
    · exact absurd u7 a
    · exact absurd u26 a
    · exact absurd u25 a
  have c1989 : v27 ∨ v6 ∨ v13 ∨ ¬v15 ∨ v19 ∨ v22 ∨ v24 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u4 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v23 := by
      rcases c1764 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u7 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u9
    rcases c1787 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u9
  have c1990 : ¬v8 ∨ v2 ∨ v7 ∨ v13 ∨ v15 ∨ v16 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v34 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n9 a
      · exact a
    have u5 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v14 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n13
    have u8 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact a
    have u9 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n5
      · exact a
    have u10 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v17 := by
      rcases c1062 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    rcases c289 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd u9 a
    · exact absurd a n5
  have c1991 : ¬v20 ∨ v6 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v16 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v26 := by
      rcases c1511 with a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n8
    have u10 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd u6 a
      · exact absurd n4 a
      · exact a
    have u12 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd u6 a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : v5 := by
      rcases c536 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n9
    rcases c1982 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u13
    · exact absurd a n7
    · exact absurd a u14
    · exact absurd a n9
    · exact absurd u7 a
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1992 : v7 ∨ v6 ∨ v13 ∨ v16 ∨ v19 ∨ v22 ∨ v24 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v27 := by
      rcases c1988 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
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
    have u4 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v15 := by
      rcases c1989 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v34 := by
      rcases c1990 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v20 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v26 := by
      rcases c1511 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd u9 a
      · exact a
      · exact absurd a u1
    have u12 : ¬v14 := by
      rcases c1991 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v35 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u13 a
      · exact a
    rcases c702 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u8
  have c1993 : v46 ∨ v6 ∨ v7 ∨ v13 ∨ v19 ∨ v22 ∨ v24 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v27 := by
      rcases c1988 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v16 := by
      rcases c1992 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
    have u15 : ¬v26 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v41 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u16
    have u18 : v14 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd u2 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u18 a
    have u23 : v3 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n0
    have u24 : ¬v5 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u23 a
      · exact a
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u15
    · exact absurd a u24
    · exact absurd a n8
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a u16
  have c1994 : v7 ∨ v6 ∨ v13 ∨ v19 ∨ v22 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c1988 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
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
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v24 := by
      rcases c1993 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v20 := by
      rcases c1511 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u1
    have u11 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
    have u17 : v17 := by
      rcases c1079 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
    have u18 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v14 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n9
    have u21 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u9
    rcases c43 with a|a|a
    · exact absurd u2 a
    · exact absurd u20 a
    · exact absurd u21 a
  have c1995 : v7 ∨ v6 ∨ v13 ∨ v19 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v27 := by
      rcases c1988 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v22 := by
      rcases c1994 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v20 := by
      rcases c1511 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u6
    have u11 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
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
    have u17 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u7 a
    have u18 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v41 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u18
    have u20 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v11 := by
      rcases c1931 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd u7 a
      · exact absurd a u14
      · exact absurd u11 a
      · exact absurd a u21
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u22 a
    have u25 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u4
      · exact a
      · exact absurd a u9
    have u26 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u24
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u20
    rcases c90 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c1996 : ¬v16 ∨ v6 ∨ v13 ∨ v27 ∨ ¬v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v35 := by
      rcases c1421 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n4 a
    rcases c144 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c1997 : v46 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v27 ∨ ¬v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v16 := by
      rcases c1996 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v45 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u17 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
    have u20 : v41 := by
      rcases c897 with a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a u17
      · exact a
      · exact absurd a u18
    have u21 : v21 := by
      rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n6 a
      · exact absurd a u15
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u7 a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u7 a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : v4 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u24
      · exact absurd a n0
    have u27 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u28 : v3 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a n0
    rcases c26 with a|a|a
    · exact absurd u28 a
    · exact absurd u27 a
    · exact absurd u26 a
  have c1998 : ¬v20 ∨ ¬v8 ∨ ¬v9 ∨ v13 ∨ v19 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    rcases c596 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n4
  have c1999 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n4
  have c2000 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    rcases c599 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n1
  have c2001 : v49 ∨ v6 ∨ v7 ∨ v13 ∨ v19 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v45 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v28 := by
      rcases c1995 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u7 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v16 := by
      rcases c1996 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u11 : v20 := by
      rcases c1997 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u12 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v9 := by
      rcases c1998 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u9
    have u15 : ¬v34 := by
      rcases c1999 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
    have u16 : v35 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u15
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n0
    have u17 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v37 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u17
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u8
    have u21 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
    rcases c2000 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a u4
  have c2002 : ¬v35 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v37 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c2000 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n6
  have c2003 : ¬v26 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v27 ∨ v34 ∨ ¬v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v31 := by
      rcases c1801 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u8
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v33 := by
      rcases c608 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v30 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n11
    rcases c132 with a|a
    · exact absurd u13 a
    · exact absurd u14 a
  have c2004 : v27 ∨ v9 ∨ v13 ∨ v16 ∨ v19 ∨ ¬v20 ∨ v23 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v35 := by
      rcases c2002 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    have u11 : ¬v28 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v26 := by
      rcases c1511 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd n5 a
      · exact a
      · exact absurd a n0
    have u13 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v37 := by
      rcases c2003 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n6
    have u17 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    rcases c464 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd u16 a
    · exact absurd a u14
    · exact absurd a n6
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u17
  have c2005 : v27 ∨ v6 ∨ v9 ∨ v13 ∨ v16 ∨ v19 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v20 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v23 := by
      rcases c2004 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v12 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u6
    have u8 : v14 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u3
    rcases c52 with a|a|a
    · exact absurd u2 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 := by
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
    have u4 : v23 := by
      rcases c1999 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v17 := by
      rcases c1062 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    rcases c289 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd u4 a
    · exact absurd a n3
  have c2007 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v37 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
    have u2 : ¬v34 := by
      rcases c1999 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v31 := by
      rcases c1801 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2008 : v19 ∨ v6 ∨ v9 ∨ v13 ∨ v16 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v45 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v7 := by
      rcases c2001 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v27 := by
      rcases c2005 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v35 := by
      rcases c2002 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u17 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v30 := by
      rcases c2007 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u19 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u24 : v37 := by
      rcases c464 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd u18 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u20
      · exact a
      · exact absurd a u15
      · exact absurd a u19
    have u25 : v20 := by
      rcases c1028 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u16
    have u26 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u27 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u25 a
    have u30 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u25 a
      · exact a
    have u31 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u25 a
    have u32 : ¬v1 := by
      rcases c1839 with a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact absurd a n5
    have u33 : v14 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u32
      · exact absurd u4 a
      · exact absurd a n7
      · exact a
    have u34 : ¬v11 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u32
      · exact absurd a u3
      · exact a
      · exact absurd a u29
      · exact absurd a n4
      · exact absurd a u30
    have u35 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u33 a
    have u36 : v4 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u34
      · exact absurd a u31
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u37 : v5 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u35
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u26
      · exact absurd a n6
    rcases c33 with a|a|a
    · exact absurd u37 a
    · exact absurd u36 a
    · exact absurd u4 a
  have c2009 : v13 ∨ v6 ∨ ¬v9 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v45 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v7 := by
      rcases c2001 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v1 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a u5
    have u8 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u3 a
    have u9 : v38 := by
      rcases c1839 with a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd a n4
    have u10 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v26 := by
      rcases c1827 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u4
      · exact a
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v20 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u16 a
      · exact a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u16 a
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a n3
  have c2010 : ¬v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c467 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n4 a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2011 : v34 ∨ v6 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v27 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v35 := by
      rcases c2010 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1433 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u2
  have c2012 : ¬v10 ∨ v6 ∨ ¬v7 ∨ ¬v8 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u4
    have u6 : v4 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a n8
    rcases c33 with a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd n2 a
  have c2013 : ¬v27 ∨ v9 ∨ v10 ∨ ¬v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
    rcases c817 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
  have c2014 : v6 ∨ v13 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v7 := by
      rcases c2001 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v9 := by
      rcases c2009 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v45 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v16 := by
      rcases c2008 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : v34 := by
      rcases c2011 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
    have u19 : ¬v26 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u16
    have u21 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v10 := by
      rcases c2012 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v27 := by
      rcases c2013 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd u6 a
    have u25 : v41 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u21
      · exact a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v3 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a n3
    have u29 : ¬v1 := by
      rcases c1839 with a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact absurd a n3
    have u30 : ¬v4 := by
      rcases c28 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u1 a
    have u31 : v14 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u29
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
    have u32 : v11 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u30
      · exact a
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a n3
    rcases c50 with a|a|a
    · exact absurd u5 a
    · exact absurd u31 a
    · exact absurd u32 a
  have c2015 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n8
  have c2016 : ¬v24 ∨ v9 ∨ v10 ∨ v11 ∨ v17 ∨ v18 ∨ v21 ∨ v22 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    rcases c334 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n11
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n12
  have c2017 : ¬v24 ∨ v9 ∨ v10 ∨ v11 ∨ v17 ∨ v18 ∨ v21 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2016 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2018 : v9 ∨ v4 ∨ v10 ∨ v11 ∨ v17 ∨ v18 ∨ v21 ∨ v25 ∨ v26 ∨ v28 ∨ v31 ∨ v35 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v24 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n13
    rcases c2017 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n11
  have c2019 : ¬v16 ∨ v7 ∨ v9 ∨ v13 ∨ v19 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v6 := by
      rcases c2014 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v14 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u8 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd u8 a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v27 := by
      rcases c2013 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd n0 a
    have u18 : v5 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u16
      · exact absurd u6 a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n1
    have u19 : ¬v3 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u18 a
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v1 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u6 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd u9 a
      · exact absurd a n7
    have u23 : ¬v39 := by
      rcases c1831 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd u9 a
      · exact absurd a n7
      · exact absurd a n10
    have u24 : v38 := by
      rcases c580 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a n7
    have u25 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u26
    have u28 : v32 := by
      rcases c2015 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u27
      · exact absurd a u23
      · exact absurd a n7
    have u29 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : v25 := by
      rcases c2018 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u29
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u31 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u30 a
    rcases c344 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u32
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u31
    · exact absurd a u19
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u17
  have c2020 : v11 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v4 := by
      rcases c2015 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v6 := by
      rcases c2014 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u6 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a u4
    have u7 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd u2 a
      · exact absurd a u5
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n1
    rcases c52 with a|a|a
    · exact absurd u3 a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2021 : v9 ∨ v7 ∨ v13 ∨ ¬v16 ∨ v19 ∨ v26 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v35 := by
      rcases c2019 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v39 := by
      rcases c1741 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v11 := by
      rcases c2020 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v1 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1240 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a u1
  have c2022 : v19 ∨ v9 ∨ v13 ∨ ¬v16 ∨ v26 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v6 := by
      rcases c2014 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v7 := by
      rcases c2021 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u1 a
    have u10 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u8 a
    have u11 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u8 a
    have u12 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u6 a
      · exact absurd a n6
    have u13 : v38 := by
      rcases c580 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n6
    have u14 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v12 := by
      rcases c1827 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u11
      · exact a
      · exact absurd a n4
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v11 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u2
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd u15 a
    rcases c48 with a|a|a
    · exact absurd u5 a
    · exact absurd u15 a
    · exact absurd u16 a
  have c2023 : v13 ∨ v9 ∨ ¬v16 ∨ v19 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v6 := by
      rcases c2014 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v2 := by
      rcases c1976 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v8 := by
      rcases c1954 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v26 := by
      rcases c2022 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v10 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u11 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u5 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v3 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v4 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u11
    have u15 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd u14 a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u3 a
    rcases c1240 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a u1
  have c2024 : ¬v26 ∨ v2 ∨ v9 ∨ v16 ∨ v19 ∨ v41 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v35 := by
      rcases c2002 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u8 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v30 := by
      rcases c2007 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u9 a
    rcases c702 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u6
  have c2025 : ¬v8 ∨ ¬v3 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : v14 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
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
  exact ⟨c1976, c1977, c1979, c1999, c2002, c2006, c2007, c2009, c2010, c2011, c2013, c2014, c2015, c2023, c2024, c2025⟩
