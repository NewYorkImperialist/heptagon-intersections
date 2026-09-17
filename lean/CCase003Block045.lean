import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2250-2299 of the 2559-step refutation of ccase003: 140 core clauses and 101 earlier-derived ones give 9 more. -/
theorem CCase003_block045
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
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
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c89 : ¬v22 ∨ ¬v27 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c158 : ¬v40 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c164 : ¬v41 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c171 : ¬v48 ∨ ¬v43)
    (c172 : ¬v43 ∨ ¬v49)
    (c176 : ¬v48 ∨ ¬v44)
    (c177 : ¬v44 ∨ ¬v49)
    (c180 : ¬v48 ∨ ¬v45)
    (c181 : ¬v45 ∨ ¬v49)
    (c183 : ¬v46 ∨ ¬v48)
    (c184 : ¬v49 ∨ ¬v46)
    (c185 : ¬v47 ∨ ¬v48)
    (c186 : ¬v49 ∨ ¬v47)
    (c187 : ¬v49 ∨ ¬v48)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c198 : ¬v30 ∨ v37 ∨ v15 ∨ v33 ∨ v22 ∨ v23 ∨ v17 ∨ v16 ∨ v29 ∨ v31 ∨ v40 ∨ v38 ∨ v26 ∨ v32)
    (c218 : v43 ∨ ¬v36 ∨ v44 ∨ v42 ∨ v35 ∨ v37 ∨ v30 ∨ v29)
    (c223 : ¬v48 ∨ v41 ∨ v28 ∨ v26 ∨ v6 ∨ v5 ∨ v27 ∨ v39 ∨ v34 ∨ v4 ∨ v42 ∨ v46 ∨ v47 ∨ v49)
    (c285 : ¬v40 ∨ v33 ∨ v46 ∨ v6 ∨ v41 ∨ v5 ∨ v47 ∨ v36 ∨ v4 ∨ v29 ∨ v42 ∨ v43 ∨ v34 ∨ v39)
    (c299 : v29 ∨ v23 ∨ v35 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v16 ∨ v28)
    (c300 : ¬v48 ∨ v6 ∨ v40 ∨ v49 ∨ v7 ∨ v47 ∨ v5 ∨ v41)
    (c303 : ¬v34 ∨ v41 ∨ v27 ∨ v26 ∨ v35 ∨ v33 ∨ v40 ∨ v28)
    (c305 : v27 ∨ ¬v19 ∨ v11 ∨ v26 ∨ v13 ∨ v12 ∨ v18 ∨ v20)
    (c307 : v22 ∨ ¬v15 ∨ v28 ∨ v21 ∨ v9 ∨ v16 ∨ v8 ∨ v14)
    (c333 : ¬v16 ∨ v23 ∨ v1 ∨ v21 ∨ v3 ∨ v27 ∨ v15 ∨ v22 ∨ v17 ∨ v20 ∨ v2 ∨ v10 ∨ v9 ∨ v13)
    (c336 : ¬v49 ∨ v42 ∨ v6 ∨ v22 ∨ v7 ∨ v5 ∨ v27 ∨ v36 ∨ v35 ∨ v40 ∨ v28 ∨ v43 ∨ v47 ∨ v48)
    (c345 : ¬v34 ∨ v41 ∨ v33 ∨ v27 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c346 : v23 ∨ v22 ∨ v3 ∨ v15 ∨ v10 ∨ v19 ∨ v5 ∨ v24 ∨ v2 ∨ v12 ∨ v8 ∨ ¬v9 ∨ v11 ∨ v16)
    (c355 : ¬v34 ∨ v27 ∨ v33 ∨ v28 ∨ v7 ∨ v41 ∨ v36 ∨ v40 ∨ v35 ∨ v29 ∨ v6 ∨ v5 ∨ v22 ∨ v48)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c362 : v23 ∨ v22 ∨ v21 ∨ ¬v15 ∨ v14 ∨ v8 ∨ v16 ∨ v9)
    (c375 : v22 ∨ v16 ∨ v31 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v15 ∨ v30)
    (c395 : ¬v49 ∨ v42 ∨ v6 ∨ v1 ∨ v7 ∨ v36 ∨ v43 ∨ v48)
    (c451 : v22 ∨ v27 ∨ v3 ∨ v21 ∨ v17 ∨ v1 ∨ v13 ∨ v10 ∨ v9 ∨ v7 ∨ v8 ∨ v20 ∨ ¬v14 ∨ v28)
    (c468 : ¬v33 ∨ v26 ∨ v4 ∨ v34 ∨ v32 ∨ v27 ∨ v40 ∨ v28 ∨ v35 ∨ v39 ∨ v6 ∨ v5 ∨ v42 ∨ v47)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c486 : v22 ∨ v26 ∨ v5 ∨ v27 ∨ v18 ∨ v6 ∨ v12 ∨ v11 ∨ v4 ∨ v21 ∨ v15 ∨ ¬v19 ∨ v8 ∨ v20)
    (c498 : v43 ∨ ¬v30 ∨ v35 ∨ v45 ∨ v34 ∨ v22 ∨ v29 ∨ v37 ∨ v44 ∨ v38 ∨ v41 ∨ v23 ∨ v27 ∨ v31)
    (c503 : ¬v48 ∨ v41 ∨ v40 ∨ v49 ∨ v5 ∨ v6 ∨ v47 ∨ v42)
    (c516 : v15 ∨ v27 ∨ v25 ∨ v1 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v12 ∨ v18 ∨ v26)
    (c552 : v36 ∨ ¬v35 ∨ v28 ∨ v22 ∨ v34 ∨ v27 ∨ v42 ∨ v29)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c734 : v20 ∨ v7 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c771 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v26 ∨ v30 ∨ v31)
    (c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c800 : ¬v23 ∨ v16 ∨ v22 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31)
    (c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c845 : ¬v19 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c855 : v28 ∨ v19 ∨ v22 ∨ ¬v25 ∨ ¬v35 ∨ v41 ∨ v42)
    (c861 : v44 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c932 : ¬v19 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c971 : ¬v10 ∨ v4 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1053 : ¬v4 ∨ v3 ∨ v5 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47)
    (c1127 : ¬v26 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v32 ∨ v33 ∨ v34)
    (c1146 : v2 ∨ v4 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c1152 : v11 ∨ v4 ∨ v10 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1201 : ¬v24 ∨ v16 ∨ v17 ∨ v25 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32)
    (c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1264 : ¬v34 ∨ v16 ∨ v22 ∨ ¬v23 ∨ ¬v26)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1311 : v40 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v29 ∨ v34 ∨ v36 ∨ v42)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1462 : ¬v35 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1513 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v27 ∨ v29 ∨ v35)
    (c1514 : ¬v25 ∨ v18 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33)
    (c1515 : v11 ∨ ¬v1 ∨ v18 ∨ v25 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1561 : ¬v15 ∨ v8 ∨ v22 ∨ v23 ∨ v28)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1568 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1662 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v15 ∨ v21)
    (c1690 : v9 ∨ v2 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1692 : v18 ∨ v2 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v19 ∨ v46 ∨ v47 ∨ v48)
    (c1791 : ¬v30 ∨ v19 ∨ ¬v26 ∨ ¬v28)
    (c1792 : ¬v18 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35)
    (c1801 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1809 : ¬v1 ∨ ¬v4 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49)
    (c1921 : ¬v10 ∨ v3 ∨ v4 ∨ v16 ∨ v17 ∨ v18)
    (c1934 : ¬v19 ∨ v3 ∨ v4 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1961 : ¬v24 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v31)
    (c1984 : ¬v22 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31)
    (c2006 : ¬v34 ∨ v19 ∨ ¬v24 ∨ ¬v26)
    (c2039 : ¬v21 ∨ ¬v22 ∨ ¬v24)
    (c2113 : ¬v22 ∨ ¬v26 ∨ ¬v34)
    (c2114 : ¬v28 ∨ v19 ∨ v20 ∨ ¬v26 ∨ ¬v34 ∨ v35)
    (c2115 : ¬v23 ∨ v24 ∨ ¬v26 ∨ ¬v34)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2223 : ¬v41 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33)
    (c2257 : ¬v28 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v35)
    (c2259 : ¬v1 ∨ ¬v3 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2306 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2356 : v5 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v18)
    (c2364 : ¬v35 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c2385 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2405 : v2 ∨ v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v23 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2414 : v30 ∨ ¬v23 ∨ ¬v27 ∨ v31 ∨ v33 ∨ v34)
    (c2452 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2595 : v48 ∨ v49)
    (c2608 : ¬v42 ∨ v22 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v43 ∨ v45 ∨ v49)
    (c2638 : ¬v42 ∨ v4 ∨ v6 ∨ v7 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v49)
    (c2655 : ¬v26 ∨ v49)
    (c2670 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47)
    (c2680 : ¬v19 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2682 : ¬v10 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43)
    (c2687 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c2699 : ¬v19 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c2707 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c2708 : ¬v31 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v45 ∨ v46 ∨ v47)
    (c2715 : v28 ∨ ¬v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v31)
    (c2781 : v24 ∨ v49)
    (c2790 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v30 ∨ v49)
    (c2812 : ¬v31 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v49)
    (c2813 : ¬v30 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v49)
    (c2823 : ¬v15 ∨ ¬v22 ∨ ¬v24 ∨ v31)
    (c2829 : ¬v5 ∨ v49)
    (c2838 : ¬v31 ∨ v25 ∨ v49)
    (c2841 : ¬v32 ∨ v25 ∨ v49)
    (c2842 : ¬v22 ∨ v5 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46 ∨ v47)
    (c2843 : ¬v29 ∨ v25 ∨ v49)
    (c2844 : ¬v12 ∨ v19 ∨ v22 ∨ v29 ∨ v30 ∨ v31 ∨ v49)
    (c2845 : ¬v1 ∨ v18 ∨ v25 ∨ v49)
    (c2846 : v28 ∨ v19 ∨ v25 ∨ v30 ∨ v33 ∨ v35 ∨ v49)
    (c2847 : ¬v28 ∨ ¬v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35)
    (c2851 : v1 ∨ v19 ∨ v25 ∨ v30 ∨ v35 ∨ v49)
    : (v49) ∧ (v19 ∨ v4 ∨ v5 ∨ v6 ∨ v26 ∨ v33) ∧ (v26 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39) ∧ (¬v42 ∨ v5 ∨ v6 ∨ ¬v34) ∧ (¬v27 ∨ v5 ∨ v6 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v36) ∧ (¬v26 ∨ v5 ∨ v6 ∨ ¬v34) ∧ (v3 ∨ v1 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36) ∧ (v23 ∨ v5 ∨ v6 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v42) ∧ (v19 ∨ v5 ∨ v6 ∨ ¬v7 ∨ v26 ∨ v33) := by
  have c2852 : v35 ∨ v19 ∨ v25 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v32 := by
      rcases c2841 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u2 : ¬v31 := by
      rcases c2838 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u3 : ¬v29 := by
      rcases c2843 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u4 : ¬v5 := by
      rcases c2829 with a|a
      · exact a
      · exact absurd a n4
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u6 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n4
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u11
    have u14 : v1 := by
      rcases c2851 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u15 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u16 : ¬v26 := by
      rcases c2655 with a|a
      · exact a
      · exact absurd a n4
    have u17 : ¬v22 := by
      rcases c2842 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u18 : ¬v28 := by
      rcases c2847 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
    have u19 : v18 := by
      rcases c2845 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u20 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v27 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
    have u24 : v33 := by
      rcases c2846 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
    have u25 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd u24 a
    have u27 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n4
    have u28 : v6 := by
      rcases c223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u16
      · exact a
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u29 : v8 := by
      rcases c2452 with a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd u14 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u30 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u29 a
      · exact a
    rcases c734 with a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a n4
  have c2853 : v19 ∨ v25 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v32 := by
      rcases c2841 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u2 : ¬v31 := by
      rcases c2838 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u3 : ¬v29 := by
      rcases c2843 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u4 : ¬v5 := by
      rcases c2829 with a|a
      · exact a
      · exact absurd a n3
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u6 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n3
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u11
    have u14 : v35 := by
      rcases c2852 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v26 := by
      rcases c1127 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u15
    have u18 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
    have u19 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u18
    have u20 : ¬v22 := by
      rcases c2842 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    rcases c2844 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n3
  have c2854 : v30 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v31 := by
      rcases c2838 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v29 := by
      rcases c2843 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n2
    have u4 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n2
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v32 := by
      rcases c2841 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v19 := by
      rcases c2853 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u10 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v26 := by
      rcases c771 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a u1
    have u16 : ¬v27 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u8
    have u17 : ¬v22 := by
      rcases c1984 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd u4 a
      · exact absurd a u1
    have u18 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u15
    have u19 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u16
    have u20 : v1 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n2
    rcases c1515 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd u20 a
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
  have c2855 : ¬v19 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v31 := by
      rcases c2838 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u7 : v30 := by
      rcases c2854 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n2
    have u9 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v22 := by
      rcases c1984 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u9 a
      · exact absurd a u6
    have u11 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v23 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
    have u16 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u15 a
    have u17 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u15 a
    have u18 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u16
    have u19 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u17
    have u20 : ¬v1 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
    rcases c2813 with a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a n2
  have c2856 : ¬v1 ∨ ¬v12 ∨ v19 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c2829 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
    have u9 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
    rcases c1578 with a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a n2
  have c2857 : v22 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v15 := by
      rcases c2813 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n6
    have u2 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v28 := by
      rcases c307 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
    have u6 : v23 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
    rcases c100 with a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd u2 a
  have c2858 : v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v5 := by
      rcases c2829 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n1
    have u3 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n1
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v19 := by
      rcases c2855 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u8 : ¬v31 := by
      rcases c2838 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u9 : ¬v29 := by
      rcases c2843 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u10 : v30 := by
      rcases c2854 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u11 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v26 := by
      rcases c1127 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd a u6
    have u17 : ¬v40 := by
      rcases c2670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
    have u18 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u17
    have u19 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u18 a
      · exact a
    have u25 : ¬v1 := by
      rcases c2856 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u7
      · exact absurd a n1
    have u26 : v22 := by
      rcases c2857 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd u10 a
      · exact absurd a n1
    have u27 : ¬v15 := by
      rcases c2823 with a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u3 a
      · exact absurd a u8
    have u28 : ¬v21 := by
      rcases c2039 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u3 a
    have u29 : ¬v27 := by
      rcases c89 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u3 a
    have u30 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u3 a
    have u31 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u26 a
    have u32 : ¬v20 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u7
      · exact a
      · exact absurd a u28
      · exact absurd a u15
      · exact absurd a u29
      · exact absurd a u30
    have u33 : v4 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u32
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u29
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u34 : v16 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u31
      · exact absurd a u11
      · exact absurd u26 a
      · exact absurd a u28
      · exact absurd a u27
      · exact a
      · exact absurd a u30
    have u35 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u36 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u34 a
      · exact a
    have u37 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u33 a
      · exact absurd u35 a
      · exact a
    rcases c516 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u29
    · exact absurd a n0
    · exact absurd a u25
    · exact absurd a u7
    · exact absurd a u37
    · exact absurd a u1
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd u18 a
    · exact absurd a u36
    · exact absurd a u15
  have c2859 : ¬v12 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v2 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1013 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
  have c2860 : v8 ∨ v1 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v5 := by
      rcases c2829 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n2
    have u4 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a n2
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u10 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u14 : ¬v15 := by
      rcases c1561 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u10
    have u15 : ¬v31 := by
      rcases c2812 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n2
    have u16 : ¬v30 := by
      rcases c2813 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n2
    have u17 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : v29 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n2
    have u19 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n2
    have u23 : v36 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd u18 a
      · exact absurd a u20
      · exact a
      · exact absurd a u17
    have u24 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v6 := by
      rcases c503 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a u22
    have u27 : ¬v12 := by
      rcases c2859 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u28 : v19 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u8
      · exact a
      · exact absurd a u21
      · exact absurd a u25
    have u29 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : v2 := by
      rcases c2699 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u6
    have u33 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u26 a
    have u34 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u26 a
    have u35 : v14 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u34
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n2
    have u36 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u35 a
    have u37 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u35 a
    have u38 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u35 a
      · exact a
    rcases c451 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u33
    · exact absurd a u31
    · exact absurd a u29
    · exact absurd a n1
    · exact absurd a u38
    · exact absurd a u36
    · exact absurd a u37
    · exact absurd a u34
    · exact absurd a n0
    · exact absurd a u30
    · exact absurd u35 a
    · exact absurd a u10
  have c2861 : v2 ∨ v1 ∨ v30 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v8 := by
      rcases c2860 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n4
    have u4 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u14 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u17 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u18 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n2
    have u19 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u14
    have u20 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v3 := by
      rcases c333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u17
      · exact a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
    have u23 : v7 := by
      rcases c1662 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u17
    have u24 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u23 a
      · exact absurd u22 a
      · exact a
    rcases c663 with a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u12
  have c2862 : v31 ∨ v1 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v8 := by
      rcases c2860 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n3
    have u4 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a n3
    have u5 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u15 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u18 : ¬v19 := by
      rcases c1961 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a n0
    have u19 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u20 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u15
    have u21 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u22 : v2 := by
      rcases c2861 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a n3
    have u23 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u22 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n1
    have u24 : ¬v4 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
    have u25 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u22 a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u22 a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v42 := by
      rcases c2638 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n3
    have u28 : v35 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact a
      · exact absurd a u27
      · exact absurd a n3
    have u29 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : v41 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd u4 a
      · exact absurd u28 a
      · exact a
      · exact absurd a u27
    have u32 : v36 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a u16
      · exact absurd a u27
      · exact absurd a u30
    rcases c150 with a|a
    · exact absurd u31 a
    · exact absurd u32 a
  have c2863 : ¬v31 ∨ v5 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v19 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c932 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c2864 : v1 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v5 := by
      rcases c2829 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n1
    have u3 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n1
    have u4 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a n1
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u11 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u14 : v8 := by
      rcases c2860 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u15 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v31 := by
      rcases c2863 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
    have u20 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
    have u21 : ¬v19 := by
      rcases c1961 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u18
      · exact a
      · exact absurd a u19
    have u22 : v30 := by
      rcases c2862 with a|a|a|a
      · exact absurd a u19
      · exact absurd a n0
      · exact a
      · exact absurd a n1
    have u23 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : v40 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u26
      · exact a
    have u28 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u27 a
      · exact a
    rcases c498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u22 a
    · exact absurd a u23
    · exact absurd a u5
    · exact absurd a u25
    · exact absurd a u13
    · exact absurd a u24
    · exact absurd a u29
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a u28
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u19
  have c2865 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v34 ∨ v39 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v40 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    have u2 : v48 := by
      rcases c1272 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact a
    have u3 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v49 := by
      rcases c187 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v1 := by
      rcases c2864 with a|a
      · exact a
      · exact absurd a u6
    have u10 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a u6
    have u11 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a u6
    have u12 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
    have u13 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    have u16 : ¬v35 := by
      rcases c2364 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : v6 := by
      rcases c223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
    have u18 : v8 := by
      rcases c2452 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd u9 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v20 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
    rcases c618 with a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a n2
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u14
    · exact absurd a u13
  have c2866 : ¬v6 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v1 := by
      rcases c2864 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a n3
    have u4 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n3
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
    have u11 : v8 := by
      rcases c2452 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
    have u12 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v20 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    rcases c618 with a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u8
  have c2867 : v34 ∨ v19 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v5 := by
      rcases c2829 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v1 := by
      rcases c2864 with a|a
      · exact a
      · exact absurd a n3
    have u4 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a n3
    have u5 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n3
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
    have u12 : ¬v12 := by
      rcases c2856 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u13 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u17 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a u10
    have u18 : ¬v31 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
    have u19 : v33 := by
      rcases c2865 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n3
    have u22 : ¬v6 := by
      rcases c2866 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n3
    have u23 : v40 := by
      rcases c468 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u14
      · exact a
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u9
    have u24 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u23 a
    rcases c223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u22
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n3
  have c2868 : ¬v34 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v40 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u2
      · exact a
    have u4 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u3 a
    rcases c345 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n4
  have c2869 : v19 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v5 := by
      rcases c2829 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n1
    have u3 : v1 := by
      rcases c2864 with a|a
      · exact a
      · exact absurd a n1
    have u4 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a n1
    have u5 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n1
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
    have u11 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u15 : ¬v12 := by
      rcases c2856 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u16 : ¬v34 := by
      rcases c2868 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
    have u17 : v32 := by
      rcases c2867 with a|a|a|a
      · exact absurd a u16
      · exact absurd a n0
      · exact a
      · exact absurd a n1
    have u18 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : v40 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u20
      · exact a
    have u22 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : v6 := by
      rcases c285 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u20
      · exact absurd a u9
      · exact a
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u25
    have u27 : v8 := by
      rcases c2452 with a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd u3 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n1
    have u28 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : v20 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a n1
    rcases c618 with a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u15
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u12
    · exact absurd a u11
  have c2870 : v12 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v5 := by
      rcases c2829 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n1
    have u3 : v19 := by
      rcases c2869 with a|a
      · exact a
      · exact absurd a n1
    have u4 : v1 := by
      rcases c2864 with a|a
      · exact a
      · exact absurd a n1
    have u5 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a n1
    have u6 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n1
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u3 a
    have u16 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u3 a
      · exact a
    have u17 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u3 a
    have u18 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u19 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u20 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u21 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n1
    have u22 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
    have u23 : ¬v10 := by
      rcases c1921 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
    have u24 : ¬v11 := by
      rcases c2356 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u23
      · exact a
      · exact absurd a n0
      · exact absurd a u15
    have u25 : v13 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u3 a
      · exact absurd a u24
      · exact absurd a u18
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u16
    have u26 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
    rcases c486 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u1
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u27
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd u3 a
    · exact absurd a u26
    · exact absurd a u16
  have c2871 : ¬v40 ∨ v34 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v12 := by
      rcases c2870 with a|a
      · exact a
      · exact absurd a n2
    have u5 : v19 := by
      rcases c2869 with a|a
      · exact a
      · exact absurd a n2
    have u6 : v1 := by
      rcases c2864 with a|a
      · exact a
      · exact absurd a n2
    have u7 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a n2
    have u8 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n2
    have u9 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u16 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u18 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u7 a
    have u19 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u9 a
      · exact a
    have u21 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u9 a
      · exact a
    have u22 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u9 a
    have u23 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd n0 a
      · exact a
    have u24 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    have u25 : ¬v35 := by
      rcases c2364 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u26 : ¬v29 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd a u25
      · exact absurd a u1
      · exact absurd a u24
    have u27 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a n2
    have u28 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u6 a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u27 a
    have u30 : v30 := by
      rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
    have u31 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u30 a
      · exact a
    rcases c498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd u30 a
    · exact absurd a u25
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a u17
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u2
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u31
  have c2872 : ¬v30 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v26 ∨ v37 ∨ v38 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    rcases c198 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u4
  have c2873 : v42 ∨ v34 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v5 := by
      rcases c2829 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v12 := by
      rcases c2870 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v19 := by
      rcases c2869 with a|a
      · exact a
      · exact absurd a n2
    have u4 : v1 := by
      rcases c2864 with a|a
      · exact a
      · exact absurd a n2
    have u5 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a n2
    have u6 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n2
    have u7 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n2
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u16 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u17 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u18 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u19 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u20 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u21 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u22 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u23 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u7 a
    have u24 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n2
    have u25 : ¬v40 := by
      rcases c2871 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u26 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u27 : v41 := by
      rcases c503 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n0
    have u28 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v29 := by
      rcases c1311 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u17
      · exact a
      · exact absurd a n1
      · exact absurd a u29
      · exact absurd a n0
    have u31 : ¬v35 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u30
    have u32 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u31
      · exact absurd a n0
      · exact absurd a n2
    have u33 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u4 a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u32 a
    have u35 : v30 := by
      rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u34
      · exact absurd a u33
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u15
      · exact a
      · exact absurd a u28
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u26
    have u36 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u35 a
      · exact a
    have u37 : v38 := by
      rcases c2872 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u35 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u28
      · exact a
      · exact absurd a u25
    rcases c2342 with a|a|a|a|a
    · exact absurd u37 a
    · exact absurd a u36
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u26
  have c2874 : v34 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v12 := by
      rcases c2870 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v19 := by
      rcases c2869 with a|a
      · exact a
      · exact absurd a n1
    have u3 : v1 := by
      rcases c2864 with a|a
      · exact a
      · exact absurd a n1
    have u4 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a n1
    have u5 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a n1
    have u6 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n1
    have u7 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u13 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u15 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u17 : v42 := by
      rcases c2873 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u18 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v5 := by
      rcases c2829 with a|a
      · exact a
      · exact absurd a n1
    have u23 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n1
    have u24 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u6 a
    have u25 : ¬v30 := by
      rcases c2872 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u21
    have u26 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact a
      · exact absurd a u25
    have u27 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u3 a
      · exact absurd u26 a
      · exact a
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a n1
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u20
  have c2875 : v49 := by
    by_contra hc
    have u1 : v34 := by
      rcases c2874 with a|a
      · exact a
      · exact absurd a hc
    have u2 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v12 := by
      rcases c2870 with a|a
      · exact a
      · exact absurd a hc
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v19 := by
      rcases c2869 with a|a
      · exact a
      · exact absurd a hc
    have u13 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v1 := by
      rcases c2864 with a|a
      · exact a
      · exact absurd a hc
    have u16 : v25 := by
      rcases c2858 with a|a
      · exact a
      · exact absurd a hc
    have u17 : ¬v27 := by
      rcases c1514 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : v24 := by
      rcases c2781 with a|a
      · exact a
      · exact absurd a hc
    have u19 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u18 a
    have u22 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u18 a
    have u23 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a hc
    have u24 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : v2 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u24
    have u28 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u15 a
      · exact absurd u27 a
      · exact a
    have u29 : v42 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u3
      · exact a
      · exact absurd a hc
    have u30 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u29 a
      · exact a
    rcases c303 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u30
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u31
    · exact absurd a u19
  have c2876 : v19 ∨ v4 ∨ v5 ∨ v6 ∨ v26 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c1578 with a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd u5 a
    · exact absurd a n0
  have c2877 : v4 ∨ v5 ∨ v6 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v19 := by
      rcases c2876 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
    have u6 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v22 := by
      rcases c839 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n9
    have u9 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u8 a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    rcases c2687 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2878 : ¬v19 ∨ ¬v4 ∨ v5 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : v22 := by
      rcases c839 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n9
    have u9 : ¬v23 := by
      rcases c2257 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd u8 a
      · exact absurd n5 a
      · exact a
    have u13 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u8 a
      · exact absurd n5 a
      · exact a
    have u14 : v3 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a n3
    have u16 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a n3
    have u17 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n1 a
    have u18 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u3
      · exact a
      · exact absurd a n7
    rcases c2385 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u17
    · exact absurd n1 a
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2879 : v26 ∨ v5 ∨ v6 ∨ v27 ∨ ¬v34 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n4 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u16 : v28 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u15
      · exact a
    have u17 : ¬v23 := by
      rcases c2257 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u18 : v4 := by
      rcases c2877 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u16 a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
    have u19 : ¬v19 := by
      rcases c2878 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u16 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u20 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u25 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u18 a
    have u26 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd u18 a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : v18 := by
      rcases c1692 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u20 a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u28 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u14
      · exact a
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a u8
    rcases c67 with a|a
    · exact absurd u28 a
    · exact absurd u27 a
  have c2880 : ¬v28 ∨ v19 ∨ ¬v26 ∨ v27 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c111 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u8 : ¬v30 := by
      rcases c1791 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n0 a
    have u9 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u11 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n4 a
    have u12 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    have u13 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n4 a
      · exact a
    have u14 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n4 a
      · exact a
    have u15 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u16 : ¬v23 := by
      rcases c2115 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n2 a
      · exact absurd n4 a
    have u17 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u12
    have u19 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v18 := by
      rcases c1792 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u12
    have u22 : v20 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd a u12
    have u23 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v10 := by
      rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u5
    have u26 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v1 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u28 : v36 := by
      rcases c2682 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u11
      · exact a
      · exact absurd a u2
    have u29 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u28 a
    rcases c218 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u28 a
    · exact absurd a u3
    · exact absurd a u29
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a u11
  have c2881 : v19 ∨ ¬v4 ∨ v5 ∨ v6 ∨ v27 ∨ ¬v34 ∨ v36 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : v26 := by
      rcases c2879 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
    have u11 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v22 := by
      rcases c2113 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n5 a
    have u13 : ¬v24 := by
      rcases c2006 with a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact a
      · exact absurd u10 a
    have u14 : ¬v28 := by
      rcases c2880 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a n4
      · exact absurd n5 a
    have u15 : ¬v23 := by
      rcases c2115 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u10 a
      · exact absurd n5 a
    have u16 : v7 := by
      rcases c355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u14
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u6
    have u17 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    have u18 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n1 a
    have u19 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u2
    have u20 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c40 with a|a
    · exact absurd u19 a
    · exact absurd u20 a
  have c2882 : ¬v4 ∨ v5 ∨ v6 ∨ v27 ∨ ¬v34 ∨ v36 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n4 a
      · exact a
    have u12 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u13 : v26 := by
      rcases c2879 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
    have u14 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : ¬v22 := by
      rcases c2113 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n4 a
    have u16 : v19 := by
      rcases c2881 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v28 := by
      rcases c839 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a u10
    have u19 : ¬v23 := by
      rcases c1264 with a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u17
      · exact absurd a u15
      · exact a
      · exact absurd u13 a
    have u20 : v7 := by
      rcases c355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u18
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u7
    have u21 : v1 := by
      rcases c2680 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c10 with a|a|a
    · exact absurd u21 a
    · exact absurd u20 a
    · exact absurd n0 a
  have c2883 : ¬v19 ∨ v5 ∨ v6 ∨ v27 ∨ ¬v34 ∨ v36 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n4 a
    have u12 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v4 := by
      rcases c2882 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : v26 := by
      rcases c2879 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
    have u17 : ¬v24 := by
      rcases c771 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd u16 a
      · exact absurd a u10
      · exact absurd a u12
    have u18 : ¬v22 := by
      rcases c2113 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n4 a
    have u19 : ¬v23 := by
      rcases c800 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
    have u20 : v3 := by
      rcases c1934 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u4
    have u21 : v1 := by
      rcases c2680 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : v2 := by
      rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1 with a|a|a
    · exact absurd u22 a
    · exact absurd u20 a
    · exact absurd u21 a
  have c2884 : ¬v1 ∨ ¬v7 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a n2
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u3
    have u14 : v9 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u3
    have u15 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v17 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u16
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u17 a
    rcases c346 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd u14 a
    · exact absurd a u15
    · exact absurd a u18
  have c2885 : v27 ∨ v5 ∨ v6 ∨ ¬v34 ∨ v36 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n3 a
      · exact a
    have u12 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n3 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : ¬v4 := by
      rcases c2882 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v19 := by
      rcases c2883 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u17 : v26 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u12
    have u18 : ¬v24 := by
      rcases c2006 with a|a|a|a
      · exact absurd n3 a
      · exact absurd a u16
      · exact a
      · exact absurd u17 a
    have u19 : ¬v28 := by
      rcases c2880 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd n3 a
    have u20 : ¬v23 := by
      rcases c2115 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u17 a
      · exact absurd n3 a
    have u21 : ¬v22 := by
      rcases c2113 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n3 a
    have u22 : v7 := by
      rcases c355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u19
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u7
    have u23 : ¬v1 := by
      rcases c2884 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u11
    have u24 : ¬v10 := by
      rcases c2682 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u2
    have u25 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u2
    have u26 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u3
    have u28 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u27 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u23
    rcases c17 with a|a|a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd u22 a
  have c2886 : v1 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v30 ∨ v32 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v10 := by
      rcases c2682 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u2
    have u8 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u2
    have u9 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n8
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u3
    have u11 : v4 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u5
    rcases c2385 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n0
    · exact absurd u11 a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2887 : ¬v2 ∨ ¬v1 ∨ v23 ∨ ¬v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u9 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u10 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u11 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u12 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v10 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u4
    rcases c2180 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u3
  have c2888 : ¬v26 ∨ v22 ∨ v23 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u8 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u10 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v1 := by
      rcases c2886 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u10
    have u12 : ¬v2 := by
      rcases c2887 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u3
    have u14 : v9 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u3
    have u15 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v18 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u11 a
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u16
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u19 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v4 := by
      rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c6 with a|a|a
    · exact absurd u11 a
    · exact absurd u19 a
    · exact absurd u22 a
  have c2889 : v22 ∨ v5 ∨ v6 ∨ v19 ∨ v23 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v26 := by
      rcases c2888 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n10
    have u10 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : v2 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u9 a
    rcases c2385 with a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u17
    · exact absurd u9 a
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2890 : ¬v22 ∨ v5 ∨ v6 ∨ v19 ∨ ¬v27 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c96 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v23 := by
      rcases c85 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v24 := by
      rcases c89 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v25 := by
      rcases c92 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u12 : ¬v26 := by
      rcases c94 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v31 := by
      rcases c2715 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact a
    have u14 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n5
    have u16 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : v3 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u15 a
    have u21 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u15 a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : v18 := by
      rcases c1692 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u28 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u8
    have u29 : v34 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u8
    rcases c133 with a|a
    · exact absurd u29 a
    · exact absurd u27 a
  have c2891 : v19 ∨ v5 ∨ v6 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v22 := by
      rcases c2890 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n8
    have u9 : v23 := by
      rcases c2889 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u10 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u9 a
    have u11 : v34 := by
      rcases c2414 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u9 a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n8
      · exact a
    have u12 : ¬v26 := by
      rcases c2115 with a|a|a|a
      · exact absurd u9 a
      · exact absurd a u10
      · exact a
      · exact absurd u11 a
    have u13 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n8
    have u15 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u14 a
    have u20 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u14 a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u16
      · exact a
    have u22 : v18 := by
      rcases c1692 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    rcases c62 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c2892 : v26 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n0
    rcases c845 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c2893 : ¬v42 ∨ v5 ∨ v6 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n3 a
      · exact a
    have u13 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n3 a
      · exact a
    have u14 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n3 a
      · exact a
    have u15 : v27 := by
      rcases c2885 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u8
    have u16 : v19 := by
      rcases c2891 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u7
    have u17 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v22 := by
      rcases c1513 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u11
    have u23 : ¬v25 := by
      rcases c1514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u15 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
    have u24 : ¬v24 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd u15 a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
    have u25 : ¬v23 := by
      rcases c375 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u19
      · exact a
      · exact absurd a u18
      · exact absurd a u9
    have u26 : v1 := by
      rcases c2680 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u27 : v11 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u28 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : v2 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u32 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u30
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1 with a|a|a
    · exact absurd u31 a
    · exact absurd u32 a
    · exact absurd u26 a
  have c2894 : ¬v27 ∨ v5 ∨ v6 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v19 := by
      rcases c2891 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v22 := by
      rcases c1513 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n8
    have u14 : ¬v25 := by
      rcases c1514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v24 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v23 := by
      rcases c375 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a n4
    have u17 : v1 := by
      rcases c2680 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : v11 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v2 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1 with a|a|a
    · exact absurd u22 a
    · exact absurd u23 a
    · exact absurd u17 a
  have c2895 : ¬v19 ∨ v5 ∨ v6 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v40 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n7
    have u13 : v1 := by
      rcases c2680 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v28 := by
      rcases c839 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n10
    have u15 : v7 := by
      rcases c336 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
    have u16 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u13 a
      · exact absurd u15 a
      · exact a
    rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2896 : v24 ∨ v5 ∨ v6 ∨ ¬v26 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n4 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v42 := by
      rcases c2893 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n4 a
    have u14 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u15 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u9
    have u17 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v27 := by
      rcases c2894 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u16
    have u19 : ¬v23 := by
      rcases c2115 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd n4 a
    have u20 : ¬v22 := by
      rcases c2113 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u21 : ¬v19 := by
      rcases c2895 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u13
    have u22 : ¬v28 := by
      rcases c2880 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd n3 a
      · exact absurd a u18
      · exact absurd n4 a
    have u23 : v7 := by
      rcases c336 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u20
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
    have u24 : ¬v1 := by
      rcases c2884 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u11
    have u25 : ¬v10 := by
      rcases c2682 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u2
    have u26 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u2
    have u27 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n0
    have u29 : v2 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u30 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u29 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u24
    rcases c17 with a|a|a
    · exact absurd u29 a
    · exact absurd u30 a
    · exact absurd u23 a
  have c2897 : ¬v26 ∨ v5 ∨ v6 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : v24 := by
      rcases c2896 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n3 a
    have u3 : v19 := by
      rcases c2006 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v25 := by
      rcases c107 with a|a|a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u3 a
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd u2 a
    · exact absurd a u5
  have c2898 : v3 ∨ v1 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c2682 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u2
    have u6 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n2
    have u7 : v2 := by
      rcases c2405 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u6 a
      · exact a
    rcases c361 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u7 a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n1
  have c2900 : ¬v19 ∨ v5 ∨ v6 ∨ v23 ∨ ¬v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v40 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n6
    have u14 : v25 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
    have u15 : ¬v22 := by
      rcases c1984 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd n4 a
      · exact absurd a n8
    have u16 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u14 a
    have u17 : v1 := by
      rcases c2680 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : v7 := by
      rcases c336 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
    have u19 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u17 a
      · exact absurd u18 a
      · exact a
    rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2901 : v23 ∨ v5 ∨ v6 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n6
    have u11 : ¬v19 := by
      rcases c2900 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n11
    have u12 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
    have u13 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u12 a
    rcases c395 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n11
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u7
  have c2902 : v19 ∨ v5 ∨ v6 ∨ ¬v7 ∨ v26 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u7 a
    rcases c998 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u6 a
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  exact ⟨c2875, c2876, c2892, c2893, c2894, c2897, c2898, c2901, c2902⟩
