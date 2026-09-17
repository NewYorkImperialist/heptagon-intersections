import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2000-2049 of the 2559-step refutation of ccase003: 133 core clauses and 89 earlier-derived ones give 9 more. -/
theorem CCase003_block040
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c3 : ¬v2 ∨ ¬v1 ∨ ¬v5)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
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
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c105 : ¬v28 ∨ ¬v26 ∨ ¬v23)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c118 : v23 ∨ v22 ∨ v28 ∨ v26 ∨ v25 ∨ v24)
    (c119 : v22 ∨ v23 ∨ v28 ∨ v27 ∨ v25 ∨ v24)
    (c120 : v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v24)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
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
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c163 : ¬v42 ∨ ¬v39)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c171 : ¬v48 ∨ ¬v43)
    (c176 : ¬v48 ∨ ¬v44)
    (c180 : ¬v48 ∨ ¬v45)
    (c183 : ¬v46 ∨ ¬v48)
    (c185 : ¬v47 ∨ ¬v48)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c214 : ¬v31 ∨ v38 ∨ v24 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v25)
    (c233 : v43 ∨ ¬v36 ∨ v44 ∨ v42 ∨ v30 ∨ v37 ∨ v49 ∨ v29)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c244 : ¬v48 ∨ v41 ∨ v46 ∨ v7 ∨ v6 ∨ v40 ∨ v47 ∨ v19 ∨ v20 ∨ v4 ∨ v13 ∨ v21 ∨ v39 ∨ v49)
    (c248 : v6 ∨ v4 ∨ v25 ∨ v17 ∨ v11 ∨ ¬v10 ∨ v16 ∨ v3 ∨ v12 ∨ v24 ∨ v20 ∨ v13 ∨ v23 ∨ v9)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c294 : v7 ∨ v6 ∨ v21 ∨ v13 ∨ v20 ∨ v15 ∨ v8 ∨ ¬v14)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c300 : ¬v48 ∨ v6 ∨ v40 ∨ v49 ∨ v7 ∨ v47 ∨ v5 ∨ v41)
    (c327 : v23 ∨ v22 ∨ v28 ∨ v7 ∨ v15 ∨ v19 ∨ v5 ∨ v1 ∨ v12 ∨ ¬v8 ∨ v16 ∨ v14 ∨ v9 ∨ v13)
    (c346 : v23 ∨ v22 ∨ v3 ∨ v15 ∨ v10 ∨ v19 ∨ v5 ∨ v24 ∨ v2 ∨ v12 ∨ v8 ∨ ¬v9 ∨ v11 ∨ v16)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c371 : v36 ∨ ¬v35 ∨ v42 ∨ v34 ∨ v21 ∨ v28 ∨ v13 ∨ v29 ∨ v27 ∨ v30 ∨ v23 ∨ v14 ∨ v37 ∨ v8)
    (c372 : v43 ∨ v49 ∨ ¬v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14)
    (c375 : v22 ∨ v16 ∨ v31 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v15 ∨ v30)
    (c450 : ¬v31 ∨ v38 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v39 ∨ v32)
    (c452 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v16 ∨ v2 ∨ v21 ∨ v1)
    (c475 : v29 ∨ v15 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v22)
    (c496 : ¬v48 ∨ v41 ∨ v40 ∨ v38 ∨ v3 ∨ v7 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c503 : ¬v48 ∨ v41 ∨ v40 ∨ v49 ∨ v5 ∨ v6 ∨ v47 ∨ v42)
    (c524 : v43 ∨ ¬v42 ∨ v29 ∨ v36 ∨ v35 ∨ v49 ∨ v34 ∨ v41)
    (c552 : v36 ∨ ¬v35 ∨ v28 ∨ v22 ∨ v34 ∨ v27 ∨ v42 ∨ v29)
    (c562 : v43 ∨ v36 ∨ v37 ∨ v26 ∨ v30 ∨ v49 ∨ v35 ∨ v28 ∨ v34 ∨ v22 ∨ v40 ∨ ¬v29 ∨ v44 ∨ v33)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c644 : v23 ∨ v10 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c714 : ¬v26 ∨ ¬v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c785 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v24)
    (c800 : ¬v23 ∨ v16 ∨ v22 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31)
    (c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c849 : v18 ∨ v10 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c859 : ¬v10 ∨ ¬v21 ∨ v22 ∨ v28)
    (c861 : v44 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c925 : ¬v32 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c971 : ¬v10 ∨ v4 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1005 : v3 ∨ ¬v11 ∨ v16 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c1026 : ¬v10 ∨ ¬v26 ∨ ¬v27 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c1093 : ¬v26 ∨ ¬v2 ∨ ¬v10 ∨ v24 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1136 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1146 : v2 ∨ v4 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1224 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1232 : ¬v20 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1235 : ¬v39 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1267 : ¬v26 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1371 : v33 ∨ ¬v17 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v34)
    (c1382 : v14 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1466 : v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ ¬v26 ∨ v34)
    (c1515 : v11 ∨ ¬v1 ∨ v18 ∨ v25 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1518 : ¬v11 ∨ ¬v1 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1529 : v11 ∨ ¬v1 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1605 : v35 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v49)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1690 : v9 ∨ v2 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1790 : v23 ∨ v17 ∨ v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32)
    (c1792 : ¬v18 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35)
    (c1801 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1809 : ¬v1 ∨ ¬v4 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49)
    (c1858 : ¬v21 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1921 : ¬v10 ∨ v3 ∨ v4 ∨ v16 ∨ v17 ∨ v18)
    (c1932 : ¬v5 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1934 : ¬v19 ∨ v3 ∨ v4 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2006 : ¬v34 ∨ v19 ∨ ¬v24 ∨ ¬v26)
    (c2008 : v33 ∨ v18 ∨ v19 ∨ ¬v24 ∨ ¬v26 ∨ v31)
    (c2012 : ¬v31 ∨ v1 ∨ v8 ∨ ¬v19 ∨ ¬v24 ∨ v43 ∨ v49)
    (c2017 : ¬v36 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c2074 : ¬v12 ∨ v4 ∨ v5 ∨ v18 ∨ v19 ∨ v20)
    (c2110 : ¬v23 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c2113 : ¬v22 ∨ ¬v26 ∨ ¬v34)
    (c2114 : ¬v28 ∨ v19 ∨ v20 ∨ ¬v26 ∨ ¬v34 ∨ v35)
    (c2115 : ¬v23 ∨ v24 ∨ ¬v26 ∨ ¬v34)
    (c2165 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2245 : v23 ∨ ¬v3 ∨ v15 ∨ v25 ∨ ¬v26 ∨ v27 ∨ ¬v33 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2259 : ¬v1 ∨ ¬v3 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2288 : v4 ∨ v3 ∨ ¬v10 ∨ ¬v20)
    (c2306 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2356 : v5 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v18)
    (c2378 : v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2384 : v30 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v37 ∨ v44)
    (c2385 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2405 : v2 ∨ v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v23 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2413 : v3 ∨ v10 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45)
    (c2452 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2466 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v30 ∨ v31 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c2475 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c2507 : ¬v25 ∨ ¬v1 ∨ v22 ∨ ¬v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2574 : ¬v37 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2595 : v48 ∨ v49)
    (c2601 : v1 ∨ ¬v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v31 ∨ v49)
    : (¬v42 ∨ v22 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v43 ∨ v45 ∨ v49) ∧ (¬v1 ∨ ¬v19 ∨ v24 ∨ v31 ∨ v49) ∧ (¬v28 ∨ v22 ∨ v25 ∨ ¬v26 ∨ ¬v32) ∧ (¬v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24) ∧ (v25 ∨ ¬v26 ∨ v49) ∧ (¬v42 ∨ v4 ∨ v6 ∨ v7 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v49) ∧ (¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v49) ∧ (v30 ∨ ¬v26 ∨ v32 ∨ v49) ∧ (v1 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v31 ∨ v34 ∨ v35 ∨ v49) := by
  have c2602 : v31 ∨ ¬v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c2113 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v24 := by
      rcases c88 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
    have u12 : v1 := by
      rcases c2601 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u13 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n5
    have u14 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u15 : v10 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u13
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u6
    have u16 : ¬v19 := by
      rcases c1934 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u6
    have u17 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u15 a
      · exact a
    have u23 : ¬v20 := by
      rcases c2288 with a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u15 a
      · exact a
    have u24 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u4
    have u25 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u26 : v15 := by
      rcases c1466 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a u1
    have u27 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u26 a
      · exact a
    rcases c248 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u28
    · exact absurd a u20
    · exact absurd u15 a
    · exact absurd a u27
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u2
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u19
  have c2603 : v27 ∨ ¬v22 ∨ v25 ∨ ¬v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v34 := by
      rcases c2113 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u4 : v31 := by
      rcases c2602 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
    have u5 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
    have u11 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u3
    rcases c63 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c2604 : ¬v1 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v17 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n8
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n10
    have u4 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n10
    have u13 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u14 : v11 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v2 := by
      rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
    have u16 : ¬v10 := by
      rcases c1921 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u6
    have u17 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v5 := by
      rcases c2356 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a u17
      · exact absurd a u6
    rcases c3 with a|a|a
    · exact absurd u15 a
    · exact absurd n0 a
    · exact absurd u18 a
  have c2605 : v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ ¬v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c2603 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u9 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
    have u10 : ¬v17 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u7
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v28 := by
      rcases c839 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u5
    have u20 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u6
      · exact a
      · exact absurd a u11
      · exact absurd a u15
    have u21 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u22 : v24 := by
      rcases c119 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n1
      · exact a
    have u23 : ¬v1 := by
      rcases c2604 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a n5
    have u24 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u23
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u12
    have u25 : v8 := by
      rcases c2012 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u23
      · exact a
      · exact absurd u9 a
      · exact absurd u22 a
      · exact absurd a u13
      · exact absurd a n5
    have u26 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u20
    rcases c2385 with a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u23
    · exact absurd u28 a
    · exact absurd a u27
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u15
  have c2606 : ¬v31 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v22 := by
      rcases c2603 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
    have u7 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u8 : ¬v17 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u5
    have u9 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v23 := by
      rcases c2605 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
    have u12 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u11 a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd u11 a
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u6
  have c2607 : ¬v23 ∨ v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v34 := by
      rcases c2115 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd n3 a
      · exact a
    have u3 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
    have u4 : ¬v17 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u2
    have u5 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u3 a
    rcases c375 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a n5
  have c2608 : ¬v42 ∨ v22 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
    have u6 : v29 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a u3
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v23 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
    have u12 : v26 := by
      rcases c562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a u10
    have u13 : v25 := by
      rcases c2607 with a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u10
    rcases c101 with a|a|a
    · exact absurd u12 a
    · exact absurd u13 a
    · exact absurd u11 a
  have c2609 : v30 ∨ ¬v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c2606 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v22 := by
      rcases c2603 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n6
    have u3 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v34 := by
      rcases c2115 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd n3 a
      · exact a
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u6 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u1
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
    have u12 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n5
      · exact a
      · exact absurd a u7
      · exact absurd a u11
    have u13 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
    have u14 : ¬v28 := by
      rcases c105 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u15 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u1
    have u16 : v33 := by
      rcases c2607 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact a
    have u17 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v16 := by
      rcases c800 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u1
    have u20 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n6
    have u21 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : v10 := by
      rcases c849 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n6
    have u26 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v1 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n6
    rcases c1515 with a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd u28 a
    · exact absurd a u22
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u10
  have c2610 : ¬v1 ∨ ¬v19 ∨ v24 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u2 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u8 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n4
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
    rcases c1934 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u2
  have c2611 : v32 ∨ ¬v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v22 := by
      rcases c84 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v31 := by
      rcases c2606 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v34 := by
      rcases c2115 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd n3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u10
    have u12 : v30 := by
      rcases c2609 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u13 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v19 := by
      rcases c2110 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u5
    have u17 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v1 := by
      rcases c2610 with a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
    have u21 : ¬v28 := by
      rcases c839 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a u14
      · exact absurd a u13
    have u22 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n5
    have u23 : v8 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u20
      · exact a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u24 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : v4 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
    have u28 : v2 := by
      rcases c452 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a u17
      · exact a
      · exact absurd a u19
      · exact absurd a u20
    rcases c2385 with a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u20
    · exact absurd u27 a
    · exact absurd a u26
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u10
  have c2612 : ¬v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v32 := by
      rcases c2611 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v22 := by
      rcases c84 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c2606 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    rcases c1267 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u7
  have c2613 : ¬v28 ∨ v22 ∨ v25 ∨ ¬v26 ∨ ¬v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
    have u7 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u2
    have u8 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u2
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u5
  have c2614 : v33 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v34 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v31 := by
      rcases c2606 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
    have u3 : ¬v22 := by
      rcases c2603 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n6
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v23 := by
      rcases c2612 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
    have u11 : v28 := by
      rcases c119 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u10
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n1
    have u12 : ¬v32 := by
      rcases c2613 with a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
    have u13 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a u9
    have u14 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n5
    have u15 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v1 := by
      rcases c2610 with a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n6
    have u20 : v35 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
    have u21 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u24 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u25 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u19
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u6
    have u26 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u22
      · exact a
      · exact absurd a u16
    have u27 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v4 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
    rcases c2385 with a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u19
    · exact absurd u28 a
    · exact absurd a u27
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u9
  have c2615 : v34 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c2606 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v22 := by
      rcases c2603 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u10 : v33 := by
      rcases c2614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
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
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd a u8
    have u17 : ¬v23 := by
      rcases c2611 with a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v28 := by
      rcases c119 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u17
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n1
    have u19 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd u18 a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u12
    have u20 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd u18 a
      · exact absurd a u11
      · exact absurd a u12
    have u21 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd u18 a
      · exact absurd a u11
      · exact absurd a u12
    have u22 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd u18 a
      · exact absurd a n0
      · exact absurd a u12
    have u23 : v21 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u18 a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n0
      · exact a
    have u24 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v10 := by
      rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u8
    have u27 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : v1 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n5
    rcases c1515 with a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd u29 a
    · exact absurd a u22
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u7
  have c2616 : v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c2606 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v22 := by
      rcases c2603 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
    have u10 : v34 := by
      rcases c2615 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v23 := by
      rcases c2115 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd u10 a
    have u17 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd a u8
    have u19 : v28 := by
      rcases c119 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
    have u20 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd u19 a
      · exact absurd a u12
      · exact absurd a u13
    have u21 : ¬v18 := by
      rcases c1792 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u19 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
    have u22 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd u19 a
      · exact absurd a u12
      · exact absurd a u13
    have u23 : v20 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u22
      · exact a
      · exact absurd n2 a
      · exact absurd u10 a
      · exact absurd a u13
    have u24 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v10 := by
      rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u8
    have u27 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : v1 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n4
    rcases c1515 with a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd u29 a
    · exact absurd a u21
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u7
  have c2617 : v32 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c2606 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v22 := by
      rcases c2603 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
    have u3 : v24 := by
      rcases c2616 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd n2 a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : v17 := by
      rcases c1790 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n0
    have u13 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : v33 := by
      rcases c2008 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd u3 a
      · exact absurd n2 a
      · exact absurd a u1
    have u19 : ¬v34 := by
      rcases c2006 with a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u3 a
      · exact absurd n2 a
    have u20 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u24 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u25 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n4
    have u26 : ¬v3 := by
      rcases c2245 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd u18 a
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n4
    have u27 : ¬v11 := by
      rcases c1005 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
    have u28 : ¬v1 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
    have u29 : v10 := by
      rcases c2378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u26
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u30 : v8 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u28
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    rcases c39 with a|a
    · exact absurd u30 a
    · exact absurd u29 a
  have c2618 : v1 ∨ v17 ∨ ¬v18 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u6
    have u9 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n9
    have u10 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v7 := by
      rcases c1136 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    have u14 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u8 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n0
    rcases c17 with a|a|a
    · exact absurd u8 a
    · exact absurd u14 a
    · exact absurd u13 a
  have c2619 : v19 ∨ v17 ∨ v22 ∨ v23 ∨ ¬v24 ∨ ¬v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v37 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v18 := by
      rcases c2008 with a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd n5 a
      · exact absurd a n9
    have u2 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n14
    have u4 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : v1 := by
      rcases c2618 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u14 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n14
    have u15 : v2 := by
      rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
    have u16 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u13 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
    have u19 : v14 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u20 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u19 a
    rcases c294 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u6
    · exact absurd a u18
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u20
    · exact absurd u19 a
  have c2620 : v27 ∨ v25 ∨ ¬v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u2 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c2606 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
    have u7 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u8 : ¬v22 := by
      rcases c2603 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
    have u9 : v24 := by
      rcases c2616 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
    have u10 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd n2 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n2 a
    have u12 : v32 := by
      rcases c2617 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
    have u13 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v37 := by
      rcases c925 with a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u2
    have u19 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
    have u20 : ¬v17 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u17
    have u21 : v19 := by
      rcases c2619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n3
    have u22 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u21 a
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd u9 a
    · exact absurd a n1
  have c2621 : v31 ∨ v16 ∨ v17 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v1 := by
      rcases c2610 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n10
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u12 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u3
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u6
    have u13 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u7
    have u14 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v7 := by
      rcases c1136 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u3
      · exact a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u2
    have u17 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n2
    rcases c17 with a|a|a
    · exact absurd u12 a
    · exact absurd u17 a
    · exact absurd u16 a
  have c2622 : v49 ∨ v1 ∨ v16 ∨ v17 ∨ ¬v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u2 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u4 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u5 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u6 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n0
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n0
    have u14 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u9
    have u15 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
    have u16 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u14 a
      · exact a
    have u21 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u8
    have u22 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u7
    have u23 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u21 a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u22 a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v4 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a n1
      · exact a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
    have u26 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u21 a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v19 := by
      rcases c2621 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u28 : v15 := by
      rcases c327 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u26
      · exact a
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
    have u29 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : v42 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a n9
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a n0
      · exact a
      · exact absurd a u1
    have u32 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u31 a
      · exact a
    rcases c244 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u33
    · exact absurd a u11
    · exact absurd a u26
    · exact absurd a u23
    · exact absurd a u34
    · exact absurd a u10
    · exact absurd a u27
    · exact absurd a u30
    · exact absurd a u25
    · exact absurd a u19
    · exact absurd a u29
    · exact absurd a u32
    · exact absurd a n0
  have c2623 : v16 ∨ v17 ∨ v25 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v27 := by
      rcases c2620 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u4 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
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
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
    have u11 : v1 := by
      rcases c2622 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
    have u13 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n8
    have u14 : v10 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u5
    have u15 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v20 := by
      rcases c2288 with a|a|a|a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd u14 a
      · exact a
    have u21 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    rcases c248 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd u14 a
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u17
  have c2624 : v49 ∨ v16 ∨ v25 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v27 := by
      rcases c2620 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n0
    have u3 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u4 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u5 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
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
    have u12 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n0
    have u14 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
    have u15 : v17 := by
      rcases c2623 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u16 : v10 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u15 a
      · exact absurd a u4
      · exact absurd a n2
    have u17 : ¬v13 := by
      rcases c662 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u4
      · exact absurd a n2
    have u18 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : v42 := by
      rcases c1026 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
    have u23 : v1 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u9
    have u24 : v2 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u8
    have u25 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n0
    have u28 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
    have u29 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u23 a
      · exact absurd u24 a
      · exact a
    rcases c496 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u14
    · exact absurd a u27
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n0
  have c2625 : ¬v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    rcases c629 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2626 : v35 ∨ v25 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c2620 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u5 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
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
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n6
    have u12 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u13 : v16 := by
      rcases c2624 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u14 : ¬v10 := by
      rcases c2625 with a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : v9 := by
      rcases c781 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u16 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u7
    have u17 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n6
    rcases c1562 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u9
  have c2627 : ¬v3 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v30 ∨ v32 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n10
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u10 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u4
    have u11 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : v4 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
    have u13 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
    rcases c2385 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u8
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u6
  have c2628 : v30 ∨ v25 ∨ ¬v26 ∨ v29 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v27 := by
      rcases c2620 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u5 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
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
    have u12 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
    have u14 : v35 := by
      rcases c2626 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u17
      · exact a
      · exact absurd a u7
      · exact absurd a u11
    have u19 : ¬v3 := by
      rcases c2627 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n5
    have u20 : v10 := by
      rcases c2413 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u7
    have u21 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v2 := by
      rcases c1093 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u20 a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
    rcases c1690 with a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u8
  have c2629 : ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
    have u2 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a u6
    have u8 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u9 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n9
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
    have u11 : ¬v10 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
    rcases c2180 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
  have c2630 : v31 ∨ v25 ∨ ¬v26 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v27 := by
      rcases c2620 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u3 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u5 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
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
    have u12 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
    have u13 : v30 := by
      rcases c2628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u14 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v37 := by
      rcases c714 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact absurd u13 a
      · exact absurd a n0
      · exact a
      · exact absurd a u12
    have u18 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
    have u19 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v1 := by
      rcases c2629 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
    have u24 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u9
    have u25 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : v4 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u11
    have u27 : v3 := by
      rcases c2413 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u7
    have u28 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u26 a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u26 a
    rcases c503 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u10
    · exact absurd a u21
  have c2631 : v1 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v30 ∨ v32 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v26 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n4
    have u2 : v31 := by
      rcases c2630 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n11
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n11
    have u4 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
    have u11 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u12 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u7
    have u13 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u6
    have u14 : v4 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
    rcases c2385 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n0
    · exact absurd u14 a
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u9
  have c2632 : v29 ∨ v25 ∨ ¬v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v27 := by
      rcases c2620 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u3 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u5 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
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
    have u12 : v31 := by
      rcases c2630 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
    have u13 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n3
    have u18 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u19 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
    have u20 : v38 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n1
    have u21 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v10 := by
      rcases c1026 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
    have u25 : v1 := by
      rcases c2631 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n3
    have u26 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
    have u27 : ¬v5 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
    have u28 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u11
    have u29 : v6 := by
      rcases c503 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a u27
      · exact a
      · exact absurd a u10
      · exact absurd a u21
    rcases c2452 with a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd u25 a
    · exact absurd a u28
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n3
  have c2633 : v25 ∨ ¬v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n2
    have u2 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v29 := by
      rcases c2632 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
    have u8 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
    have u14 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u6
    have u15 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u16 : v27 := by
      rcases c2620 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
    have u17 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    have u18 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    have u19 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u16 a
      · exact absurd n1 a
      · exact a
    have u20 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    have u21 : v36 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd u7 a
      · exact absurd a u11
      · exact a
      · exact absurd a u15
    have u22 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v10 := by
      rcases c644 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
    have u24 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v2 := by
      rcases c1093 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u23 a
      · exact absurd a u18
      · exact absurd u16 a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    rcases c1690 with a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a u3
  have c2634 : v3 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v26 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n4
    have u2 : v25 := by
      rcases c119 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n12
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v1 := by
      rcases c2507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n12
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u10 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n8
      · exact a
    have u11 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v2 := by
      rcases c2405 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : v9 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a u8
    have u16 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v7 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u8
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n12
    have u20 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u14 a
      · exact absurd u19 a
      · exact a
    rcases c372 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd u19 a
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u18
  have c2635 : v4 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n14
    have u2 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v3 := by
      rcases c2634 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u8 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u9
    · exact absurd a n11
    · exact absurd a n14
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a n12
  have c2636 : v10 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v25 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n9
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
    have u3 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v1 := by
      rcases c2507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n9
    have u14 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : v4 := by
      rcases c2635 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u15 a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
    have u17 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u9
    have u18 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u9
    have u19 : v9 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u18
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u20 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
    rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u13
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a n9
  have c2637 : ¬v29 ∨ ¬v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v25 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u7 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n2
    have u8 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u10 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u11 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u12 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u13 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u18 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n2
    have u19 : v36 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a u5
      · exact a
      · exact absurd a u17
    have u20 : ¬v1 := by
      rcases c2507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n2
    have u21 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v10 := by
      rcases c2636 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a n2
    have u24 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
    have u29 : v7 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u20
      · exact a
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n2
    have u30 : v2 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u14
    have u31 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u30 a
      · exact absurd u29 a
      · exact a
    rcases c372 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd u29 a
    · exact absurd a u20
    · exact absurd a u31
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u27
  have c2638 : ¬v42 ∨ v4 ∨ v6 ∨ v7 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    rcases c244 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n8
  have c2639 : ¬v35 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n0 a
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n1
  have c2640 : ¬v10 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v29 := by
      rcases c2637 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
    have u8 : v25 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
    have u9 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u10 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u12 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u13 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u14 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u15 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u9 a
    have u20 : ¬v16 := by
      rcases c2625 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
    have u21 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
    have u22 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u13
    have u23 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u24 : v1 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n4
    have u25 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n4
    have u26 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u16
      · exact a
      · exact absurd a n2
    have u27 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n4
    have u28 : ¬v4 := by
      rcases c1529 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u24 a
      · exact a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u18
    have u29 : ¬v19 := by
      rcases c2610 with a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u30 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u24 a
      · exact absurd u26 a
      · exact a
    have u31 : ¬v42 := by
      rcases c2638 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u30
      · exact absurd a u5
      · exact absurd a u29
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n4
    have u32 : v35 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u30
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact a
      · exact absurd a u31
      · exact absurd a n4
    rcases c2639 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u27
    · exact absurd a u23
    · exact absurd a u31
  have c2641 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    rcases c552 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n4
  have c2642 : v42 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v10 := by
      rcases c2640 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u2 : v25 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
    have u3 : ¬v29 := by
      rcases c2637 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u7 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u8 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u9 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v36 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u3
    have u16 : ¬v35 := by
      rcases c2641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a n0
    have u17 : ¬v1 := by
      rcases c2507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n5
    have u18 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u12
    have u19 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u11
    have u22 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
    have u23 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u21 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u17
    have u24 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u8
    rcases c17 with a|a|a
    · exact absurd u21 a
    · exact absurd u23 a
    · exact absurd u24 a
  have c2643 : v1 ∨ ¬v7 ∨ v10 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v25 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n7
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n7
    have u3 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u1 a
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
    have u10 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v29 := by
      rcases c2637 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n7
    have u12 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n7
    have u13 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
    have u14 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u8
    have u16 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u15 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n0
    rcases c17 with a|a|a
    · exact absurd u15 a
    · exact absurd u16 a
    · exact absurd n1 a
  have c2644 : ¬v7 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v10 := by
      rcases c2640 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u2 : v25 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
    have u3 : v42 := by
      rcases c2642 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u4 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u7 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u8 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : v1 := by
      rcases c2643 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v19 := by
      rcases c2610 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
    have u15 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd u13 a
      · exact absurd n0 a
      · exact a
    have u16 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd u13 a
      · exact absurd n0 a
      · exact a
    have u17 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n0 a
    have u18 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd u13 a
      · exact absurd n0 a
      · exact a
    have u19 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u13 a
      · exact absurd n0 a
      · exact a
    have u20 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n3
      · exact a
    have u21 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u11
    have u22 : v9 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u21
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u23 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u18
      · exact a
      · exact absurd a u14
    have u24 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u22 a
      · exact a
    rcases c346 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd u22 a
    · exact absurd a u26
    · exact absurd a u24
  have c2645 : ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v26 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n10
    have u3 : ¬v7 := by
      rcases c2644 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v42 := by
      rcases c2642 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v5 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u12 : v6 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u9
    have u13 : v8 := by
      rcases c2452 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u14 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u12 a
    rcases c782 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a u5
  have c2646 : v35 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v10 := by
      rcases c2640 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u2 : v25 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
    have u3 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u6 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u7 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u8 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v7 := by
      rcases c2644 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u15 : v42 := by
      rcases c2642 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v29 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u13
    have u20 : ¬v1 := by
      rcases c2645 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u21 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u11
    have u22 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u10
    have u24 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u23 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u20
    have u25 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u23 a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u24 a
      · exact absurd u23 a
      · exact a
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u25
    · exact absurd a u18
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u26
    · exact absurd a u17
  have c2647 : v1 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u7 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u8 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u4
    have u9 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u3
    have u11 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u10 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n0
    have u12 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u11 a
      · exact absurd u10 a
      · exact a
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u13
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a n9
  have c2648 : v31 ∨ ¬v26 ∨ v30 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v25 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n4
    have u3 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
    have u15 : ¬v10 := by
      rcases c2640 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
    have u16 : v35 := by
      rcases c2646 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u20 : v42 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u16 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u7
      · exact a
      · exact absurd a u18
    have u21 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v1 := by
      rcases c2647 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n4
    have u24 : ¬v5 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u25 : ¬v19 := by
      rcases c2610 with a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n4
    have u26 : ¬v4 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
    have u27 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n4
    have u28 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n0
      · exact a
    have u29 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u28 a
    have u33 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u30
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a n4
    have u34 : ¬v12 := by
      rcases c2074 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u30
      · exact absurd a u25
      · exact absurd a u32
    have u35 : v9 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u15
      · exact absurd a u33
      · exact absurd a u29
      · exact absurd a u3
      · exact absurd a u4
    have u36 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u35 a
      · exact a
    have u37 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u35 a
    have u38 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u35 a
      · exact a
    have u39 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u37
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u40 : v2 := by
      rcases c346 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u27
      · exact absurd a u31
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u4
      · exact a
      · exact absurd a u34
      · exact absurd a u37
      · exact absurd u35 a
      · exact absurd a u33
      · exact absurd a u29
    have u41 : v7 := by
      rcases c496 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u27
      · exact a
      · exact absurd a u39
      · exact absurd a u34
      · exact absurd a u36
      · exact absurd a u38
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
    rcases c5 with a|a|a
    · exact absurd u23 a
    · exact absurd u40 a
    · exact absurd u41 a
  have c2649 : ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v5 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    have u6 : v6 := by
      rcases c503 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a n8
    have u7 : v8 := by
      rcases c2452 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    have u8 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u6 a
    rcases c782 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
  have c2650 : v30 ∨ ¬v26 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v25 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n3
    have u3 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
    have u14 : v31 := by
      rcases c2648 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n3
    have u19 : v38 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n2
    have u20 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v1 := by
      rcases c2649 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n3
    have u24 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u10
    have u25 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u9
    have u29 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u30 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u28 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u23
    have u31 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u6
    rcases c17 with a|a|a
    · exact absurd u28 a
    · exact absurd u30 a
    · exact absurd u31 a
  have c2651 : v1 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v31 ∨ v34 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v42 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n10
    have u8 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
    have u9 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u10 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u4
    have u11 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u17 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n5
    have u18 : ¬v17 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v4 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    have u20 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u18
    have u21 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u17 a
    rcases c663 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u6
  exact ⟨c2608, c2610, c2613, c2625, c2633, c2638, c2649, c2650, c2651⟩
