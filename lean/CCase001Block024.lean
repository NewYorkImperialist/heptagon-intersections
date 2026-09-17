import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1200-1249 of the 2915-step refutation of ccase001: 125 core clauses and 60 earlier-derived ones give 13 more. -/
theorem CCase001_block024
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c75 : v11 ∨ v10 ∨ v9 ∨ v8 ∨ v12 ∨ v14)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
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
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
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
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c146 : ¬v36 ∨ ¬v37)
    (c147 : ¬v36 ∨ ¬v38)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c169 : ¬v45 ∨ ¬v43)
    (c174 : ¬v44 ∨ ¬v45)
    (c180 : ¬v45 ∨ ¬v47)
    (c181 : ¬v48 ∨ ¬v45)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c262 : v22 ∨ ¬v21 ∨ v15 ∨ v27 ∨ v28 ∨ v14 ∨ v8 ∨ v20)
    (c289 : v29 ∨ v22 ∨ v30 ∨ v24 ∨ v31 ∨ v17 ∨ ¬v23 ∨ v16)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c311 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v35 ∨ v28 ∨ v33 ∨ v40)
    (c315 : v24 ∨ ¬v17 ∨ v25 ∨ v9 ∨ v11 ∨ v10 ∨ v16 ∨ v18)
    (c327 : v22 ∨ ¬v15 ∨ v21 ∨ v28 ∨ v9 ∨ v16 ∨ v23 ∨ v8)
    (c340 : ¬v32 ∨ v39 ∨ v33 ∨ v26 ∨ v31 ∨ v40 ∨ v25 ∨ v24)
    (c353 : ¬v1 ∨ v7 ∨ v44 ∨ v11 ∨ v15 ∨ v2 ∨ v8 ∨ v16 ∨ v3 ∨ v4 ∨ v21 ∨ v43 ∨ v14 ∨ v46)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c391 : ¬v32 ∨ v18 ∨ v10 ∨ v33 ∨ v40 ∨ v25 ∨ v31 ∨ v39 ∨ v24 ∨ v11 ∨ v27 ∨ v34 ∨ v12 ∨ v41)
    (c396 : v22 ∨ ¬v20 ∨ v28 ∨ v27 ∨ v49 ∨ v13 ∨ v19 ∨ v21 ∨ v8 ∨ v12 ∨ v15 ∨ v47 ∨ v48 ∨ v6)
    (c421 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v19 ∨ v6 ∨ ¬v13)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c451 : ¬v45 ∨ v4 ∨ v37 ∨ v46 ∨ v3 ∨ v39 ∨ v44 ∨ v38)
    (c464 : v36 ∨ ¬v30 ∨ v24 ∨ v23 ∨ v31 ∨ v37 ∨ v22 ∨ v29)
    (c467 : v29 ∨ ¬v27 ∨ v41 ∨ v28 ∨ v26 ∨ v20 ∨ v34 ∨ v33 ∨ v21 ∨ v22 ∨ v15 ∨ v47 ∨ v48 ∨ v49)
    (c480 : ¬v45 ∨ v38 ∨ v37 ∨ v3 ∨ v4 ∨ v32 ∨ v6 ∨ v41 ∨ v31 ∨ v30 ∨ v44 ∨ v46 ∨ v47 ∨ v48)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c522 : v22 ∨ v42 ∨ v37 ∨ v17 ∨ v24 ∨ v21 ∨ v10 ∨ v28 ∨ ¬v15 ∨ v9 ∨ v16 ∨ v8 ∨ v29 ∨ v36)
    (c529 : v11 ∨ v4 ∨ v12 ∨ v26 ∨ v18 ∨ v6 ∨ v8 ∨ v15 ∨ v5 ∨ v20 ∨ v21 ∨ ¬v19 ∨ v22 ∨ v27)
    (c580 : ¬v45 ∨ v38 ∨ v44 ∨ v37 ∨ v4 ∨ v2 ∨ v3 ∨ v46)
    (c587 : v43 ∨ ¬v45 ∨ v37 ∨ v9 ∨ v4 ∨ v3 ∨ v10 ∨ v38 ∨ v7 ∨ v42 ∨ v11 ∨ v44 ∨ v46 ∨ v49)
    (c599 : v43 ∨ ¬v37 ∨ v44 ∨ v30 ∨ v31 ∨ v38 ∨ v36 ∨ v29)
    (c608 : ¬v26 ∨ v33 ∨ v18 ∨ v46 ∨ v25 ∨ v19 ∨ v34 ∨ v27 ∨ v40 ∨ v31 ∨ v17 ∨ v24 ∨ v47 ∨ v48)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c665 : ¬v20 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c950 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1039 : ¬v15 ∨ v8 ∨ v14 ∨ v16 ∨ v22 ∨ v23 ∨ v28)
    (c1058 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v33 ∨ v34)
    (c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1141 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1196 : v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1250 : ¬v26 ∨ v4 ∨ v11 ∨ v19 ∨ v31 ∨ v33 ∨ v38 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1349 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19)
    (c1350 : ¬v26 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v33 ∨ v34 ∨ v35)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1429 : ¬v5 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1438 : v13 ∨ ¬v1 ∨ v5 ∨ v14 ∨ v20 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1452 : ¬v3 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1457 : v12 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1465 : ¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1560 : ¬v15 ∨ v8 ∨ v14 ∨ v22 ∨ v23 ∨ v28)
    (c1575 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1658 : ¬v5 ∨ ¬v1 ∨ ¬v13 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1684 : ¬v24 ∨ v8 ∨ v9 ∨ ¬v15)
    (c1693 : ¬v24 ∨ v10 ∨ ¬v12 ∨ ¬v13 ∨ ¬v16)
    (c1700 : ¬v35 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1703 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1715 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48)
    (c1739 : ¬v34 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v39 ∨ v46)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1749 : ¬v15 ∨ v8 ∨ ¬v12 ∨ ¬v13 ∨ v22)
    (c1764 : ¬v34 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v24)
    (c1772 : v37 ∨ v2 ∨ v3 ∨ v4 ∨ v22 ∨ v28 ∨ ¬v29 ∨ ¬v45 ∨ v46 ∨ v49)
    (c1787 : v26 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33)
    (c1790 : v1 ∨ v8 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1796 : ¬v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46)
    (c1806 : v34 ∨ ¬v1 ∨ ¬v5 ∨ v20 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1814 : v15 ∨ v8 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1815 : v6 ∨ ¬v1 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v49)
    (c1818 : v26 ∨ ¬v1 ∨ v6 ∨ v8 ∨ ¬v9 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1819 : v14 ∨ v2 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ v12 ∨ ¬v13 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c1821 : v11 ∨ v2 ∨ v4 ∨ v9 ∨ v15 ∨ ¬v19 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v37 ∨ v39 ∨ v44 ∨ v46)
    (c1822 : v2 ∨ v3 ∨ v4 ∨ v5 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ ¬v45 ∨ v46 ∨ v49)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    : (v19 ∨ v5 ∨ v12 ∨ v26 ∨ ¬v38 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (v4 ∨ v3 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v39 ∨ v3 ∨ v4 ∨ v7 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v45 ∨ v46 ∨ v49) ∧ (¬v34 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v27 ∨ v28) ∧ (v38 ∨ ¬v1 ∨ ¬v7 ∨ ¬v45 ∨ v46) ∧ (¬v26 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48) ∧ (v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v43 ∨ v48 ∨ v49) ∧ (v49 ∨ v7 ∨ v8 ∨ v22 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v14 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v19) ∧ (v8 ∨ ¬v7 ∨ v22 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ v15 ∨ v21 ∨ v22 ∨ ¬v27 ∨ ¬v35 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ ¬v27 ∨ ¬v32) ∧ (v49 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v15 ∨ v18 ∨ v20 ∨ v21 ∨ v25 ∨ v32 ∨ ¬v45 ∨ v46) := by
  have c1824 : v11 ∨ ¬v1 ∨ v2 ∨ v3 ∨ v4 ∨ v5 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v39 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n20 a
    have u2 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n20 a
      · exact absurd a n21
    have u3 : v17 := by
      rcases c1822 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd n20 a
      · exact absurd a n21
      · exact absurd a n22
    have u4 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n19
      · exact absurd a n21
    have u6 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n11
      · exact a
    have u7 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u6 a
    rcases c315 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u3 a
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a u4
  have c1825 : v33 ∨ v2 ∨ v3 ∨ v6 ∨ v8 ∨ v9 ∨ ¬v13 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v28 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u3 : ¬v5 := by
      rcases c1806 with a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd u2 a
      · exact a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u4 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n22
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n13
      · exact absurd a n18
    have u5 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u6 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a n19
    have u9 : ¬v29 := by
      rcases c1772 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n13
      · exact a
      · exact absurd u5 a
      · exact absurd a n19
      · exact absurd a n22
    have u10 : v12 := by
      rcases c1819 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u11 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u10 a
      · exact absurd n6 a
      · exact a
    have u12 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u10 a
      · exact absurd n6 a
      · exact a
    have u13 : ¬v19 := by
      rcases c1821 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n16
      · exact absurd a u7
      · exact absurd a n19
    have u14 : v16 := by
      rcases c1824 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd u5 a
      · exact absurd a n19
      · exact absurd a n22
    have u15 : ¬v24 := by
      rcases c1693 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd n6 a
      · exact absurd u14 a
    have u16 : v23 := by
      rcases c838 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact a
      · exact absurd a u15
    have u17 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v32 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u17
      · exact a
      · exact absurd a n16
      · exact absurd a n19
    have u19 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u18 a
    rcases c340 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a n16
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a u19
    · exact absurd a n17
    · exact absurd a u17
    · exact absurd a u15
  have c1826 : v48 ∨ v6 ∨ ¬v7 ∨ v8 ∨ ¬v13 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c1814 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u2 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u3 : ¬v9 := by
      rcases c1818 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u5 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n11
    have u12 : ¬v29 := by
      rcases c1772 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd u4 a
      · exact absurd a n11
      · exact absurd a n13
    have u13 : v38 := by
      rcases c580 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n11
    have u14 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n13
    have u15 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
    have u20 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
    have u21 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u17
    have u22 : v14 := by
      rcases c1825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u23 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u22 a
      · exact absurd n4 a
      · exact a
    have u24 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n4 a
    have u25 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a u21
      · exact a
      · exact absurd a u15
    have u26 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u25 a
    rcases c529 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u6
    · exact absurd a u24
    · exact absurd a u1
    · exact absurd a u26
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd u25 a
    · exact absurd a n8
    · exact absurd a n9
  have c1827 : v19 ∨ v5 ∨ v12 ∨ v26 ∨ ¬v38 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n4 a
      · exact a
    rcases c1575 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1828 : v4 ∨ v3 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u12 : ¬v38 := by
      rcases c1827 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v37 := by
      rcases c599 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u7
    rcases c480 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1829 : v11 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v8 ∨ v12 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v19 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    rcases c529 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd u1 a
    · exact absurd a n10
    · exact absurd a n12
  have c1830 : v14 ∨ v7 ∨ v21 ∨ v27 ∨ v28 ∨ ¬v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v34 := by
      rcases c1744 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v35 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u2
    rcases c1700 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
  have c1831 : ¬v39 ∨ v3 ∨ v4 ∨ v7 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n7 a
      · exact a
    rcases c587 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd n7 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n9
  have c1832 : v28 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ v11 ∨ ¬v13 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v26 := by
      rcases c1814 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v7 := by
      rcases c1826 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v12 := by
      rcases c1829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n8 a
    have u8 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u6 a
      · exact absurd n8 a
      · exact a
    have u9 : ¬v37 := by
      rcases c1830 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n17
    have u10 : ¬v39 := by
      rcases c1831 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd a n14
      · exact absurd a n17
    have u11 : v38 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u4
      · exact a
    have u12 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v35 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n11
      · exact a
      · exact absurd a n0
      · exact absurd a u12
    rcases c1529 with a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n12
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u12
  have c1833 : v6 ∨ v8 ∨ v9 ∨ ¬v13 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v4 := by
      rcases c1815 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n13
    have u7 : ¬v7 := by
      rcases c1826 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u8 : v2 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd u2 a
    have u9 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u8 a
    have u10 : v11 := by
      rcases c1832 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u10 a
    have u12 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u10 a
    rcases c950 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd n3 a
    · exact absurd a u12
    · exact absurd a n5
  have c1834 : v27 ∨ v6 ∨ v8 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v4 := by
      rcases c1815 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n11
    have u6 : ¬v26 := by
      rcases c1814 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v9 := by
      rcases c1818 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v13 := by
      rcases c1833 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u13 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v41 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u13
    have u15 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v3 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n8
      · exact a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u16
    have u18 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd u2 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd u2 a
      · exact absurd u17 a
      · exact a
    rcases c513 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n11
    · exact absurd a u3
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd u2 a
  have c1835 : v46 ∨ v8 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v6 := by
      rcases c1834 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd u2 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u5 a
    have u9 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a u7
      · exact a
    have u10 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd u2 a
    have u11 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact a
    rcases c609 with a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u12
    · exact absurd u5 a
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a u7
  have c1836 : v19 ∨ ¬v1 ∨ v7 ∨ ¬v9 ∨ ¬v14 ∨ v18 ∨ v20 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v6 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u2
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n2
    have u5 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
    rcases c1457 with a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1837 : ¬v34 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u4 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
    have u7 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
    have u8 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
    rcases c1787 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c1838 : ¬v14 ∨ ¬v1 ∨ ¬v2 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u5 : v13 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v12 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c73 with a|a|a
    · exact absurd u6 a
    · exact absurd n0 a
    · exact absurd u5 a
  have c1839 : v38 ∨ ¬v1 ∨ ¬v7 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a n4
    rcases c580 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
  have c1840 : v46 ∨ ¬v1 ∨ v2 ∨ v5 ∨ v8 ∨ ¬v13 ∨ ¬v14 ∨ v19 ∨ v26 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n6 a
    have u2 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v38 := by
      rcases c1827 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n0
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
    have u7 : ¬v7 := by
      rcases c1839 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
    rcases c513 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd n1 a
  have c1841 : ¬v1 ∨ v8 ∨ ¬v14 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v5 := by
      rcases c1806 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n7
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
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v2 := by
      rcases c1838 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v13 := by
      rcases c1840 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n7
    have u9 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact a
    have u10 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd u8 a
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u9
    have u11 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u9
      · exact a
      · exact absurd n0 a
    rcases c62 with a|a|a
    · exact absurd n2 a
    · exact absurd u11 a
    · exact absurd u10 a
  have c1842 : v30 ∨ ¬v1 ∨ v5 ∨ v13 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v34 ∨ v37 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v14 := by
      rcases c1438 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u5 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd u2 a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a u3
    have u6 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n6
    rcases c62 with a|a|a
    · exact absurd u1 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c1843 : v46 ∨ v8 ∨ v15 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
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
    have u5 : v21 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n9
    have u6 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v14 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u11 : ¬v34 := by
      rcases c1837 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v5 := by
      rcases c1806 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v26 := by
      rcases c1841 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v33 := by
      rcases c1058 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u11
    have u19 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u24 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u25 : ¬v37 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u26 : v13 := by
      rcases c1842 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u1 a
      · exact absurd a u13
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u27 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u10 a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u10 a
    have u29 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u10 a
      · exact absurd u26 a
      · exact a
    have u30 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u15
    have u31 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u1 a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u30 a
    have u34 : v39 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u31
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u17
      · exact a
    rcases c1831 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u34 a
    · exact absurd a u33
    · exact absurd a u31
    · exact absurd a u32
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u29
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a n9
  have c1844 : v46 ∨ v3 ∨ v4 ∨ v7 ∨ ¬v13 ∨ ¬v14 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u3 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u5 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v39 := by
      rcases c1831 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n13
    have u8 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u7
    have u9 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v40 := by
      rcases c391 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u10
      · exact a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u5
    rcases c1245 with a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n12
  have c1845 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v11 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n8
    rcases c75 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n7
  have c1846 : v37 ∨ v3 ∨ v4 ∨ v5 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v13 ∨ v14 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v48 := by
      rcases c181 with a|a
      · exact a
      · exact absurd n15 a
    have u2 : ¬v47 := by
      rcases c180 with a|a
      · exact absurd n15 a
      · exact a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n15 a
    have u4 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v12 := by
      rcases c1845 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u5 a
      · exact absurd n8 a
      · exact a
    have u7 : ¬v39 := by
      rcases c1831 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v34 := by
      rcases c1739 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n16
    have u9 : v38 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd n15 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u3
      · exact a
    have u10 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a u7
    have u11 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v26 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a n13
    have u15 : v27 := by
      rcases c608 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a u8
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a u1
    rcases c120 with a|a
    · exact absurd u14 a
    · exact absurd u15 a
  have c1847 : v16 ∨ v3 ∨ v4 ∨ v5 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v13 ∨ v14 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v10 := by
      rcases c1846 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v11 := by
      rcases c65 with a|a|a
      · exact absurd u1 a
      · exact absurd n7 a
      · exact a
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a u2
  have c1848 : ¬v26 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v32 := by
      rcases c1023 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v35 := by
      rcases c1350 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
    rcases c141 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c1849 : v7 ∨ ¬v1 ∨ ¬v2 ∨ v8 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u8 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v14 := by
      rcases c1844 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd n4 a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u12 : ¬v37 := by
      rcases c1830 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n17
    have u13 : v9 := by
      rcases c1847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd n4 a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a n14
      · exact absurd a n17
    have u14 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd n4 a
      · exact absurd u13 a
      · exact a
    have u15 : v33 := by
      rcases c1848 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u16 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n17
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a n9
    · exact absurd a u16
    · exact absurd a n12
    · exact absurd a u17
  have c1850 : v2 ∨ ¬v1 ∨ v7 ∨ v8 ∨ ¬v13 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n2
      · exact a
    have u2 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
    rcases c63 with a|a|a
    · exact absurd u2 a
    · exact absurd n4 a
    · exact absurd u1 a
  have c1851 : v28 ∨ ¬v1 ∨ v7 ∨ v8 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v27 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v2 := by
      rcases c1850 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n15
    have u7 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v26 := by
      rcases c1849 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v12 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u7
      · exact a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n4 a
    have u14 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u11 a
      · exact absurd n4 a
      · exact a
    have u15 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u11 a
      · exact absurd n4 a
      · exact a
    have u16 : ¬v39 := by
      rcases c1831 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd u2 a
      · exact absurd a n12
      · exact absurd a n15
    have u17 : ¬v37 := by
      rcases c1830 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n15
    have u18 : v38 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u3
      · exact a
    have u19 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v35 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a u19
    rcases c1700 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a u20
    · exact absurd a u1
    · exact absurd a u19
  have c1852 : ¬v30 ∨ v4 ∨ v5 ∨ ¬v13 ∨ v18 ∨ v19 ∨ v39 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v11 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
    have u5 : v12 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
    rcases c70 with a|a|a
    · exact absurd u5 a
    · exact absurd n3 a
    · exact absurd u4 a
  have c1853 : v15 ∨ v8 ∨ ¬v13 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v20 := by
      rcases c1843 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v7 := by
      rcases c1851 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v38 := by
      rcases c1839 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u12 a
      · exact absurd u2 a
      · exact absurd a n7
    have u14 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v29 := by
      rcases c1772 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n10
    have u21 : ¬v30 := by
      rcases c1852 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u21
    have u23 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u22
    have u24 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u23 a
      · exact absurd n2 a
      · exact a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd u23 a
    · exact absurd a n0
  have c1854 : v47 ∨ v8 ∨ ¬v13 ∨ v15 ∨ v22 ∨ v27 ∨ v28 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v20 := by
      rcases c1843 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v34 := by
      rcases c1853 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
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
    have u14 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u13
    have u19 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u14
    have u20 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u21 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v26 := by
      rcases c1787 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
    have u23 : v41 := by
      rcases c897 with a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n5
      · exact absurd a u20
      · exact a
      · exact absurd a u21
    have u24 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v7 := by
      rcases c1839 with a|a|a|a|a
      · exact absurd a u25
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
    have u27 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u26
      · exact a
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u21
    have u28 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u27 a
      · exact absurd n2 a
      · exact a
    have u29 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u27 a
    have u30 : v4 := by
      rcases c1250 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u31 : v2 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u29
      · exact absurd u3 a
    rcases c2 with a|a|a
    · exact absurd u3 a
    · exact absurd u30 a
    · exact absurd u31 a
  have c1855 : v28 ∨ v4 ∨ v8 ∨ v15 ∨ v22 ∨ v27 ∨ ¬v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u5 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v20 := by
      rcases c1843 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
    have u20 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
    have u21 : v41 := by
      rcases c897 with a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n5
      · exact absurd a u10
      · exact a
      · exact absurd a u18
    have u22 : v26 := by
      rcases c1787 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u23
    have u27 : v3 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n7
      · exact a
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u24
    rcases c1452 with a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd u8 a
    · exact absurd u26 a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n10
  have c1856 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v8 ∨ ¬v14 ∨ v15 ∨ ¬v20 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : v12 := by
      rcases c396 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n7 a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n3
    have u4 : ¬v11 := by
      rcases c71 with a|a|a
      · exact absurd u3 a
      · exact absurd n5 a
      · exact a
    rcases c1226 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd a u2
  have c1857 : v7 ∨ ¬v1 ∨ v4 ∨ v5 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v15 ∨ ¬v20 ∨ v22 ∨ v27 ∨ v28 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v6 := by
      rcases c1856 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u3 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd u1 a
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n0
    have u4 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
    rcases c62 with a|a|a
    · exact absurd n6 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1858 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
    rcases c1422 with a|a|a|a|a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1859 : v34 ∨ ¬v1 ∨ v4 ∨ v5 ∨ v7 ∨ v8 ∨ v13 ∨ v15 ∨ ¬v20 ∨ v22 ∨ v27 ∨ v28 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v14 := by
      rcases c1857 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v26 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a u1
    have u5 : v35 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u5 a
      · exact a
    rcases c665 with a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd u4 a
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n0
  have c1860 : v22 ∨ v4 ∨ v5 ∨ v8 ∨ v15 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v20 := by
      rcases c1843 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v13 := by
      rcases c1854 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v34 := by
      rcases c1855 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : v7 := by
      rcases c1859 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v38 := by
      rcases c1839 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact absurd u4 a
      · exact absurd a n7
    have u13 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v29 := by
      rcases c1772 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n10
    have u19 : ¬v14 := by
      rcases c1856 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v26 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u19
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u5
    have u21 : v12 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a n6
      · exact a
      · exact absurd a u7
    have u22 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v11 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd u21 a
      · exact absurd a u7
    have u25 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u21 a
    have u26 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u13
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u22
    have u27 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u26 a
    rcases c464 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u26 a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u27
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u18
  have c1861 : ¬v1 ∨ ¬v4 ∨ v8 ∨ v15 ∨ ¬v20 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u1
      · exact a
    have u7 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd n0 a
    have u8 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd u7 a
    · exact absurd a n3
  have c1862 : v8 ∨ v15 ∨ v22 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
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
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c1854 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v20 := by
      rcases c1843 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v4 := by
      rcases c1861 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u13 : v5 := by
      rcases c1860 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v12 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v11 := by
      rcases c1429 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n8
    have u16 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd u1 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u13 a
    have u19 : v14 := by
      rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u4
      · exact a
      · exact absurd a n5
    have u20 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u16
      · exact a
      · exact absurd u1 a
    rcases c62 with a|a|a
    · exact absurd u19 a
    · exact absurd u20 a
    · exact absurd u14 a
  have c1863 : v27 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v22 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v15 := by
      rcases c1862 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
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
    have u7 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v9 := by
      rcases c1836 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v2 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd u1 a
    have u14 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd u2 a
    have u15 : v23 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u4
      · exact a
      · exact absurd a n2
    have u16 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u1 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u1 a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v34 := by
      rcases c1764 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd u15 a
      · exact absurd a u14
    have u22 : v12 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u16
      · exact a
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u23 : v13 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c73 with a|a|a
    · exact absurd u22 a
    · exact absurd n3 a
    · exact absurd u23 a
  have c1864 : v49 ∨ v7 ∨ v8 ∨ v22 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v15 := by
      rcases c1862 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v14 := by
      rcases c1863 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u8 : v35 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n0
    have u9 : v23 := by
      rcases c1560 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n5
    have u10 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u9 a
      · exact a
    rcases c289 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd u9 a
    · exact absurd a u3
  have c1865 : v28 ∨ v8 ∨ v22 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v7 := by
      rcases c1864 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
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
    have u4 : v38 := by
      rcases c1839 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact absurd a n4
    have u5 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u16 : v15 := by
      rcases c1862 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u15
    have u23 : ¬v29 := by
      rcases c1772 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n7
    have u24 : ¬v12 := by
      rcases c1749 with a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n1
      · exact a
      · exact absurd u22 a
      · exact absurd a n2
    have u25 : v14 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u18
      · exact a
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd u22 a
    have u26 : v26 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u21
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u27 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u25 a
      · exact absurd u22 a
      · exact a
    have u28 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u25 a
    have u29 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u26 a
      · exact a
    rcases c522 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u29
    · exact absurd a u19
    · exact absurd a u27
    · exact absurd a n0
    · exact absurd u16 a
    · exact absurd a u28
    · exact absurd a u17
    · exact absurd a n1
    · exact absurd a u23
    · exact absurd a u13
  have c1866 : v4 ∨ v3 ∨ v5 ∨ v6 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : v27 := by
      rcases c1865 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v12 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v14 := by
      rcases c1039 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
    have u9 : v9 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n4
    rcases c62 with a|a|a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd u7 a
  have c1867 : ¬v14 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c71 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c73 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    rcases c1226 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a n5
  have c1868 : ¬v11 ∨ v2 ∨ v8 ∨ ¬v12 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v37 ∨ ¬v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
    have u5 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u4 a
    rcases c464 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd u4 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a u5
  have c1869 : v2 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v8 ∨ v19 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v27 := by
      rcases c1865 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n14
    have u9 : v12 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u10 : ¬v11 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd u9 a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd u2 a
    have u11 : v13 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a n6
    have u12 : ¬v10 := by
      rcases c1349 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a n6
    have u13 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
    have u14 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u5
    have u16 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a n14
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a u5
  have c1870 : v8 ∨ ¬v7 ∨ v22 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u6 : v38 := by
      rcases c1839 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a n4
    have u7 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : v27 := by
      rcases c1865 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u12
    have u21 : ¬v15 := by
      rcases c1866 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v19 := by
      rcases c1869 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : v34 := by
      rcases c1028 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u20
      · exact a
      · exact absurd a u16
    have u28 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u28
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u19
    have u32 : v11 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a n4
    have u33 : v10 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u31 a
      · exact absurd a u21
    rcases c54 with a|a|a
    · exact absurd u31 a
    · exact absurd u33 a
    · exact absurd u32 a
  have c1871 : v20 ∨ v15 ∨ v21 ∨ v22 ∨ ¬v27 ∨ ¬v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c467 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n4 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1872 : v20 ∨ ¬v27 ∨ ¬v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n2 a
    rcases c1465 with a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c1873 : v49 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v15 ∨ v18 ∨ v20 ∨ v21 ∨ v25 ∨ v32 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v13 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n5 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n9
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n12 a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n5 a
    have u5 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n5 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v4 := by
      rcases c1815 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
    have u8 : v2 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd n1 a
    have u9 : v39 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n10
      · exact a
    have u10 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    rcases c1831 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd n12 a
    · exact absurd a n13
    · exact absurd a n0
  exact ⟨c1827, c1828, c1831, c1837, c1839, c1848, c1858, c1864, c1867, c1870, c1871, c1872, c1873⟩
