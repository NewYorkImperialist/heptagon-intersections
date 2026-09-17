import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2300-2349 of the 2559-step refutation of ccase003: 123 core clauses and 82 earlier-derived ones give 13 more. -/
theorem CCase003_block046
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c34 : v6 ∨ v3 ∨ v2 ∨ v5 ∨ v4 ∨ v1)
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
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c58 : ¬v14 ∨ ¬v13)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c89 : ¬v22 ∨ ¬v27 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c119 : v22 ∨ v23 ∨ v28 ∨ v27 ∨ v25 ∨ v24)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c150 : ¬v41 ∨ ¬v36)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c160 : ¬v42 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c172 : ¬v43 ∨ ¬v49)
    (c177 : ¬v44 ∨ ¬v49)
    (c181 : ¬v45 ∨ ¬v49)
    (c184 : ¬v49 ∨ ¬v46)
    (c186 : ¬v49 ∨ ¬v47)
    (c187 : ¬v49 ∨ ¬v48)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c218 : v43 ∨ ¬v36 ∨ v44 ∨ v42 ∨ v35 ∨ v37 ∨ v30 ∨ v29)
    (c242 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v40 ∨ v47 ∨ v33 ∨ v48)
    (c247 : v7 ∨ v20 ∨ v12 ∨ v14 ∨ v5 ∨ v6 ∨ v21 ∨ ¬v13)
    (c248 : v6 ∨ v4 ∨ v25 ∨ v17 ∨ v11 ∨ ¬v10 ∨ v16 ∨ v3 ∨ v12 ∨ v24 ∨ v20 ∨ v13 ∨ v23 ∨ v9)
    (c252 : ¬v49 ∨ v42 ∨ v4 ∨ v6 ∨ v7 ∨ v29 ∨ v35 ∨ v36 ∨ v39 ∨ v34 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c313 : ¬v41 ∨ v36 ∨ v35 ∨ v40 ∨ v48 ∨ v47 ∨ v6 ∨ v12 ∨ v29 ∨ v34 ∨ v42 ∨ v43 ∨ v14 ∨ v13)
    (c321 : ¬v41 ∨ v35 ∨ v30 ∨ v40 ∨ v7 ∨ v5 ∨ v48 ∨ v36 ∨ v37 ∨ v34 ∨ v42 ∨ v44 ∨ v47 ∨ v6)
    (c325 : ¬v33 ∨ v40 ∨ v34 ∨ v32 ∨ v41 ∨ v25 ∨ v39 ∨ v26)
    (c326 : ¬v41 ∨ v48 ∨ v20 ∨ v39 ∨ v47 ∨ v35 ∨ v42 ∨ v46 ∨ v34 ∨ v27 ∨ v40 ∨ v19 ∨ v21 ∨ v32)
    (c336 : ¬v49 ∨ v42 ∨ v6 ∨ v22 ∨ v7 ∨ v5 ∨ v27 ∨ v36 ∨ v35 ∨ v40 ∨ v28 ∨ v43 ∨ v47 ∨ v48)
    (c340 : ¬v41 ∨ v27 ∨ v40 ∨ v31 ∨ v34 ∨ v42 ∨ v35 ∨ v45 ∨ v47 ∨ v38 ∨ v26 ∨ v48 ∨ v39 ∨ v28)
    (c357 : v3 ∨ ¬v2 ∨ v45 ∨ v47 ∨ v44 ∨ v12 ∨ v16 ∨ v8 ∨ v5 ∨ v9 ∨ v17 ∨ v4 ∨ v1 ∨ v15)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c395 : ¬v49 ∨ v42 ∨ v6 ∨ v1 ∨ v7 ∨ v36 ∨ v43 ∨ v48)
    (c456 : ¬v32 ∨ v39 ∨ v31 ∨ v40 ∨ v33 ∨ v38 ∨ v25 ∨ v24)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c491 : v23 ∨ v27 ∨ v5 ∨ v28 ∨ v7 ∨ v13 ∨ v19 ∨ v6 ∨ v16 ∨ v21 ∨ v12 ∨ v15 ∨ v9 ∨ ¬v20)
    (c515 : v36 ∨ v37 ∨ v25 ∨ v35 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v16 ∨ v15 ∨ v31 ∨ v39 ∨ v21 ∨ v22 ∨ v32)
    (c526 : v43 ∨ v29 ∨ ¬v1 ∨ v36 ∨ v7 ∨ v6 ∨ v14 ∨ v2 ∨ v8 ∨ v35 ∨ v13 ∨ v30 ∨ v44 ∨ v48)
    (c539 : ¬v49 ∨ v43 ∨ v7 ∨ v42 ∨ v41 ∨ v6 ∨ v36 ∨ v48)
    (c552 : v36 ∨ ¬v35 ∨ v28 ∨ v22 ∨ v34 ∨ v27 ∨ v42 ∨ v29)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c636 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c656 : v4 ∨ ¬v7 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c785 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v24)
    (c800 : ¬v23 ∨ v16 ∨ v22 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31)
    (c836 : v25 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c861 : v44 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c910 : ¬v32 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c925 : ¬v32 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c971 : ¬v10 ∨ v4 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1050 : ¬v25 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c1053 : ¬v4 ∨ v3 ∨ v5 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47)
    (c1068 : ¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1152 : v11 ∨ v4 ∨ v10 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1155 : ¬v33 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41)
    (c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1215 : v26 ∨ v17 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32)
    (c1232 : ¬v20 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1242 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1267 : ¬v26 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1446 : v12 ∨ v6 ∨ ¬v11 ∨ v19 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c1454 : ¬v14 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1465 : ¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1515 : v11 ∨ ¬v1 ∨ v18 ∨ v25 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1534 : v12 ∨ v4 ∨ v6 ∨ v11 ∨ ¬v18 ∨ v19 ∨ ¬v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1560 : v16 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1568 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1601 : ¬v25 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1692 : v18 ∨ v2 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v19 ∨ v46 ∨ v47 ∨ v48)
    (c1730 : ¬v19 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v35)
    (c1748 : v28 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35)
    (c1791 : ¬v30 ∨ v19 ∨ ¬v26 ∨ ¬v28)
    (c1801 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1952 : ¬v30 ∨ v23 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38)
    (c2028 : ¬v13 ∨ ¬v15 ∨ v22 ∨ v28)
    (c2039 : ¬v21 ∨ ¬v22 ∨ ¬v24)
    (c2110 : ¬v23 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2223 : ¬v41 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33)
    (c2276 : v24 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c2306 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2307 : ¬v23 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2356 : v5 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v18)
    (c2376 : v20 ∨ ¬v1 ∨ ¬v7 ∨ v19 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c2385 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2613 : ¬v28 ∨ v22 ∨ v25 ∨ ¬v26 ∨ ¬v32)
    (c2625 : ¬v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c2682 : ¬v10 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43)
    (c2687 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c2707 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c2708 : ¬v31 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v45 ∨ v46 ∨ v47)
    (c2761 : ¬v27 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v23 ∨ v24 ∨ v26)
    (c2823 : ¬v15 ∨ ¬v22 ∨ ¬v24 ∨ v31)
    (c2875 : v49)
    (c2876 : v19 ∨ v4 ∨ v5 ∨ v6 ∨ v26 ∨ v33)
    (c2893 : ¬v42 ∨ v5 ∨ v6 ∨ ¬v34)
    (c2894 : ¬v27 ∨ v5 ∨ v6 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v36)
    (c2897 : ¬v26 ∨ v5 ∨ v6 ∨ ¬v34)
    (c2901 : v23 ∨ v5 ∨ v6 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v42)
    (c2902 : v19 ∨ v5 ∨ v6 ∨ ¬v7 ∨ v26 ∨ v33)
    : (v6 ∨ v5 ∨ ¬v34) ∧ (¬v42 ∨ v5 ∨ v6 ∨ v19 ∨ v26 ∨ v27) ∧ (¬v25 ∨ v24 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35) ∧ (¬v41 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v31 ∨ ¬v33 ∨ v34) ∧ (¬v22 ∨ v5 ∨ v19 ∨ ¬v24 ∨ v26 ∨ v31 ∨ v32 ∨ v39) ∧ (v26 ∨ v5 ∨ v6 ∨ v19 ∨ v31 ∨ v36) ∧ (¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v37) ∧ (¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v40) ∧ (v19 ∨ v5 ∨ v6 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v31 ∨ v32) ∧ (¬v4 ∨ v5 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v36 ∨ v37) ∧ (¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40) ∧ (v22 ∨ v5 ∨ v6 ∨ v19 ∨ v24 ∨ v31 ∨ v36) ∧ (¬v7 ∨ ¬v3 ∨ v10) := by
  have c2903 : ¬v24 ∨ v5 ∨ v6 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v42 := by
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
    have u8 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n4
    have u11 : ¬v27 := by
      rcases c2894 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u10
    have u12 : v23 := by
      rcases c2901 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u12 a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n0 a
    have u15 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n0 a
    have u16 : v7 := by
      rcases c336 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
    have u17 : v19 := by
      rcases c2902 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u16 a
      · exact absurd a n3
      · exact absurd a n8
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
    have u21 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u15
      · exact absurd a n3
    have u22 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u11
    have u23 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u18
    rcases c1515 with a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd u23 a
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c2904 : ¬v19 ∨ v6 ∨ v24 ∨ v26 ∨ v27 ∨ v32 ∨ v35 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u7 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v25 := by
      rcases c1730 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u10 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a n3
    have u12 : ¬v1 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : v4 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c395 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u6
  have c2905 : v6 ∨ v5 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
      · exact absurd n2 a
      · exact a
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n2 a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n2 a
      · exact a
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n2 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v26 := by
      rcases c2897 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
    have u16 : ¬v42 := by
      rcases c2893 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
    have u17 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
    have u18 : ¬v27 := by
      rcases c2894 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u17
    have u19 : ¬v24 := by
      rcases c2903 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u16
    have u20 : ¬v19 := by
      rcases c2904 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u16
    have u21 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u13
    have u22 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u26 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u27 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u21 a
    rcases c395 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a u7
  have c2906 : v42 ∨ v5 ∨ v6 ∨ v7 ∨ v30 ∨ v34 ∨ v35 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v41 := by
      rcases c539 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u5
    have u7 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    rcases c321 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n2
  have c2907 : ¬v42 ∨ v5 ∨ v6 ∨ v19 ∨ v26 ∨ v27 := by
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
    have u8 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u12 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
    have u13 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u12
    have u15 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u9
      · exact a
      · exact absurd a u7
      · exact absurd a u11
    have u20 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u14 a
    have u21 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u14 a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1692 with a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd u13 a
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c2908 : v42 ∨ v5 ∨ v6 ∨ v19 ∨ v26 ∨ v33 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u7 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u8 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u8 a
    rcases c395 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u6
  have c2909 : v31 ∨ ¬v4 ∨ v5 ∨ v6 ∨ ¬v7 ∨ v19 ∨ v26 ∨ v27 ∨ ¬v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u8 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n8 a
    have u10 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n8 a
    have u11 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n8 a
    have u12 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n8 a
      · exact a
    have u13 : ¬v42 := by
      rcases c2907 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u10
    have u17 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : v41 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd u14 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact a
      · exact absurd a u7
    have u21 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u20 a
      · exact a
    rcases c313 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u17
    · exact absurd a u19
  have c2910 : ¬v25 ∨ v24 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v28 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1748 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
  have c2911 : v19 ∨ v5 ∨ v6 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v36 := by
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v42 := by
      rcases c2907 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u10 : v33 := by
      rcases c2908 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n7
    have u11 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v25 := by
      rcases c2910 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u12
    have u17 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v7 := by
      rcases c2906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u15
    have u19 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u10 a
    have u20 : ¬v4 := by
      rcases c2909 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u18 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u10 a
    have u21 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n2
      · exact a
      · exact absurd a n0
    have u22 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : ¬v11 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u7
    have u24 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u9
    have u25 : v18 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u23
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u26 : v17 := by
      rcases c1242 with a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u25 a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n4
    rcases c71 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c2912 : v10 ∨ v1 ∨ v2 ∨ v4 ∨ v5 ∨ v6 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u5 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c34 with a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n1
  have c2913 : v1 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v7 ∨ v9 ∨ v10 := by
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
    have u5 : v2 := by
      rcases c2912 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n4 a
    rcases c361 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u5 a
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n0
  have c2914 : v24 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v7 ∨ ¬v11 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u5 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : v1 := by
      rcases c2913 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u5
      · exact absurd a u7
    have u9 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd u8 a
      · exact absurd n4 a
      · exact a
    have u10 : v17 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v18 := by
      rcases c2356 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd n5 a
      · exact absurd a u6
      · exact a
    rcases c71 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c2915 : ¬v25 ∨ v19 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    rcases c1601 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2916 : ¬v42 ∨ v25 ∨ v26 ∨ ¬v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n3 a
    rcases c325 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
  have c2917 : ¬v7 ∨ v4 ∨ v5 ∨ v6 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u8 : v33 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact a
    have u9 : ¬v11 := by
      rcases c2914 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n8
    have u10 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u11 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
    have u12 : ¬v42 := by
      rcases c2916 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u8 a
      · exact absurd a u11
    have u13 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u8 a
    have u17 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u13
    have u19 : v18 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u9
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : v27 := by
      rcases c2911 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a u18
    rcases c1534 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd u19 a
    · exact absurd a n4
    · exact absurd u20 a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c2918 : v36 ∨ v5 ∨ v6 ∨ v19 ∨ v24 ∨ v26 ∨ v31 ∨ ¬v33 := by
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n7 a
    have u8 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n7 a
    have u10 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n7 a
      · exact a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n7 a
    have u12 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v27 := by
      rcases c2911 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n0
    have u15 : ¬v25 := by
      rcases c2915 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u14 a
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
    have u16 : ¬v42 := by
      rcases c2916 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a u7
    have u17 : v7 := by
      rcases c2906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u13
    have u18 : v4 := by
      rcases c2917 with a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u18 a
    have u20 : v23 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u19
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u21 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u18 a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u22 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u21 a
    rcases c2276 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd u20 a
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a u4
  have c2919 : v24 ∨ v5 ∨ v6 ∨ v19 ∨ v26 ∨ v31 ∨ v36 := by
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
    have u8 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v33 := by
      rcases c2918 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u10 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u9
    have u11 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u10 a
    have u18 : v42 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u7
    have u19 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v27 := by
      rcases c2907 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u22 : v18 := by
      rcases c1692 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v23 := by
      rcases c2761 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u25
      · exact a
      · exact absurd a n0
      · exact absurd a n4
    have u27 : ¬v30 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a u8
    rcases c2164 with a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a u23
    · exact absurd a u26
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2920 : v11 ∨ ¬v4 ∨ v5 ∨ v6 ∨ v19 ∨ ¬v24 ∨ v26 ∨ v36 := by
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
    have u7 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
    have u9 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u10 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u11 : v42 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u6
    have u12 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : v27 := by
      rcases c2907 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
    have u18 : ¬v22 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n5 a
    have u19 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v23 := by
      rcases c99 with a|a|a
      · exact absurd u17 a
      · exact absurd n5 a
      · exact a
    have u21 : ¬v25 := by
      rcases c108 with a|a|a
      · exact absurd n5 a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v32 := by
      rcases c910 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u16
    have u23 : ¬v33 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a n6
    have u24 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u25 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : v29 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
      · exact a
      · exact absurd a n7
      · exact absurd a u2
    have u27 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u26 a
      · exact a
    rcases c1177 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd u26 a
    · exact absurd a u27
    · exact absurd a n7
    · exact absurd a u13
  have c2921 : ¬v42 ∨ v5 ∨ v6 ∨ v19 ∨ ¬v24 ∨ v26 ∨ ¬v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v27 := by
      rcases c2907 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : v25 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd a n5
    rcases c108 with a|a|a
    · exact absurd n4 a
    · exact absurd u4 a
    · exact absurd u7 a
  have c2922 : ¬v41 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    rcases c313 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n3
  have c2923 : ¬v4 ∨ v5 ∨ v6 ∨ v19 ∨ ¬v24 ∨ v26 ∨ v36 ∨ v38 := by
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u9 : v11 := by
      rcases c2920 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : v33 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v31 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v42 := by
      rcases c2921 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd u16 a
    have u22 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : v7 := by
      rcases c2906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u22
    have u24 : ¬v41 := by
      rcases c2922 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u21
    have u25 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd n0 a
    have u26 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : v27 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u7
    have u28 : ¬v22 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd n4 a
    have u29 : ¬v23 := by
      rcases c99 with a|a|a
      · exact absurd u27 a
      · exact absurd n4 a
      · exact a
    rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u26
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u28
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2924 : v41 ∨ v4 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v29 ∨ v32 ∨ v34 ∨ v35 := by
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
    have u5 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u7 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n8
    have u8 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v25 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : v28 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u12 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u10 a
    rcases c1232 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd u11 a
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
  have c2925 : ¬v41 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v31 ∨ ¬v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u7 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n5 a
    have u11 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n5 a
    have u12 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n5 a
      · exact a
    have u13 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n5 a
    have u14 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : v28 := by
      rcases c340 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact a
    have u16 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n1 a
    have u17 : ¬v25 := by
      rcases c109 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n1 a
    have u19 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u11
    rcases c1215 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a u13
  have c2926 : ¬v22 ∨ v5 ∨ v19 ∨ ¬v24 ∨ v26 ∨ v31 ∨ v32 ∨ v39 := by
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
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u9 : ¬v15 := by
      rcases c2823 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd a n5
    have u10 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v21 := by
      rcases c2039 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u12 : ¬v27 := by
      rcases c89 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u13 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v33 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u10
    have u15 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v20 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u10
    have u20 : v4 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u20 a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a u22
      · exact absurd a n1
      · exact a
    have u24 : v36 := by
      rcases c2923 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a u13
    have u25 : v41 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u12
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u23
    rcases c150 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c2927 : v27 ∨ v4 ∨ v6 ∨ ¬v7 ∨ v19 ∨ v22 ∨ ¬v24 ∨ v26 ∨ v31 ∨ ¬v33 ∨ v34 := by
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
    have u8 : ¬v41 := by
      rcases c2925 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
    have u9 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n9 a
    have u10 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n9 a
    have u11 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n9 a
      · exact a
    have u12 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n9 a
    have u13 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u12
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u15 : v13 := by
      rcases c2924 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a u10
    have u16 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v5 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u22 : v1 := by
      rcases c2913 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u19
      · exact absurd a u20
    have u23 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd n3 a
    have u24 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd u22 a
      · exact absurd n3 a
      · exact a
    have u25 : v23 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v25 := by
      rcases c2307 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u4
    have u27 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd n6 a
    have u28 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u29 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u27
    rcases c2376 with a|a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd u22 a
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a u29
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u8
    · exact absurd a u7
  have c2928 : v26 ∨ v5 ∨ v6 ∨ v19 ∨ v31 ∨ v36 := by
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
    have u8 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u10 : v24 := by
      rcases c2919 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v4 := by
      rcases c2923 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u8
    have u12 : v33 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
    have u13 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u15
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v22 := by
      rcases c2926 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u16
    have u18 : ¬v42 := by
      rcases c2921 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd u12 a
    have u19 : v7 := by
      rcases c252 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u20 : v27 := by
      rcases c2927 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd u19 a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd u12 a
      · exact absurd a u9
    have u21 : ¬v25 := by
      rcases c108 with a|a|a
      · exact absurd u10 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u20 a
    have u24 : v21 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u20 a
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u23
    have u25 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u24 a
      · exact a
    rcases c882 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u11
    · exact absurd a u26
    · exact absurd a n3
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c2929 : ¬v27 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v7 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u6 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
    have u7 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n10
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u8 : v18 := by
      rcases c656 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u3
    have u9 : ¬v11 := by
      rcases c2914 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n9
    rcases c1534 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd u8 a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2930 : v4 ∨ v5 ∨ v6 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v27 ∨ v28 ∨ v31 ∨ ¬v33 ∨ v36 := by
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
    have u8 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n11 a
    have u9 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n11 a
    have u10 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n11 a
      · exact a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n11 a
    have u12 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u13 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u16 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u5
    have u17 : ¬v13 := by
      rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v1 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a u2
    have u19 : ¬v7 := by
      rcases c2929 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u11
    have u20 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u5
    have u22 : v2 := by
      rcases c526 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd u18 a
      · exact absurd a n12
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u21
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u7
    have u23 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u18 a
    have u24 : v10 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u23
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
    have u25 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v16 := by
      rcases c2625 with a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u28 : v18 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd u18 a
      · exact a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u29 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u28 a
      · exact a
    rcases c248 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u29
    · exact absurd a u26
    · exact absurd u24 a
    · exact absurd a u27
    · exact absurd a u23
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a u25
  have c2931 : v25 ∨ v4 ∨ v5 ∨ v6 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v36 := by
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
    have u8 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n11
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u5
    have u10 : ¬v33 := by
      rcases c2930 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n12
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v10 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
    have u13 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u4
    have u14 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u12
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u15 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : v18 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : v29 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n12
      · exact absurd a u2
    have u23 : v42 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a u7
    have u24 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u23 a
      · exact a
    rcases c515 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd a u26
    · exact absurd a n0
    · exact absurd a u25
    · exact absurd a n9
    · exact absurd u22 a
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n10
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a n5
    · exact absurd a n11
  have c2932 : ¬v1 ∨ ¬v7 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u6 : v10 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
    have u7 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v16 := by
      rcases c2625 with a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n6
  have c2933 : v4 ∨ v5 ∨ v6 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v36 := by
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
    have u8 : ¬v33 := by
      rcases c2930 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
    have u9 : v32 := by
      rcases c2931 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
    have u10 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v37 := by
      rcases c925 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
    have u17 : v39 := by
      rcases c456 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n6
    have u18 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v7 := by
      rcases c2906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a u16
    have u20 : ¬v1 := by
      rcases c2932 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u11
    have u21 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a u2
    have u22 : ¬v10 := by
      rcases c2682 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a u2
    have u23 : v9 := by
      rcases c2913 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u19 a
      · exact a
      · exact absurd a u22
    rcases c38 with a|a
    · exact absurd u21 a
    · exact absurd u23 a
  have c2934 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1177 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c2935 : ¬v27 ∨ v5 ∨ v6 ∨ v19 ∨ v31 ∨ v36 := by
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
    have u8 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : v26 := by
      rcases c2928 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd n0 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u9 a
    have u12 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n0 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u9 a
    have u14 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u9 a
    have u15 : v4 := by
      rcases c2933 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v3 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u15 a
    have u18 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u15 a
    have u19 : v42 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u7
    have u20 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v29 := by
      rcases c2934 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u20
    have u22 : ¬v30 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a u8
    have u23 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a u2
    have u24 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u15 a
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u25
      · exact a
      · exact absurd a u13
      · exact absurd a u10
    have u28 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u20
      · exact a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a u22
    rcases c636 with a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u13
  have c2936 : v34 ∨ v6 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v31 ∨ v36 := by
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
    have u8 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : v28 := by
      rcases c119 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n5
    have u10 : ¬v30 := by
      rcases c1791 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n7 a
      · exact absurd u9 a
    have u11 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v32 := by
      rcases c2613 with a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n7 a
      · exact a
    have u13 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u12
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u14 : v33 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a u12
      · exact a
      · exact absurd a n0
    have u15 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd u9 a
      · exact absurd a u15
      · exact absurd a u16
    have u18 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd u9 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u16
    have u19 : ¬v13 := by
      rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : v41 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n8
      · exact a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a n0
    have u21 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v21 := by
      rcases c326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u22
      · exact absurd a n2
      · exact a
      · exact absurd a u12
    have u24 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : v10 := by
      rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
    have u28 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u27 a
      · exact a
    rcases c313 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a n10
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u28
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a u29
    · exact absurd a u19
  have c2937 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u5 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    rcases c326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
  have c2938 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v32 ∨ v34 ∨ v35 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2937 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u1
  have c2939 : v19 ∨ v5 ∨ v6 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u6 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n10
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u7 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u8 : v33 := by
      rcases c2110 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd n7 a
      · exact absurd a n10
      · exact a
      · exact absurd a u7
    have u9 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n9
    have u13 : v16 := by
      rcases c800 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n3
      · exact absurd n7 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n9
    have u14 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v41 := by
      rcases c2938 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u6
    have u19 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u7
    have u20 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : v7 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd u19 a
    rcases c641 with a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd u17 a
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2940 : v31 ∨ v5 ∨ v6 ∨ v19 ∨ v22 ∨ v24 ∨ v25 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u2 : v26 := by
      rcases c2928 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
    have u3 : ¬v27 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
    have u4 : v23 := by
      rcases c2936 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n7
    have u5 : v32 := by
      rcases c2939 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n0
      · exact a
    have u6 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1267 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n4
    · exact absurd u4 a
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u1
  have c2941 : v1 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v36 ∨ v37 := by
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
    have u6 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u2
    have u7 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n7
    have u11 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u10 a
      · exact a
    rcases c636 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2942 : ¬v4 ∨ v5 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u6 : v1 := by
      rcases c2941 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u8 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
    have u13 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u2
      · exact a
      · exact absurd a n7
    rcases c2 with a|a|a
    · exact absurd u6 a
    · exact absurd u13 a
    · exact absurd n0 a
  have c2943 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    rcases c242 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u3
  have c2945 : v16 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v15 ∨ v19 ∨ ¬v20 ∨ v23 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd n9 a
      · exact a
    rcases c491 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n1
    · exact absurd a n12
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd n9 a
  have c2946 : v27 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v19 ∨ v23 ∨ v28 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u4 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u5 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v14 := by
      rcases c618 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u8 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u7 a
    rcases c2945 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd u4 a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
  have c2947 : v24 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v19 ∨ v23 ∨ v27 ∨ v28 ∨ v31 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u7 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u8 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact a
      · exact absurd a u6
      · exact absurd a u7
    have u9 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v14 := by
      rcases c618 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v7 := by
      rcases c2946 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u15 : ¬v4 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u14 a
    rcases c663 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2948 : v36 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v19 ∨ v22 ∨ v24 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u8 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u9 : v25 := by
      rcases c2940 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n0
    have u10 : v26 := by
      rcases c2928 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n0
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd u10 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u9 a
    have u14 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u9 a
    have u15 : v41 := by
      rcases c2947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n8
      · exact a
    have u16 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v29 := by
      rcases c2934 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u17
    have u20 : ¬v30 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u11
    have u21 : ¬v4 := by
      rcases c2942 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u17
    have u22 : ¬v35 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u19
    have u23 : v7 := by
      rcases c321 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
    have u24 : v14 := by
      rcases c313 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u2
      · exact a
      · exact absurd a n4
    have u25 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a n6
      · exact absurd a u12
    have u30 : v2 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u31 : ¬v17 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u12
      · exact absurd a n7
    have u32 : ¬v15 := by
      rcases c1560 with a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u26
      · exact a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u14
    have u33 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u23 a
    have u34 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd u23 a
    rcases c357 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u34
    · exact absurd u30 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u29
    · exact absurd a u26
    · exact absurd a n1
    · exact absurd a u28
    · exact absurd a u31
    · exact absurd a u21
    · exact absurd a u33
    · exact absurd a u32
  have c2949 : ¬v29 ∨ ¬v25 ∨ ¬v26 ∨ v36 := by
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
    have u5 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u8 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u10 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c2934 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u10
  have c2950 : v24 ∨ v5 ∨ v6 ∨ v19 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v36 := by
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
    have u6 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v4 := by
      rcases c2942 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u6
    have u8 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u9 : v13 := by
      rcases c2948 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
    have u10 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v15 := by
      rcases c2028 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    have u15 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u14
    have u16 : v2 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v17 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n0
    rcases c2707 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2951 : ¬v13 ∨ ¬v7 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v31 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u7 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v15 := by
      rcases c2028 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u12 : ¬v4 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u11
    have u14 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    have u16 : ¬v17 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c2707 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2952 : v22 ∨ v5 ∨ v6 ∨ v19 ∨ v24 ∨ v31 ∨ v36 := by
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
    have u8 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v26 := by
      rcases c2928 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u11 : v25 := by
      rcases c2940 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n6
    have u12 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    have u14 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    have u15 : ¬v29 := by
      rcases c2949 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u10 a
      · exact absurd a n6
    have u16 : v30 := by
      rcases c2950 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v37 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u9
    have u20 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v41 := by
      rcases c2943 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u20
    have u22 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v7 := by
      rcases c539 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u7
    have u24 : ¬v13 := by
      rcases c2951 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u25 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u21
      · exact a
      · exact absurd a u7
      · exact absurd a u8
    have u26 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v12 := by
      rcases c2947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u21
    have u29 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v4 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u31
      · exact absurd a u29
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u33 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u30
      · exact absurd a u26
    have u34 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u31
      · exact absurd a u27
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u35 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u34 a
      · exact a
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1 with a|a|a
    · exact absurd u35 a
    · exact absurd u34 a
    · exact absurd u33 a
  have c2953 : ¬v7 ∨ ¬v3 ∨ v10 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u5 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u6 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c17 with a|a|a
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd n0 a
  exact ⟨c2905, c2907, c2910, c2925, c2926, c2928, c2934, c2937, c2939, c2942, c2943, c2952, c2953⟩
