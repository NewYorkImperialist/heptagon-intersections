import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 800-849 of the 2559-step refutation of ccase003: 115 core clauses and 63 earlier-derived ones give 21 more. -/
theorem CCase003_block016
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v2 ∨ ¬v1 ∨ ¬v5)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c54 : ¬v11 ∨ ¬v13)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
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
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c119 : v22 ∨ v23 ∨ v28 ∨ v27 ∨ v25 ∨ v24)
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
    (c147 : ¬v38 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c166 : ¬v41 ∨ ¬v42)
    (c167 : ¬v44 ∨ ¬v43)
    (c174 : ¬v46 ∨ ¬v44)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c199 : v43 ∨ v49 ∨ ¬v7 ∨ v48 ∨ v1 ∨ v13 ∨ v6 ∨ v14)
    (c245 : v43 ∨ v6 ∨ ¬v14 ∨ v3 ∨ v7 ∨ v8 ∨ v15 ∨ v13 ∨ v9 ∨ v10 ∨ v21 ∨ v17 ∨ v48 ∨ v49)
    (c256 : ¬v39 ∨ v35 ∨ v45 ∨ v33 ∨ v3 ∨ v42 ∨ v46 ∨ v32 ∨ v41 ∨ v38 ∨ v40 ∨ v4 ∨ v5 ∨ v49)
    (c257 : v43 ∨ v49 ∨ ¬v7 ∨ v6 ∨ v1 ∨ v8 ∨ v48 ∨ v14)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c294 : v7 ∨ v6 ∨ v21 ∨ v13 ∨ v20 ∨ v15 ∨ v8 ∨ ¬v14)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c324 : ¬v30 ∨ v23 ∨ v38 ∨ v37 ∨ v31 ∨ v24 ∨ v22 ∨ v29)
    (c333 : ¬v16 ∨ v23 ∨ v1 ∨ v21 ∨ v3 ∨ v27 ∨ v15 ∨ v22 ∨ v17 ∨ v20 ∨ v2 ∨ v10 ∨ v9 ∨ v13)
    (c339 : v36 ∨ v23 ∨ v42 ∨ ¬v29 ∨ v30 ∨ v22 ∨ v35 ∨ v28)
    (c344 : ¬v31 ∨ v38 ∨ v24 ∨ v23 ∨ v3 ∨ v2 ∨ v32 ∨ v36 ∨ v22 ∨ v30 ∨ v29 ∨ v4 ∨ v39 ∨ v45)
    (c348 : ¬v44 ∨ v43 ∨ v38 ∨ v37 ∨ v3 ∨ v2 ∨ v1 ∨ v45)
    (c363 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v46 ∨ v10 ∨ v4)
    (c367 : v43 ∨ ¬v35 ∨ v48 ∨ v41 ∨ v22 ∨ v42 ∨ v28 ∨ v34 ∨ v31 ∨ v29 ∨ v38 ∨ v24 ∨ v30 ∨ v49)
    (c388 : v23 ∨ v30 ∨ v17 ∨ v25 ∨ v31 ∨ v18 ∨ ¬v24 ∨ v16)
    (c390 : ¬v44 ∨ v36 ∨ v2 ∨ v3 ∨ v37 ∨ v30 ∨ v5 ∨ v29 ∨ v31 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47)
    (c410 : v23 ∨ ¬v24 ∨ v25 ∨ v18 ∨ v32 ∨ v31 ∨ v17 ∨ v16)
    (c430 : ¬v44 ∨ v36 ∨ v37 ∨ v2 ∨ v1 ∨ v3 ∨ v43 ∨ v45)
    (c452 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v16 ∨ v2 ∨ v21 ∨ v1)
    (c454 : v36 ∨ ¬v32 ∨ v25 ∨ v24 ∨ v22 ∨ v31 ∨ v33 ∨ v39 ∨ v29 ∨ v30 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c462 : v43 ∨ v36 ∨ v38 ∨ v1 ∨ v37 ∨ v2 ∨ ¬v44 ∨ v45)
    (c465 : ¬v26 ∨ v33 ∨ v25 ∨ v20 ∨ v32 ∨ v18 ∨ v19 ∨ v27)
    (c479 : v2 ∨ ¬v1 ∨ v7 ∨ v9 ∨ v6 ∨ v22 ∨ v15 ∨ v8 ∨ v13 ∨ v23 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c480 : ¬v44 ∨ v37 ∨ v24 ∨ v7 ∨ v22 ∨ v43 ∨ v38 ∨ v1 ∨ v2 ∨ v23 ∨ v42 ∨ v30 ∨ v45 ∨ v49)
    (c536 : v43 ∨ ¬v1 ∨ v49 ∨ v7 ∨ v14 ∨ v9 ∨ v8 ∨ v2)
    (c554 : ¬v44 ∨ v37 ∨ v41 ∨ v2 ∨ v3 ∨ v36 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c635 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c643 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c689 : ¬v19 ∨ ¬v26 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v35)
    (c691 : ¬v25 ∨ ¬v26 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c714 : ¬v26 ∨ ¬v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c771 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v26 ∨ v30 ∨ v31)
    (c776 : v12 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c780 : v12 ∨ v6 ∨ v13 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c785 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v24)
    (c811 : ¬v13 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24)
    (c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c840 : v20 ∨ v15 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c887 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c906 : ¬v32 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c921 : ¬v35 ∨ v22 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c929 : ¬v12 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c937 : v25 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34)
    (c943 : ¬v34 ∨ v27 ∨ v28 ∨ v35 ∨ v40 ∨ v41 ∨ v42)
    (c945 : v29 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v35 ∨ v41 ∨ v42)
    (c946 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c991 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v18 ∨ v19)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1053 : ¬v4 ∨ v3 ∨ v5 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47)
    (c1068 : ¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1111 : ¬v28 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c1134 : ¬v13 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1136 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1144 : ¬v13 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1197 : ¬v26 ∨ v27 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1218 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1220 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1221 : ¬v40 ∨ v33 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1227 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46)
    (c1232 : ¬v20 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1235 : ¬v39 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1237 : ¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1261 : ¬v42 ∨ v1 ∨ v2 ∨ ¬v44 ∨ v45)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1274 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1286 : ¬v23 ∨ v22 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1297 : ¬v36 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1304 : v43 ∨ ¬v1 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1334 : v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1361 : v49 ∨ v22 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1362 : v41 ∨ v6 ∨ v12 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1363 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1364 : v28 ∨ v6 ∨ ¬v14 ∨ v22 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1366 : v5 ∨ v2 ∨ v6 ∨ v8 ∨ v14 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1368 : v45 ∨ ¬v1 ∨ v6 ∨ v8 ∨ v15 ∨ v22 ∨ v27 ∨ ¬v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1369 : v33 ∨ v22 ∨ ¬v26 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v35)
    : (v33 ∨ ¬v17 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v34) ∧ (¬v35 ∨ v22 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28) ∧ (¬v26 ∨ ¬v1 ∨ v8 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49) ∧ (v28 ∨ v6 ∨ ¬v9 ∨ v22 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v4 ∨ v5 ∨ v6 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v7 ∨ ¬v1 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47) ∧ (v14 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v32 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v31 ∨ v36 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v18 ∨ ¬v1 ∨ v3 ∨ v10 ∨ v11 ∨ v17 ∨ v22 ∨ v24 ∨ v25 ∨ v31 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v31 ∨ ¬v26 ∨ v27 ∨ ¬v28) ∧ (¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46) ∧ (¬v41 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v7 ∨ v1 ∨ v6 ∨ v14 ∨ v43 ∨ v48 ∨ v49) ∧ (v28 ∨ v1 ∨ v6 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v14 ∨ v1 ∨ v15 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v29 ∨ v35 ∨ v43 ∨ v49) ∧ (¬v38 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45) ∧ (v27 ∨ v15 ∨ v22 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v1 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27) ∧ (¬v28 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v26 ∨ v27) := by
  have c1370 : ¬v1 ∨ v6 ∨ v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v30 ∨ v33 ∨ v34 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v24 := by
      rcases c111 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u1 a
    have u3 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd n5 a
      · exact absurd u1 a
      · exact a
    have u4 : v35 := by
      rcases c1369 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n8
      · exact a
    have u5 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n13
      · exact absurd a n8
    have u13 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u7
    have u16 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n2
    rcases c6 with a|a|a
    · exact absurd n0 a
    · exact absurd u16 a
    · exact absurd u15 a
  have c1371 : v33 ∨ ¬v17 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n1 a
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n4
  have c1372 : v46 ∨ ¬v1 ∨ v6 ∨ v15 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v33 ∨ v34 ∨ v41 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd n6 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v17 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n8
    have u4 : v30 := by
      rcases c1370 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u5
    rcases c840 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd u1 a
    · exact absurd n6 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u5
  have c1373 : ¬v35 ∨ v22 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    rcases c937 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
  have c1374 : ¬v26 ∨ ¬v1 ∨ v8 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v17 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n9
    have u2 : v24 := by
      rcases c119 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact a
    have u3 : ¬v35 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n1 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v14 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a u5
      · exact absurd a n7
    have u9 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    have u11 : v20 := by
      rcases c1366 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v32 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u15 a
      · exact a
    rcases c388 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u17
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd u2 a
    · exact absurd a u12
  have c1375 : v3 ∨ v2 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v38 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n8 a
      · exact a
    rcases c554 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1376 : v47 ∨ ¬v1 ∨ ¬v7 ∨ v8 ∨ v22 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u7 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u9 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v25 := by
      rcases c1374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v14 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u12 a
    have u15 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v20 := by
      rcases c1366 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u13
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v12 := by
      rcases c991 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u19
    have u21 : v13 := by
      rcases c1362 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u20
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v38 := by
      rcases c1375 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u23
      · exact a
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u25 : v31 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a n9
      · exact a
      · exact absurd a u17
    have u26 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v42 := by
      rcases c1237 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
    have u31 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u11
      · exact absurd a n12
    have u32 : ¬v39 := by
      rcases c256 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u30
      · exact absurd a n10
      · exact absurd a u29
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n12
    rcases c344 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u24
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u29
    · exact absurd a u31
    · exact absurd a n4
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u4
    · exact absurd a u32
    · exact absurd a n9
  have c1377 : v28 ∨ v6 ∨ ¬v9 ∨ v22 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd n2 a
      · exact a
    rcases c1362 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1378 : v4 ∨ v5 ∨ v6 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n7
    have u2 : v12 := by
      rcases c1362 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u1 a
    rcases c991 with a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u4
  have c1379 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v42 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a n4
    rcases c1346 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1380 : v45 ∨ ¬v1 ∨ v8 ∨ v15 ∨ v22 ∨ v27 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v33 := by
      rcases c1368 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v28 := by
      rcases c1372 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v9 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v14 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v25 := by
      rcases c1374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
    have u14 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u12 a
    have u15 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u14
    have u16 : ¬v7 := by
      rcases c1376 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v2 := by
      rcases c536 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
      · exact a
    have u18 : v35 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n1 a
    have u20 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u17 a
      · exact absurd n1 a
      · exact a
    have u22 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : v42 := by
      rcases c945 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd u18 a
      · exact absurd a u8
      · exact a
    have u25 : v13 := by
      rcases c1378 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u26 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v17 := by
      rcases c811 with a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u15
      · exact a
      · exact absurd a u2
      · exact absurd a u14
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u19
    · exact absurd a u26
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u28
  have c1381 : ¬v7 ∨ ¬v1 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n8 a
      · exact a
    rcases c390 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1382 : v14 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n4
  have c1383 : v3 ∨ v6 ∨ v7 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v21 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v20 := by
      rcases c294 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd n5 a
    have u2 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u1 a
      · exact a
    rcases c245 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n10
  have c1384 : v45 ∨ ¬v1 ∨ v8 ∨ v15 ∨ v22 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v34 := by
      rcases c1380 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n10
    have u14 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u15 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v41 := by
      rcases c943 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u15
      · exact a
      · exact absurd a u12
    have u18 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n7
    have u19 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v7 := by
      rcases c1381 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u21 : v14 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n10
    have u22 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u3
    have u26 : v2 := by
      rcases c479 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    have u27 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd n1 a
    have u28 : v21 := by
      rcases c1383 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd u21 a
      · exact absurd a n3
      · exact a
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    have u29 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u18
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u29
    rcases c771 with a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u25
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd u2 a
    · exact absurd a u5
    · exact absurd a u8
  have c1385 : v45 ∨ ¬v1 ∨ v6 ∨ v8 ∨ v15 ∨ v22 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v28 := by
      rcases c1384 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v34 := by
      rcases c1380 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v33 := by
      rcases c1368 with a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v24 := by
      rcases c111 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u5 a
    have u7 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd u1 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v20 := by
      rcases c840 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u5 a
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u10
    have u15 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n7
    have u16 : v4 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u16 a
    rcases c1053 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
  have c1386 : v30 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v31 ∨ ¬v32 ∨ v36 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n6 a
      · exact a
    rcases c454 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n6 a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1387 : ¬v32 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v31 ∨ v36 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1386 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1388 : ¬v32 ∨ v22 ∨ v24 ∨ v25 ∨ v31 ∨ v36 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1387 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1389 : v18 ∨ ¬v1 ∨ v3 ∨ v10 ∨ v11 ∨ v17 ∨ v22 ∨ v24 ∨ v25 ∨ v31 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n5
    have u2 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c1388 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u2
    have u7 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    rcases c998 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u6 a
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1390 : ¬v31 ∨ ¬v26 ∨ v27 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v19 := by
      rcases c1111 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
    rcases c689 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a u4
    · exact absurd a u2
  have c1391 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c363 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
  have c1392 : v6 ∨ ¬v1 ∨ v15 ∨ v22 ∨ v27 ∨ ¬v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : v8 := by
      rcases c1385 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v28 := by
      rcases c1362 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c1372 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd u10 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1393 : ¬v41 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1363 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1394 : v35 ∨ v6 ∨ v12 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v19 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n7
    rcases c78 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c1395 : v47 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v34 := by
      rcases c1394 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v42 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n12
    have u12 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u13 : v41 := by
      rcases c943 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u12
      · exact a
      · exact absurd a u10
    have u14 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n12
    have u15 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u13 a
      · exact a
    rcases c1381 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd u2 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n0
  have c1396 : v46 ∨ ¬v1 ∨ v15 ∨ v22 ∨ v27 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v35 := by
      rcases c1392 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v8 := by
      rcases c1385 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v3 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n0
    have u15 : v28 := by
      rcases c1395 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v24 := by
      rcases c111 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u1 a
    have u17 : ¬v31 := by
      rcases c1390 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd u15 a
    have u18 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd u15 a
      · exact absurd u1 a
      · exact a
    have u19 : ¬v18 := by
      rcases c643 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u18
    have u20 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u18
    rcases c1389 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd n1 a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a n3
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
  have c1397 : v1 ∨ v15 ∨ v22 ∨ ¬v26 ∨ ¬v28 ∨ ¬v34 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u6 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v20 := by
      rcases c840 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v4 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n11
    have u14 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v6 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : v7 := by
      rcases c1136 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n0
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u11
    rcases c199 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n11
    · exact absurd u18 a
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u15
  have c1398 : ¬v7 ∨ v1 ∨ v6 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v13 := by
      rcases c199 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    rcases c257 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n3
  have c1399 : v49 ∨ v15 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v1 := by
      rcases c1396 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u4 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u6 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd n4 a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v34 := by
      rcases c1397 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd n4 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u9 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u10 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a u8
      · exact absurd a n6
    have u11 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n6
    have u12 : v33 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n3
    have u13 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n0
    have u16 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u14
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v6 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a n10
    · exact absurd a u8
  have c1400 : v35 ∨ v15 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd n4 a
      · exact absurd u1 a
      · exact a
    have u3 : v29 := by
      rcases c1399 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v19 := by
      rcases c689 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u5
      · exact absurd a n0
    rcases c631 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
  have c1401 : ¬v6 ∨ v1 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : v7 := by
      rcases c480 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n7
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v3 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n11
    rcases c29 with a|a|a
    · exact absurd u3 a
    · exact absurd u2 a
    · exact absurd n0 a
  have c1402 : v49 ∨ v1 ∨ ¬v6 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v2 := by
      rcases c1401 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n0
    have u2 : v12 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
    have u3 : ¬v5 := by
      rcases c21 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    rcases c929 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u3
    · exact absurd n2 a
    · exact absurd a u4
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n0
  have c1403 : v28 ∨ v1 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v6 := by
      rcases c1402 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd n12 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v14 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
    rcases c1382 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a n16
  have c1404 : v1 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v34 ∨ v35 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v46 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n9 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n9 a
      · exact a
    have u8 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n11
    have u9 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a u6
    have u10 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
    have u11 : v36 := by
      rcases c339 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd n6 a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n5
    have u12 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v25 := by
      rcases c937 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n7
    have u14 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u13 a
    have u15 : v13 := by
      rcases c1403 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v16 := by
      rcases c1134 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u21 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n13
    have u22 : ¬v17 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u14
    have u23 : v6 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
    have u24 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u22
    rcases c29 with a|a|a
    · exact absurd u24 a
    · exact absurd u21 a
    · exact absurd u23 a
  have c1405 : v28 ∨ v1 ∨ v6 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v14 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n10
    rcases c1398 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
  have c1406 : ¬v14 ∨ v1 ∨ v15 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v29 ∨ v35 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n2
    have u5 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v30 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v25 := by
      rcases c691 with a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
    have u14 : ¬v27 := by
      rcases c714 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
    have u15 : v24 := by
      rcases c324 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u16 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd n5 a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u17 : ¬v17 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u13
      · exact absurd n5 a
      · exact absurd a u14
      · exact absurd a u10
    have u18 : v18 := by
      rcases c410 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u15 a
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u5
    rcases c75 with a|a
    · exact absurd u18 a
    · exact absurd u16 a
  have c1407 : ¬v38 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n4 a
      · exact a
    rcases c430 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n5
  have c1408 : v28 ∨ v1 ∨ v15 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v27 ∨ v34 ∨ v35 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v29 := by
      rcases c1404 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v46 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v14 := by
      rcases c1406 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n13
    have u5 : ¬v42 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v6 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
    have u8 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a u5
      · exact absurd a n0
    have u9 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u6 a
    have u10 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u6 a
    have u11 : ¬v38 := by
      rcases c1407 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd n9 a
      · exact absurd a n10
    have u12 : v37 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a u3
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n10
    have u13 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n2
    have u15 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v16 := by
      rcases c452 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n1
    have u20 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n0
    have u21 : v17 := by
      rcases c333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
    rcases c66 with a|a
    · exact absurd u19 a
    · exact absurd u21 a
  have c1409 : v45 ∨ v15 ∨ v22 ∨ v27 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v1 := by
      rcases c1396 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v28 := by
      rcases c1400 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v34 := by
      rcases c1408 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd u4 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n8
    have u14 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n8
    have u15 : ¬v42 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v14 := by
      rcases c1406 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd u4 a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n8
    have u17 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    have u21 : v41 := by
      rcases c943 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u18
      · exact a
      · exact absurd a u15
    have u22 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n8
    have u23 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n5
    have u24 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v6 := by
      rcases c199 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd u22 a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u20
      · exact a
      · exact absurd a u16
    have u26 : v2 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u24
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
    rcases c776 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd u26 a
    · exact absurd u25 a
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1410 : v36 ∨ v1 ∨ v15 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : v2 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd n10 a
      · exact absurd a n11
    have u3 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n2
    have u4 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v6 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n9
      · exact a
      · exact absurd a n13
      · exact absurd a n6
    have u9 : ¬v7 := by
      rcases c199 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n14
      · exact a
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
    have u10 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u8 a
      · exact a
    rcases c1136 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u11
  have c1411 : v29 ∨ v1 ∨ v15 ∨ v22 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v46 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n13 a
    have u2 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n13 a
      · exact a
    have u3 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : v35 := by
      rcases c1409 with a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : v36 := by
      rcases c1410 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v28 := by
      rcases c945 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a u6
    have u8 : v19 := by
      rcases c1111 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n16
    · exact absurd a n17
  have c1412 : v27 ∨ v15 ∨ v22 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v1 := by
      rcases c1396 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v35 := by
      rcases c1409 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v37 := by
      rcases c1411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u9
      · exact a
      · exact absurd a n1
    have u20 : v28 := by
      rcases c921 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u18
    have u21 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : v19 := by
      rcases c1111 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
    have u26 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd u20 a
      · exact absurd u2 a
      · exact a
    have u27 : ¬v24 := by
      rcases c111 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u2 a
    have u28 : ¬v18 := by
      rcases c643 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u26
    have u29 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u25 a
    have u31 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n4
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u11
      · exact absurd a u13
    rcases c688 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd u31 a
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a u30
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1413 : ¬v28 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v26 ∨ v27 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd n0 a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v24 := by
      rcases c111 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n6 a
    have u3 : ¬v32 := by
      rcases c906 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v33 := by
      rcases c465 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u4 a
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n4
  have c1414 : v36 ∨ v2 ∨ v4 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v15 := by
      rcases c1412 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v8 := by
      rcases c1334 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
    have u10 : v25 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u10 a
    have u15 : ¬v3 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u13
      · exact absurd a n2
    have u16 : v31 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a n10
      · exact a
      · exact absurd a u5
    have u17 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u16 a
    rcases c344 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd a u1
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n10
  have c1415 : v38 ∨ v1 ∨ v22 ∨ v27 ∨ ¬v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v15 := by
      rcases c1412 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v28 := by
      rcases c1413 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u5
    have u17 : v8 := by
      rcases c1334 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u16
    have u18 : ¬v13 := by
      rcases c1144 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u16
    have u19 : ¬v35 := by
      rcases c946 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u4
    have u20 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u17 a
      · exact a
    have u24 : ¬v34 := by
      rcases c943 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
    have u25 : v6 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u26 : ¬v2 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd u25 a
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u27 : ¬v4 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u28 : ¬v3 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a u27
    have u29 : ¬v29 := by
      rcases c1404 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a u16
      · exact a
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u30 : v32 := by
      rcases c1414 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u29
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u31 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u30 a
      · exact a
    have u33 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u28
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a u31
      · exact absurd a u11
    rcases c771 with a|a|a|a|a|a|a
    · exact absurd u33 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd u8 a
    · exact absurd a u32
    · exact absurd a u31
  have c1416 : v38 ∨ v1 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v15 := by
      rcases c1412 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v13 := by
      rcases c1144 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
    have u8 : v6 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v8 := by
      rcases c1334 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
    have u10 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v2 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v4 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v3 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u15
    have u17 : v37 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n7
    rcases c1415 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd u17 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1417 : v1 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v15 := by
      rcases c1412 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v13 := by
      rcases c1144 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
    have u12 : v8 := by
      rcases c1334 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
    have u13 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v35 := by
      rcases c1416 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v24 := by
      rcases c771 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a u16
      · exact absurd a u15
    have u20 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : v42 := by
      rcases c367 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u14 a
      · exact absurd a n9
      · exact absurd a u21
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n10
    have u23 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n4
    have u24 : v2 := by
      rcases c1261 with a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a n0
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
    rcases c776 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1418 : ¬v34 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    rcases c465 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n6
  have c1419 : ¬v28 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd n0 a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v34 := by
      rcases c1418 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd n6 a
      · exact absurd a n7
    have u3 : v33 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u3 a
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n4
  exact ⟨c1371, c1373, c1374, c1377, c1378, c1379, c1381, c1382, c1387, c1389, c1390, c1391, c1393, c1398, c1405, c1406, c1407, c1412, c1417, c1418, c1419⟩
