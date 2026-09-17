import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1200-1249 of the 2559-step refutation of ccase003: 125 core clauses and 92 earlier-derived ones give 16 more. -/
theorem CCase003_block024
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v2 ∨ ¬v1 ∨ ¬v5)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c19 : ¬v2 ∨ ¬v4 ∨ ¬v6)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c55 : ¬v11 ∨ ¬v14)
    (c57 : ¬v12 ∨ ¬v14)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c105 : ¬v28 ∨ ¬v26 ∨ ¬v23)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c119 : v22 ∨ v23 ∨ v28 ∨ v27 ∨ v25 ∨ v24)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c147 : ¬v38 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c168 : ¬v45 ∨ ¬v43)
    (c173 : ¬v45 ∨ ¬v44)
    (c179 : ¬v47 ∨ ¬v45)
    (c180 : ¬v48 ∨ ¬v45)
    (c181 : ¬v45 ∨ ¬v49)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c199 : v43 ∨ v49 ∨ ¬v7 ∨ v48 ∨ v1 ∨ v13 ∨ v6 ∨ v14)
    (c204 : v43 ∨ ¬v8 ∨ v4 ∨ v16 ∨ v7 ∨ v15 ∨ v1 ∨ v14 ∨ v11 ∨ v18 ∨ v9 ∨ v10 ∨ v44 ∨ v49)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c278 : v43 ∨ ¬v28 ∨ v42 ∨ v35 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v20 ∨ v19 ∨ v21 ∨ v33 ∨ v48 ∨ v49)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c329 : v10 ∨ v12 ∨ v17 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v4 ∨ v3)
    (c370 : ¬v41 ∨ v34 ∨ v42 ∨ v40 ∨ v33 ∨ v49 ∨ v47 ∨ v48)
    (c372 : v43 ∨ v49 ∨ ¬v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14)
    (c375 : v22 ∨ v16 ∨ v31 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v15 ∨ v30)
    (c419 : ¬v45 ∨ v38 ∨ v46 ∨ v3 ∨ v4 ∨ v37 ∨ v44 ∨ v39)
    (c424 : v19 ∨ ¬v18 ∨ v24 ∨ v5 ∨ v17 ∨ v4 ∨ v12 ∨ v22 ∨ v11 ∨ v3 ∨ v16 ∨ v25 ∨ v15 ∨ v8)
    (c431 : v36 ∨ ¬v30 ∨ v37 ∨ v31 ∨ v24 ∨ v23 ∨ v22 ∨ v29)
    (c436 : v5 ∨ v6 ∨ v46 ∨ v49 ∨ v17 ∨ v19 ∨ v3 ∨ v10 ∨ v7 ∨ v18 ∨ v11 ∨ ¬v4 ∨ v47 ∨ v14)
    (c464 : ¬v45 ∨ v38 ∨ v46 ∨ v3 ∨ v4 ∨ v2 ∨ v44 ∨ v39)
    (c495 : v3 ∨ ¬v4 ∨ v5 ∨ v12 ∨ v47 ∨ v46 ∨ v10 ∨ v11)
    (c509 : ¬v45 ∨ v23 ∨ v31 ∨ v25 ∨ v5 ∨ v4 ∨ v38 ∨ v24 ∨ v37 ∨ v3 ∨ v40 ∨ v44 ∨ v46 ∨ v47)
    (c531 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v44 ∨ v3 ∨ v4 ∨ v2)
    (c534 : ¬v39 ∨ v46 ∨ v25 ∨ v32 ∨ v31 ∨ v34 ∨ v19 ∨ v17 ∨ v18 ∨ v41 ∨ v38 ∨ v40 ∨ v47 ∨ v48)
    (c556 : v23 ∨ ¬v24 ∨ v16 ∨ v25 ∨ v32 ∨ v31 ∨ v30 ∨ v17)
    (c557 : ¬v31 ∨ v38 ∨ v24 ∨ v30 ∨ v32 ∨ v37 ∨ v25 ∨ v23)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c639 : ¬v18 ∨ v1 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c643 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c689 : ¬v19 ∨ ¬v26 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v35)
    (c727 : ¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30)
    (c743 : v28 ∨ ¬v14 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c780 : v12 ∨ v6 ∨ v13 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c800 : ¬v23 ∨ v16 ∨ v22 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31)
    (c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c840 : v20 ∨ v15 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c859 : ¬v10 ∨ ¬v21 ∨ v22 ∨ v28)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c887 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c971 : ¬v10 ∨ v4 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1044 : v22 ∨ ¬v13 ∨ v20 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c1075 : ¬v32 ∨ ¬v41 ∨ v42 ∨ v48 ∨ v49)
    (c1087 : ¬v12 ∨ v6 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c1111 : ¬v28 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c1127 : ¬v26 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v32 ∨ v33 ∨ v34)
    (c1136 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1156 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v48)
    (c1165 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1215 : v26 ∨ v17 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32)
    (c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1232 : ¬v20 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1237 : ¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1264 : ¬v34 ∨ v16 ∨ v22 ∨ ¬v23 ∨ ¬v26)
    (c1267 : ¬v26 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1304 : v43 ∨ ¬v1 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1352 : v20 ∨ v6 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1363 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1364 : v28 ∨ v6 ∨ ¬v14 ∨ v22 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1371 : v33 ∨ ¬v17 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v34)
    (c1379 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1382 : v14 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1390 : ¬v31 ∨ ¬v26 ∨ v27 ∨ ¬v28)
    (c1393 : ¬v41 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c1398 : ¬v7 ∨ v1 ∨ v6 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1418 : ¬v34 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27)
    (c1419 : ¬v28 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v26 ∨ v27)
    (c1424 : v49 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48)
    (c1427 : v19 ∨ ¬v13 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v35 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1454 : ¬v14 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1465 : ¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1501 : ¬v11 ∨ v17 ∨ v18 ∨ v21 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1503 : v28 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1512 : v22 ∨ v1 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1561 : ¬v15 ∨ v8 ∨ v22 ∨ v23 ∨ v28)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1568 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1583 : v15 ∨ v7 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c1605 : v35 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v49)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1635 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1637 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1644 : v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1648 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1674 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v49)
    (c1679 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1680 : ¬v3 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1690 : v9 ∨ v2 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1696 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v49)
    (c1705 : ¬v27 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1706 : v46 ∨ ¬v22 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v39 ∨ v47 ∨ v48)
    (c1711 : ¬v6 ∨ v4 ∨ ¬v12 ∨ v37 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1717 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v44)
    (c1721 : ¬v6 ∨ ¬v4 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1750 : v24 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1771 : v49 ∨ v22 ∨ v26 ∨ v28 ∨ v35 ∨ v46 ∨ v47 ∨ v48)
    (c1772 : ¬v19 ∨ ¬v22 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v35)
    (c1773 : v28 ∨ v26 ∨ ¬v29 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1774 : v33 ∨ ¬v6 ∨ v14 ∨ v21 ∨ v26 ∨ v28 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v33 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28) ∧ (v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v30 ∨ v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v32) ∧ (v23 ∨ v17 ∨ v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32) ∧ (¬v30 ∨ v19 ∨ ¬v26 ∨ ¬v28) ∧ (¬v18 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35) ∧ (¬v1 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46) ∧ (v41 ∨ ¬v1 ∨ v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v1 ∨ ¬v4 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v28 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34 ∨ v35) ∧ (v6 ∨ v1 ∨ ¬v10 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v49) ∧ (v22 ∨ v25 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v23 ∨ v22 ∨ v25 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34) ∧ (v49 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v29 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48) := by
  have c1775 : v33 ∨ ¬v6 ∨ v26 ∨ v28 ∨ v34 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v22 := by
      rcases c1771 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v24 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v19 := by
      rcases c1772 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n5
    have u8 : ¬v4 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v32 := by
      rcases c1706 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v14 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v21 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u11 a
      · exact a
    rcases c882 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1776 : v4 ∨ ¬v6 ∨ v19 ∨ v26 ∨ v33 ∨ ¬v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v12 := by
      rcases c1711 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    rcases c531 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u8
  have c1777 : v28 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v22 := by
      rcases c1771 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v29 := by
      rcases c1773 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v24 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u6 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v19 := by
      rcases c1772 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n5
    have u8 : ¬v4 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v39 := by
      rcases c1776 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v34 := by
      rcases c1775 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n5
    have u15 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
    have u16 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u14 a
      · exact a
    rcases c556 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u16
  have c1778 : v28 ∨ v26 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v22 := by
      rcases c1771 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v24 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u7 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v19 := by
      rcases c1772 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u5 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v29 := by
      rcases c1773 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v6 := by
      rcases c1777 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v41 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n6
    have u15 : ¬v32 := by
      rcases c1075 with a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v34 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n3
    have u20 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u15
    have u21 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u19 a
      · exact a
    rcases c556 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u21
  have c1779 : v28 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v24 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v22 := by
      rcases c1771 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u4 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u5 : v33 := by
      rcases c1778 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v15 := by
      rcases c1465 with a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n0
    have u10 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u11 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u9 a
      · exact a
    rcases c556 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u11
  have c1780 : ¬v33 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u2
      · exact absurd a u3
    rcases c1215 with a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u5
  have c1781 : v17 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v31 ∨ v32 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n1 a
    have u2 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n1 a
    have u3 : v30 := by
      rcases c1215 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n9
    have u6 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a u4
      · exact absurd a n9
    have u7 : v21 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u4
      · exact a
    have u8 : v16 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
    rcases c70 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c1782 : v17 ∨ v26 ∨ v29 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v28 := by
      rcases c1779 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v24 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v25 := by
      rcases c109 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
    have u7 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v33 := by
      rcases c1780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd u2 a
    have u11 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n4
    have u12 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v31 := by
      rcases c1781 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n4
    have u18 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a u16
      · exact absurd a n4
    have u19 : v21 := by
      rcases c278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v6 := by
      rcases c1352 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd u22 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v4 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n8
    have u26 : v39 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u27 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u29
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u9
      · exact a
      · exact absurd a u15
    rcases c1424 with a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd u30 a
    · exact absurd u22 a
    · exact absurd a u28
    · exact absurd a n6
    · exact absurd a n7
  have c1783 : v17 ∨ v26 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v28 := by
      rcases c1779 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v24 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v25 := by
      rcases c109 with a|a|a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
    have u6 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
    have u7 : v29 := by
      rcases c1782 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    rcases c1215 with a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n2
  have c1784 : v17 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v28 := by
      rcases c1779 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v24 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v25 := by
      rcases c109 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
    have u7 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd u2 a
    have u10 : v32 := by
      rcases c1783 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a n2
    have u16 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n2
    have u17 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a u13
      · exact absurd a n2
    have u18 : v21 := by
      rcases c278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u15
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v16 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a u5
    rcases c70 with a|a
    · exact absurd u19 a
    · exact absurd u18 a
  have c1785 : v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v24 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v28 := by
      rcases c1779 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u5 : v17 := by
      rcases c1784 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v29 := by
      rcases c1214 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
    have u10 : v34 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    rcases c128 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c1786 : v35 ∨ ¬v17 ∨ v22 ∨ v25 ∨ ¬v29 ∨ v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v24 := by
      rcases c1127 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
    have u12 : v27 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact a
    have u13 : ¬v28 := by
      rcases c1111 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
    have u14 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v13 := by
      rcases c662 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a n3
    have u19 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u12 a
      · exact absurd u8 a
      · exact a
    have u20 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v10 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a n3
    have u22 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : v4 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a n6
    have u27 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u17
      · exact absurd a u13
    have u28 : ¬v1 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n9
    have u29 : ¬v6 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1398 with a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u25
    · exact absurd a u15
    · exact absurd a n8
    · exact absurd a n9
  have c1787 : v22 ∨ ¬v17 ∨ v25 ∨ ¬v26 ∨ ¬v27 ∨ v29 ∨ v32 ∨ v35 ∨ v42 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u4 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n9 a
      · exact a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd n9 a
      · exact a
    have u9 : v10 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n2
    have u10 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n11
    have u11 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u5
    have u16 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n11
    have u17 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a u1
    have u18 : v39 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n6
      · exact a
    have u19 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd u15 a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u18 a
    rcases c531 with a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a u22
    · exact absurd a n10
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a u20
  have c1788 : v48 ∨ ¬v17 ∨ v22 ∨ v25 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v29 := by
      rcases c1786 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u8 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u9 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n8
    have u13 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n8
    have u14 : ¬v27 := by
      rcases c1787 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd u9 a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a n8
    have u15 : ¬v28 := by
      rcases c1419 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a u14
    have u16 : ¬v34 := by
      rcases c1418 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd a u14
    have u17 : v33 := by
      rcases c1371 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd a u16
    have u18 : ¬v41 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u19 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v37 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
    have u22 : v1 := by
      rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u23 : ¬v23 := by
      rcases c800 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u19
    have u24 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u22 a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u25 : ¬v13 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u26 : ¬v12 := by
      rcases c1087 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n8
    rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
  have c1789 : v30 ∨ v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    rcases c556 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n1
  have c1790 : v23 ∨ v17 ∨ v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v24 := by
      rcases c119 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n3
      · exact a
    have u2 : v30 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u3
    have u6 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u5 a
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n3
  have c1791 : ¬v30 ∨ v19 ∨ ¬v26 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1111 with a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
  have c1792 : ¬v18 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n0 a
    rcases c840 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1793 : ¬v1 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    rcases c1679 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1794 : v48 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u2 : ¬v17 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u5 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v28 := by
      rcases c1790 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v18 := by
      rcases c1792 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v24 := by
      rcases c111 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u3 a
    have u11 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a n9
    have u12 : ¬v30 := by
      rcases c1791 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd u6 a
    have u13 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n13
    have u14 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n13
    have u15 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u16 : v34 := by
      rcases c1111 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
    have u17 : ¬v1 := by
      rcases c1793 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n13
    have u18 : v20 := by
      rcases c1418 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u7
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
    have u19 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a u19
    have u23 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : v7 := by
      rcases c1136 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u17
      · exact a
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
    have u27 : ¬v6 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    rcases c1398 with a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u17
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n13
  have c1795 : ¬v39 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v31 ∨ v32 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    rcases c534 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n11
  have c1796 : v32 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v29 ∨ v31 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v17 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v28 := by
      rcases c1790 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n0
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v24 := by
      rcases c111 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u8 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n7
    have u9 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n11
    have u11 : ¬v30 := by
      rcases c1791 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd u4 a
    have u12 : ¬v37 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
    have u13 : v33 := by
      rcases c1794 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u14 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a u14
      · exact absurd a n7
    have u17 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n7
    have u18 : ¬v39 := by
      rcases c1795 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : v21 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u14
      · exact a
    have u20 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v1 := by
      rcases c1793 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n11
    have u23 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n11
    have u24 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v6 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a n4
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a n10
    · exact absurd a u14
  have c1797 : v49 ∨ v22 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v17 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u2 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n0
    have u7 : v23 := by
      rcases c1796 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u8 : ¬v28 := by
      rcases c105 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u7 a
    have u9 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u7 a
    have u10 : v16 := by
      rcases c800 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v34 := by
      rcases c1418 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n3
    have u17 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u18 : ¬v11 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n0
    have u19 : ¬v39 := by
      rcases c1795 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u19
    have u21 : v13 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u20 a
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u22 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u15
    rcases c1674 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd u24 a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n0
  have c1798 : v49 ∨ v22 ∨ v25 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n0
    have u7 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
    have u8 : v30 := by
      rcases c1797 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u12 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v28 := by
      rcases c839 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    have u20 : ¬v11 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n0
    have u21 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u14
    have u22 : v13 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u21 a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u23 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a u15
    rcases c1674 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd u25 a
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n0
  have c1799 : v28 ∨ v1 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v6 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v21 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u11 a
    rcases c1583 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd u11 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
  have c1800 : ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n10
    have u6 : v1 := by
      rcases c1799 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u11 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n10
    have u12 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u11 a
      · exact a
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd n0 a
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u14
    · exact absurd a u12
  have c1801 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    rcases c643 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
  have c1802 : v28 ∨ v4 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
    have u2 : v19 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1501 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n11
    · exact absurd a n12
  have c1803 : v46 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v4 := by
      rcases c1800 with a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : ¬v17 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n13
    have u5 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n11
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v42 := by
      rcases c1237 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n0
    have u13 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n0
    have u14 : v18 := by
      rcases c1802 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n13
    have u16 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v37 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n7 a
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
    have u18 : v1 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u9
    have u19 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n13
      · exact absurd a u11
      · exact absurd a n5
    have u20 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
    rcases c464 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u20
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u22
    · exact absurd a u10
    · exact absurd a u8
  have c1804 : ¬v1 ∨ v4 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u5 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n6
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u11
      · exact a
      · exact absurd a u3
    have u13 : v38 := by
      rcases c464 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n10
    have u14 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n7
    have u16 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u15 a
      · exact a
    rcases c643 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n5
  have c1805 : v28 ∨ v4 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v32 ∨ v35 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v17 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v15 := by
      rcases c1561 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v1 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n14
    have u8 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n14
    have u9 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v3 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n14
    have u11 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u7 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v18 := by
      rcases c1804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u13 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n10
    have u14 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v5 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c329 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u16
    · exact absurd u13 a
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a u10
  have c1806 : v41 ∨ ¬v1 ∨ v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v3 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n14
    have u6 : v2 := by
      rcases c531 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n2
      · exact a
    have u7 : v39 := by
      rcases c419 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u3
      · exact a
    have u8 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v25 := by
      rcases c509 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v33 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u12 a
    have u18 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u12 a
    have u19 : ¬v14 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c1382 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a n14
  have c1807 : v32 ∨ v4 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v31 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n13
    have u6 : ¬v30 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n13
    have u8 : v39 := by
      rcases c1805 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v1 := by
      rcases c1806 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u2
    have u13 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u3
    have u20 : ¬v18 := by
      rcases c643 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u22 : ¬v6 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd u19 a
      · exact a
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a n12
    have u23 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
    have u24 : v21 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u15
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
    have u25 : v15 := by
      rcases c204 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u23
      · exact a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a n13
    rcases c65 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c1808 : v49 ∨ v22 ∨ v25 ∨ v29 ∨ v31 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v27 := by
      rcases c1798 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
    have u6 : ¬v4 := by
      rcases c1800 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    rcases c1807 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
  have c1809 : ¬v1 ∨ ¬v4 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u5 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u6 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u5 a
      · exact a
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a u6
  have c1810 : ¬v28 ∨ ¬v26 ∨ ¬v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c1390 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n0 a
  have c1811 : v30 ∨ v22 ∨ ¬v23 ∨ v25 ∨ ¬v26 ∨ v29 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n0
    have u3 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u4 : v34 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    have u5 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v16 := by
      rcases c1264 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n4 a
    have u7 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u5
    have u8 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u6 a
      · exact a
    rcases c1418 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a u3
  have c1812 : v23 ∨ ¬v4 ∨ v22 ∨ v28 ∨ v29 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v24 := by
      rcases c1800 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
    have u9 : ¬v1 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u10 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u5
    have u11 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n9
    have u15 : ¬v6 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c199 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd u14 a
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u12
  have c1813 : v32 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c1800 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v31 := by
      rcases c1808 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v17 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n11
    have u11 : v38 := by
      rcases c557 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n2
    have u12 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n8
    have u14 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n8
    have u15 : v18 := by
      rcases c1802 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v15 := by
      rcases c1561 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
    have u17 : v1 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n11
    have u18 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u17 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u22 : ¬v3 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n11
    have u23 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u24 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd u17 a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u21
      · exact a
      · exact absurd a u20
    have u27 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u18
      · exact a
      · exact absurd a u8
      · exact absurd a u25
      · exact absurd a u5
    have u28 : v11 := by
      rcases c424 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u15 a
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u26
      · exact absurd a n1
      · exact a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u14
    rcases c45 with a|a
    · exact absurd u27 a
    · exact absurd u28 a
  have c1814 : v48 ∨ v22 ∨ v25 ∨ v29 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n8
    have u7 : v31 := by
      rcases c1808 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u12 : ¬v23 := by
      rcases c1811 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
    have u13 : ¬v28 := by
      rcases c1810 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u7 a
    have u14 : ¬v4 := by
      rcases c1812 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u15 : v24 := by
      rcases c1813 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u16 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u2 a
    have u17 : v19 := by
      rcases c1127 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u15 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u10
    have u18 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v39 := by
      rcases c1802 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u23 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v13 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u26 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u10
    have u27 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u26 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u28 : ¬v2 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd u26 a
      · exact absurd a u25
      · exact absurd a n7
      · exact absurd a n0
    have u29 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u27
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n8
    have u30 : v3 := by
      rcases c531 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u24
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a u5
      · exact a
      · exact absurd a u14
      · exact absurd a u28
    rcases c29 with a|a|a
    · exact absurd u30 a
    · exact absurd u29 a
    · exact absurd u26 a
  have c1815 : v23 ∨ v4 ∨ v22 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v29 := by
      rcases c1814 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : ¬v17 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v24 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n5
    have u11 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n10
    have u14 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v36 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n6
      · exact a
      · exact absurd a u13
    have u17 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n7
    have u18 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v3 := by
      rcases c419 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u18
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u15
    have u20 : ¬v1 := by
      rcases c1806 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v18 := by
      rcases c1802 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v7 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u20
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a n10
    have u24 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    rcases c29 with a|a|a
    · exact absurd u19 a
    · exact absurd u23 a
    · exact absurd u24 a
  have c1816 : ¬v28 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v19 := by
      rcases c689 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    rcases c1111 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1817 : ¬v7 ∨ ¬v4 ∨ v37 ∨ v38 ∨ v39 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c31 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v49 := by
      rcases c181 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v48 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v47 := by
      rcases c179 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : v14 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u9 a
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a u10
  have c1818 : v2 ∨ v1 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v7 := by
      rcases c1817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd n12 a
      · exact absurd a n13
    have u4 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u2
    have u5 : v9 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u2
    have u6 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v21 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n14
    rcases c642 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n6
  have c1819 : ¬v9 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd n0 a
      · exact a
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u1
  have c1820 : v6 ∨ v1 ∨ ¬v10 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v7 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n4
  have c1821 : v46 ∨ v22 ∨ v23 ∨ v25 ∨ v32 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
    have u2 : v29 := by
      rcases c1814 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
    have u3 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v24 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n4
    have u12 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v28 := by
      rcases c1816 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u15 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n8
    have u16 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n6
    have u18 : v36 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd u2 a
      · exact absurd a n5
      · exact a
      · exact absurd a u15
    have u19 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v4 := by
      rcases c1815 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v1 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
    have u22 : ¬v7 := by
      rcases c1817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd u4 a
      · exact absurd a n0
    have u23 : ¬v18 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n8
    have u24 : v2 := by
      rcases c1818 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n8
    have u25 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v6 := by
      rcases c19 with a|a|a
      · exact absurd u24 a
      · exact absurd u20 a
      · exact a
    have u27 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u20 a
    have u28 : ¬v10 := by
      rcases c1820 with a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u21
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n8
    have u29 : ¬v9 := by
      rcases c1819 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd u20 a
      · exact absurd a u25
      · exact absurd a n0
      · exact absurd a n6
    have u30 : v8 := by
      rcases c1717 with a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u21
      · exact absurd u20 a
      · exact a
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u9
      · exact absurd a u10
    have u31 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u30 a
      · exact a
    have u33 : v19 := by
      rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u1
      · exact a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u31
      · exact absurd u20 a
      · exact absurd a n6
      · exact absurd a u32
    have u34 : v21 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u32
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    rcases c79 with a|a
    · exact absurd u34 a
    · exact absurd u33 a
  have c1822 : v22 ∨ v25 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v17 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u3 : v29 := by
      rcases c1814 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u4 : v23 := by
      rcases c1821 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u11 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u11 a
    rcases c375 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd u4 a
    · exact absurd a u13
    · exact absurd a u6
  have c1823 : ¬v23 ∨ v22 ∨ v25 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v27 := by
      rcases c1267 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c104 with a|a|a
    · exact absurd u1 a
    · exact absurd n3 a
    · exact absurd n0 a
  have c1824 : v49 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v29 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v26 := by
      rcases c1785 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v28 := by
      rcases c1812 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v19 := by
      rcases c689 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v32 := by
      rcases c1822 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u9 : v33 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
    rcases c139 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  exact ⟨c1780, c1785, c1789, c1790, c1791, c1792, c1793, c1800, c1801, c1806, c1809, c1816, c1820, c1822, c1823, c1824⟩
