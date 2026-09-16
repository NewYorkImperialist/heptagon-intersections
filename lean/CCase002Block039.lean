import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1950-1999 of the 2934-step refutation of ccase002: 107 core clauses and 90 earlier-derived ones give 14 more. -/
theorem CCase002_block039
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20 ∨ ¬v17)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c99 : v16 ∨ v21 ∨ v18 ∨ v20 ∨ v17 ∨ v19)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c121 : v22 ∨ v23 ∨ v25 ∨ v24 ∨ v28 ∨ v26 ∨ v27)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c129 : ¬v32 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c145 : ¬v39 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c153 : ¬v42 ∨ ¬v37)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c167 : ¬v47 ∨ ¬v43)
    (c172 : ¬v44 ∨ ¬v47)
    (c176 : ¬v45 ∨ ¬v47)
    (c179 : ¬v46 ∨ ¬v47)
    (c183 : ¬v49 ∨ ¬v47)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c205 : ¬v27 ∨ v20 ∨ v35 ∨ v26 ∨ v33 ∨ v34 ∨ v28 ∨ v21)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c221 : ¬v25 ∨ v32 ∨ v18 ∨ v33 ∨ v31 ∨ v26 ∨ v24 ∨ v19)
    (c223 : ¬v47 ∨ v36 ∨ v40 ∨ v12 ∨ v4 ∨ v11 ∨ v1 ∨ v46 ∨ v41 ∨ v43 ∨ v5 ∨ v13 ∨ v48 ∨ v49)
    (c258 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ v30 ∨ v28 ∨ ¬v29 ∨ v23)
    (c271 : v36 ∨ ¬v16 ∨ v28 ∨ v24 ∨ v23 ∨ v8 ∨ v17 ∨ v38 ∨ v9 ∨ v30 ∨ v21 ∨ v15 ∨ v14 ∨ v37)
    (c315 : ¬v25 ∨ v32 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v17 ∨ v31)
    (c348 : v43 ∨ ¬v2 ∨ v1 ∨ v3 ∨ v9 ∨ v44 ∨ v45 ∨ v10)
    (c363 : v16 ∨ v44 ∨ v17 ∨ v3 ∨ v45 ∨ v4 ∨ v7 ∨ v9 ∨ v14 ∨ v8 ∨ ¬v10 ∨ v11 ∨ v21 ∨ v46)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c376 : v43 ∨ ¬v2 ∨ v44 ∨ v45 ∨ v3 ∨ v1 ∨ v9 ∨ v8)
    (c384 : v36 ∨ v22 ∨ v37 ∨ v23 ∨ v42 ∨ v35 ∨ v30 ∨ ¬v29)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c436 : ¬v8 ∨ v9 ∨ v21 ∨ v2 ∨ v14 ∨ v16 ∨ v1 ∨ v15)
    (c466 : v19 ∨ v10 ∨ v17 ∨ v4 ∨ v18 ∨ v5 ∨ v12 ∨ ¬v11)
    (c468 : ¬v47 ∨ v41 ∨ v39 ∨ v4 ∨ v48 ∨ v5 ∨ v46 ∨ v40)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c538 : ¬v24 ∨ v31 ∨ v16 ∨ v32 ∨ v30 ∨ v25 ∨ v17 ∨ v23)
    (c582 : v19 ∨ v4 ∨ v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c591 : v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c607 : v9 ∨ ¬v5 ∨ ¬v6 ∨ ¬v18 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c639 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c679 : ¬v6 ∨ ¬v11 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c689 : v44 ∨ v4 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c759 : v8 ∨ v1 ∨ v6 ∨ v7 ∨ ¬v14 ∨ v15 ∨ v21)
    (c760 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v21)
    (c769 : v18 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49)
    (c891 : v6 ∨ v13 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c903 : ¬v24 ∨ ¬v29 ∨ v36 ∨ v42)
    (c1046 : v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v26 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1142 : ¬v25 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1143 : ¬v27 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1227 : v17 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1331 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1350 : v29 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v42 ∨ v49)
    (c1373 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1415 : ¬v42 ∨ v1 ∨ v6 ∨ v7 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v43 ∨ v46 ∨ v49)
    (c1465 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v49)
    (c1470 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v39 ∨ v45)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1610 : ¬v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c1614 : v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ ¬v32)
    (c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35)
    (c1774 : ¬v3 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1798 : ¬v17 ∨ ¬v16 ∨ ¬v27 ∨ v34)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1864 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1974 : ¬v33 ∨ v15 ∨ v16 ∨ ¬v22)
    (c1994 : ¬v8 ∨ v1 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v43 ∨ v48 ∨ v49)
    (c2003 : ¬v21 ∨ v8 ∨ v15 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2013 : ¬v19 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c2015 : ¬v34 ∨ v15 ∨ v21 ∨ ¬v22)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2021 : ¬v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c2037 : v8 ∨ v15 ∨ ¬v16 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2066 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c2070 : ¬v26 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v33)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2126 : ¬v24 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32)
    (c2141 : v9 ∨ v2 ∨ v16 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2201 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2228 : v27 ∨ v13 ∨ ¬v17 ∨ ¬v20)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2312 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2354 : ¬v5 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2386 : ¬v1 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v49)
    (c2390 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v33)
    (c2391 : v47 ∨ v48 ∨ v49)
    (c2414 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2422 : v4 ∨ v5 ∨ v6 ∨ v40 ∨ v46 ∨ ¬v47 ∨ v48)
    (c2439 : v39 ∨ ¬v1 ∨ v8 ∨ v15 ∨ v19 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v43 ∨ v44 ∨ v46 ∨ v49)
    (c2440 : v21 ∨ v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ v29)
    (c2448 : v23 ∨ v1 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v24 ∨ v25 ∨ v48 ∨ v49)
    (c2453 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v40 ∨ ¬v47 ∨ v48)
    (c2454 : ¬v6 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2460 : v17 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46)
    (c2464 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2465 : ¬v4 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v16 ∨ v48 ∨ v49)
    (c2474 : ¬v1 ∨ ¬v4 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2475 : ¬v7 ∨ v1 ∨ ¬v4 ∨ v14 ∨ v48 ∨ v49)
    (c2484 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v23)
    (c2485 : ¬v20 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2489 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v45 ∨ v46)
    (c2491 : v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2502 : v19 ∨ v9 ∨ v15 ∨ v23 ∨ v28 ∨ v29 ∨ v48 ∨ v49)
    (c2504 : v19 ∨ v9 ∨ v15 ∨ v23 ∨ v29 ∨ v48 ∨ v49)
    (c2516 : v6 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v48 ∨ v49)
    (c2520 : v40 ∨ ¬v1 ∨ v6 ∨ v8 ∨ v48 ∨ v49)
    (c2526 : v22 ∨ v9 ∨ v15 ∨ ¬v16 ∨ ¬v19 ∨ v23)
    (c2527 : v22 ∨ v8 ∨ v9 ∨ v15 ∨ v23 ∨ v24 ∨ v29 ∨ v48 ∨ v49)
    (c2528 : ¬v8 ∨ v9 ∨ v15 ∨ v22 ∨ v23 ∨ v29 ∨ v48 ∨ v49)
    : (v14 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v21 ∨ v44 ∨ v45 ∨ v46) ∧ (v21 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v9 ∨ v15 ∨ ¬v19 ∨ v23 ∨ v24) ∧ (v13 ∨ v15 ∨ ¬v16 ∨ ¬v17 ∨ v19 ∨ v21 ∨ v24 ∨ ¬v29 ∨ v48 ∨ v49) ∧ (¬v8 ∨ v1 ∨ v15 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v27 ∨ v28 ∨ v48 ∨ v49) ∧ (v15 ∨ v9 ∨ v23 ∨ v48 ∨ v49) ∧ (v4 ∨ ¬v15 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46) ∧ (¬v2 ∨ v4 ∨ v9 ∨ ¬v15 ∨ v17 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v4 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45) ∧ (v16 ∨ v9 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v48 ∨ v49) ∧ (v25 ∨ v9 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49) ∧ (v17 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28) ∧ (v4 ∨ ¬v2 ∨ v9 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v44 ∨ v45 ∨ v46) := by
  have c2529 : v22 ∨ v9 ∨ v15 ∨ v23 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
    have u5 : ¬v8 := by
      rcases c2528 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n0
    have u7 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
    have u8 : v19 := by
      rcases c2504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v16 := by
      rcases c2526 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd u8 a
      · exact absurd a n3
    have u10 : v24 := by
      rcases c2527 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c2516 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd u8 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd u10 a
    · exact absurd a n5
    · exact absurd a n6
  have c2530 : v29 ∨ v9 ∨ v15 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v22 := by
      rcases c2529 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v19 := by
      rcases c2502 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v16 := by
      rcases c2013 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u9 : v21 := by
      rcases c2440 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a n0
    have u10 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u7 a
    have u11 : v8 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
    have u12 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u7 a
    rcases c654 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd u7 a
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u3
  have c2531 : v17 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v24 ∨ v31 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n7
    have u8 : v1 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    rcases c2312 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
  have c2532 : v14 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v21 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n6 a
    rcases c363 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd n6 a
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n12
  have c2533 : v16 ∨ ¬v1 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v17 ∨ v21 ∨ v24 ∨ v31 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n8
    have u9 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    rcases c2532 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd u8 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c2534 : ¬v19 ∨ ¬v2 ∨ v9 ∨ v15 ∨ v16 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v8 := by
      rcases c2531 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v21 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v1 := by
      rcases c2533 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u10 : v3 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u3
    have u11 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
    have u13 : ¬v14 := by
      rcases c759 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a u8
    have u14 : ¬v42 := by
      rcases c1415 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n17
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n13
    · exact absurd a n9
    · exact absurd a n17
    · exact absurd a u14
  have c2535 : v21 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n7
    rcases c760 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
  have c2536 : v25 ∨ v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v22 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n10
      · exact a
    have u5 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u15 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u13
      · exact a
      · exact absurd a u8
      · exact absurd a u7
    have u16 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v19 := by
      rcases c2534 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
    have u18 : v3 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u16 a
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
    have u19 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u16 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u16 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u18 a
    have u23 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n11
    have u24 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v21 := by
      rcases c2535 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u25
      · exact absurd a n12
    have u27 : v11 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u19
      · exact a
      · exact absurd u26 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u6
    have u28 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : v20 := by
      rcases c1197 with a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a n4
      · exact a
      · exact absurd u26 a
      · exact absurd a n9
      · exact absurd a n10
    have u32 : ¬v17 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u21
      · exact absurd a u30
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a n11
    have u33 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u31 a
    rcases c466 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u28
    · exact absurd a u32
    · exact absurd a u19
    · exact absurd a u33
    · exact absurd a u20
    · exact absurd a u29
    · exact absurd u27 a
  have c2537 : v27 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v22 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n9
      · exact a
    have u5 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u1 a
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u15 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u13
      · exact a
      · exact absurd a u8
      · exact absurd a u7
    have u16 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v19 := by
      rcases c2534 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n10
      · exact absurd a n11
    have u19 : v1 := by
      rcases c2536 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v3 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    have u21 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u19 a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u16 a
      · exact absurd u19 a
      · exact a
    have u23 : v40 := by
      rcases c2453 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd u19 a
      · exact absurd a u21
      · exact a
      · exact absurd u2 a
      · exact absurd a n10
    have u24 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u19 a
      · exact absurd u16 a
      · exact a
    have u25 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v21 := by
      rcases c2439 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u19 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u18
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n11
    have u28 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u24
      · exact a
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u26
    have u29 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u28 a
    have u33 : v17 := by
      rcases c2460 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u31
      · exact absurd a u29
      · exact absurd a u32
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    rcases c1046 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u30
    · exact absurd u33 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u12
    · exact absurd a u25
    · exact absurd a n10
  have c2538 : v16 ∨ v9 ∨ v15 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v22 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n8
      · exact a
    have u5 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u1 a
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u15 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u13
      · exact a
      · exact absurd a u8
      · exact absurd a u7
    have u16 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u17 : v8 := by
      rcases c2537 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v19 := by
      rcases c2534 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n10
    have u24 : ¬v4 := by
      rcases c2465 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u25 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u24
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u4
    have u26 : v17 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u22
    have u27 : v1 := by
      rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u28 : ¬v6 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a n10
    have u29 : v40 := by
      rcases c2453 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd u27 a
      · exact absurd a u24
      · exact a
      · exact absurd u2 a
      · exact absurd a n9
    have u30 : v41 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u28
      · exact absurd a u19
      · exact absurd u26 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u12
      · exact a
      · exact absurd a n9
    rcases c161 with a|a
    · exact absurd u30 a
    · exact absurd u29 a
  have c2539 : ¬v8 ∨ ¬v1 ∨ ¬v16 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v4 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n5
    have u8 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n6
    rcases c73 with a|a|a
    · exact absurd n2 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c2540 : ¬v1 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v19 := by
      rcases c2013 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v20 := by
      rcases c2485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v22 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v8 := by
      rcases c2539 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v21 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n14
    have u13 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd u3 a
    have u14 : ¬v13 := by
      rcases c2386 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n14
    have u15 : v40 := by
      rcases c2520 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a n14
    have u16 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a u13
    rcases c161 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c2541 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2414 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c2542 : v21 ∨ v1 ∨ v6 ∨ v8 ∨ v9 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v7 := by
      rcases c2535 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n12
    have u10 : v14 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd u9 a
      · exact a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v20 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n11
    have u14 : v17 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    rcases c75 with a|a|a
    · exact absurd n6 a
    · exact absurd u13 a
    · exact absurd u14 a
  have c2543 : ¬v16 ∨ v4 ∨ ¬v7 ∨ ¬v14 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v17 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    rcases c73 with a|a|a
    · exact absurd n0 a
    · exact absurd u6 a
    · exact absurd u4 a
  have c2544 : v19 ∨ ¬v6 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v15 ∨ ¬v16 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v49 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n18 a
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd n18 a
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n18 a
    have u6 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n19
      · exact absurd a u3
    have u7 : v40 := by
      rcases c468 with a|a|a|a|a|a|a|a
      · exact absurd n18 a
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a u1
      · exact absurd a n19
      · exact absurd a u2
      · exact absurd a u4
      · exact a
    have u8 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v26 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n0
      · exact absurd a u8
    have u14 : ¬v27 := by
      rcases c1143 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n14
    have u15 : ¬v20 := by
      rcases c2485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n11
    have u16 : ¬v14 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd n2 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u5
      · exact absurd a u4
    have u17 : v17 := by
      rcases c271 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n6 a
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n14
    have u18 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n6 a
      · exact absurd u17 a
      · exact a
    have u19 : v13 := by
      rcases c769 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n19
      · exact absurd a u3
    have u20 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n13
    rcases c52 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c2545 : ¬v16 ∨ v1 ∨ v8 ∨ v9 ∨ v15 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
    have u14 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u15 : ¬v26 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a u7
    have u16 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
    have u19 : v6 := by
      rcases c2542 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v7 := by
      rcases c2544 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u19 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd a n11
    have u21 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u20
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u18
    have u22 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v20 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd u21 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
    have u25 : v17 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u23
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    rcases c75 with a|a|a
    · exact absurd n0 a
    · exact absurd u24 a
    · exact absurd u25 a
  have c2546 : ¬v16 ∨ v1 ∨ v8 ∨ v9 ∨ v15 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v26 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a u2
    have u4 : v28 := by
      rcases c2545 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v20 := by
      rcases c2021 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd u4 a
    rcases c1281 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a u6
  have c2547 : ¬v16 ∨ v9 ∨ v15 ∨ ¬v19 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v22 := by
      rcases c2526 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd a n4
    have u2 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    rcases c2013 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
  have c2548 : ¬v21 ∨ v8 ∨ v9 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a n5
    have u4 : v22 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v10 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
    have u6 : ¬v27 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u5 a
      · exact a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u3
  have c2549 : ¬v16 ∨ v1 ∨ v8 ∨ v9 ∨ v15 ∨ v23 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c2547 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v26 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u3
    have u9 : ¬v21 := by
      rcases c2548 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u10 : v25 := by
      rcases c2546 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : v18 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u6
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u1
    have u13 : v17 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    rcases c73 with a|a|a
    · exact absurd n0 a
    · exact absurd u13 a
    · exact absurd u12 a
  have c2550 : v13 ∨ v15 ∨ ¬v16 ∨ ¬v17 ∨ v19 ∨ v21 ∨ v24 ∨ ¬v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n7 a
    have u7 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n7 a
    have u8 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
    have u10 : ¬v28 := by
      rcases c2021 with a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact a
    have u11 : ¬v27 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n5
    have u12 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v25 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n4
    have u17 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u13
    have u18 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
    rcases c769 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a n8
    · exact absurd a n9
  have c2551 : v49 ∨ ¬v8 ∨ v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
    have u2 : v22 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
    have u6 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
    have u7 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u6 a
    have u17 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u6 a
    have u18 : ¬v20 := by
      rcases c2485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u19 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
      · exact a
      · exact absurd a u17
      · exact absurd a u16
    have u20 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n0
    have u21 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u15
    have u22 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u13
    rcases c2338 with a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd u21 a
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u17
    · exact absurd a u16
  have c2552 : v15 ∨ ¬v8 ∨ v9 ∨ ¬v16 ∨ v19 ∨ v23 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v17 := by
      rcases c2551 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v21 := by
      rcases c2550 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd u3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    rcases c76 with a|a|a
    · exact absurd n3 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2553 : ¬v16 ∨ v1 ∨ v9 ∨ v15 ∨ v23 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c2547 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v8 := by
      rcases c2552 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c2549 with a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2554 : v48 ∨ v1 ∨ v8 ∨ v9 ∨ v15 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c2553 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u2 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u4 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u15 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n7
    have u16 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n7
    have u17 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
    have u18 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u19 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u20 : v3 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u18 a
      · exact absurd a u12
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
    have u21 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u18 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u20 a
    have u23 : v40 := by
      rcases c468 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u10
      · exact a
    have u24 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v25 := by
      rcases c1142 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u19
    have u26 : ¬v27 := by
      rcases c1143 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u19
    have u27 : v22 := by
      rcases c384 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd u2 a
    have u28 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u27 a
      · exact a
    rcases c2538 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u25
    · exact absurd a u28
    · exact absurd a u26
    · exact absurd a u29
    · exact absurd a n0
    · exact absurd a n7
  have c2555 : v24 ∨ v1 ∨ v9 ∨ v15 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
    have u16 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u17 : ¬v16 := by
      rcases c2553 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u11
      · exact a
    have u19 : v8 := by
      rcases c2554 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u20 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : v3 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u18 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u23
    have u25 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u18 a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u24 a
    have u27 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u18 a
      · exact absurd u24 a
      · exact a
    have u29 : v21 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u17
      · exact a
    have u30 : v40 := by
      rcases c468 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a n5
      · exact absurd a u27
      · exact absurd a u9
      · exact a
    have u31 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v25 := by
      rcases c1142 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a u31
      · exact absurd a u16
    have u33 : ¬v27 := by
      rcases c1143 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a u31
      · exact absurd a u16
    have u34 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u25
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u32
      · exact absurd a u7
    have u35 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u28
      · exact absurd a n5
      · exact a
      · exact absurd a u33
      · exact absurd a u14
      · exact absurd a u6
    rcases c91 with a|a|a
    · exact absurd u34 a
    · exact absurd u29 a
    · exact absurd u35 a
  have c2556 : ¬v8 ∨ v1 ∨ v15 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v20 := by
      rcases c2228 with a|a|a|a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd n4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v21 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u1
    have u8 : v7 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
    have u9 : v2 := by
      rcases c436 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd u8 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n9
  have c2557 : v16 ∨ v1 ∨ v9 ∨ v15 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v24 := by
      rcases c2555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u2 a
    have u14 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u16 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u17 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u18 : v17 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a n4
    have u19 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
    have u21 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u22 : ¬v8 := by
      rcases c2556 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u18 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v36 := by
      rcases c903 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
      · exact absurd a u20
    have u24 : v3 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u21 a
      · exact absurd a u16
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u22
    have u25 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u21 a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u21 a
      · exact absurd u24 a
      · exact a
    rcases c2422 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u25
    · exact absurd a u14
    · exact absurd u3 a
    · exact absurd a n5
  have c2558 : ¬v17 ∨ v1 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v20 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v13 := by
      rcases c769 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n15
      · exact absurd a u6
    have u11 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n9
    rcases c2475 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd u11 a
    · exact absurd a u8
    · exact absurd a n14
    · exact absurd a n15
  have c2559 : v1 ∨ v9 ∨ v15 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u18 : v16 := by
      rcases c2557 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : v24 := by
      rcases c2555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : v36 := by
      rcases c903 with a|a|a|a
      · exact absurd u19 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u16
    have u26 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v19 := by
      rcases c2526 with a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u18 a
      · exact a
      · exact absurd a n3
    have u28 : ¬v20 := by
      rcases c2485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u18 a
      · exact absurd a u27
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u22
    have u29 : ¬v17 := by
      rcases c2558 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u18 a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u30 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u18 a
      · exact absurd a u29
      · exact absurd a n3
    have u31 : v18 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a n2
      · exact absurd u18 a
      · exact a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u22
    have u32 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd a n4
      · exact absurd a u28
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u6
    have u33 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v5 := by
      rcases c607 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u32 a
      · exact absurd u31 a
      · exact absurd a u33
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n5
    have u35 : v4 := by
      rcases c468 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u13
      · exact absurd a u14
      · exact a
      · exact absurd a n4
      · exact absurd a u34
      · exact absurd a u9
      · exact absurd a u26
    have u36 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd u35 a
      · exact absurd u32 a
      · exact a
    have u37 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u33
      · exact absurd a u36
      · exact a
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a u16
    rcases c639 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u36
    · exact absurd a u30
    · exact absurd u37 a
    · exact absurd a n2
    · exact absurd a u28
    · exact absurd a u33
  have c2560 : ¬v1 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v23 ∨ ¬v24 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v18 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v20 := by
      rcases c78 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u5
    have u16 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u15 a
    have u17 : v8 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u18 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u14
    rcases c41 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c2561 : v49 ∨ v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v23 ∨ v27 ∨ v28 ∨ v38 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v1 := by
      rcases c2559 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n0
    have u3 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v24 := by
      rcases c2560 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n0
    have u7 : ¬v19 := by
      rcases c2547 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a u6
    have u8 : v22 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u6
    have u9 : ¬v26 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u3
    have u10 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u8 a
      · exact a
    rcases c2540 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
  have c2562 : v17 ∨ v9 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v28 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v27 := by
      rcases c2561 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u3
  have c2563 : v28 ∨ v9 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v1 := by
      rcases c2559 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v17 := by
      rcases c2562 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v27 := by
      rcases c1798 with a|a|a|a
      · exact absurd u16 a
      · exact absurd n3 a
      · exact a
      · exact absurd a u7
    have u18 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n3 a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v13 := by
      rcases c2386 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u22 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u7
    have u23 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u22 a
    have u24 : v8 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u25 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u23
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u15
    rcases c41 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  have c2564 : ¬v16 ∨ v9 ∨ v15 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v28 := by
      rcases c2563 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v17 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u6
    have u8 : ¬v20 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
    have u9 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u7 a
    rcases c2021 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd u2 a
  have c2565 : v15 ∨ v9 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v1 := by
      rcases c2559 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v29 := by
      rcases c2530 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u12
      · exact a
      · exact absurd a u3
      · exact absurd a u2
    have u14 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u15 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v16 := by
      rcases c2564 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u3
      · exact a
    have u19 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u5 a
      · exact absurd u18 a
      · exact a
    have u20 : v40 := by
      rcases c2453 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd u5 a
      · exact absurd a u19
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
    have u21 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v25 := by
      rcases c1142 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u14
    have u23 : ¬v27 := by
      rcases c1143 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u14
    have u24 : ¬v24 := by
      rcases c903 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u21
      · exact absurd a u16
    have u25 : v22 := by
      rcases c384 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u6 a
    have u26 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u25 a
      · exact a
    rcases c2538 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u23
    · exact absurd a u27
    · exact absurd a n3
    · exact absurd a n4
  have c2566 : v4 ∨ ¬v15 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u2 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
    rcases c47 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c2567 : ¬v1 ∨ v9 ∨ ¬v15 ∨ v16 ∨ v23 ∨ v24 ∨ ¬v29 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v49 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n7 a
    have u7 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd n7 a
    have u8 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n7 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n7 a
      · exact a
    have u11 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v3 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
    have u14 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
    have u15 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u16 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n0 a
      · exact absurd u15 a
      · exact a
    have u18 : v40 := by
      rcases c2453 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd n0 a
      · exact absurd a u16
      · exact a
      · exact absurd n7 a
      · exact absurd a n8
    have u19 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v25 := by
      rcases c1142 with a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u12
    have u21 : ¬v17 := by
      rcases c2566 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u7
    have u22 : v10 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u13
      · exact a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u8
    have u23 : v18 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
    have u24 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : v21 := by
      rcases c2532 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd u22 a
      · exact absurd a n3
      · exact absurd a u21
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    rcases c69 with a|a|a
    · exact absurd n2 a
    · exact absurd u26 a
    · exact absurd u23 a
  have c2568 : ¬v2 ∨ v4 ∨ v9 ∨ ¬v15 ∨ v17 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact a
    have u3 : v11 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u4 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
    rcases c466 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd u3 a
  have c2569 : v41 ∨ ¬v2 ∨ v4 ∨ v9 ∨ ¬v15 ∨ v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v21 := by
      rcases c2568 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u7 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n17
      · exact absurd a n18
    have u8 : v18 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n18
    have u9 : v11 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n4 a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v20 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u8 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v6 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n18
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n17
    · exact absurd a u10
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n13
  have c2570 : ¬v4 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c15 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : v8 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact a
    have u3 : v10 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    rcases c37 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c2571 : v16 ∨ v9 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n8 a
    have u7 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u16 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v1 := by
      rcases c2567 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n8 a
      · exact absurd u7 a
      · exact absurd a n9
    have u19 : ¬v4 := by
      rcases c2570 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u20 : v25 := by
      rcases c2569 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u16 a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v18 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u6
    have u23 : v36 := by
      rcases c258 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n3
    have u24 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a n3
    have u27 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u25
    have u31 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a n1
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u11
      · exact absurd a u10
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u31
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u6
  have c2572 : v16 ∨ v9 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
    have u11 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u12 : v17 := by
      rcases c2571 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd u5 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u5 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v25 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u13
    have u16 : v4 := by
      rcases c2566 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u6
    have u17 : v1 := by
      rcases c2570 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    rcases c2 with a|a|a
    · exact absurd u17 a
    · exact absurd u11 a
    · exact absurd u16 a
  have c2573 : v16 ∨ v9 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u14 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : v24 := by
      rcases c2572 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v17 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    have u19 : v36 := by
      rcases c258 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n2
    have u20 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v20 := by
      rcases c65 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a n2
    have u24 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u22
    have u27 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a n7
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u4
    rcases c23 with a|a|a
    · exact absurd u14 a
    · exact absurd u26 a
    · exact absurd u27 a
  have c2574 : v20 ∨ v9 ∨ v14 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ ¬v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd n9 a
      · exact a
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u8 : v7 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n11
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v12 := by
      rcases c1864 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u7
    have u17 : ¬v1 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n11
    have u18 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u8 a
    rcases c223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n10
    · exact absurd a n11
  have c2575 : v22 ∨ ¬v4 ∨ v9 ∨ v11 ∨ v14 ∨ v16 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n12
    have u7 : ¬v1 := by
      rcases c2474 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n12
    have u8 : ¬v2 := by
      rcases c2570 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v7 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v42 := by
      rcases c1350 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u6
      · exact a
      · exact absurd a n12
    have u12 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : v35 := by
      rcases c2201 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n10
      · exact a
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u8
    rcases c132 with a|a
    · exact absurd u13 a
    · exact absurd u14 a
  have c2576 : v25 ∨ v9 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v29 := by
      rcases c2573 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v20 := by
      rcases c65 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u2 a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n3 a
    have u10 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v39 := by
      rcases c2574 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v4 := by
      rcases c2575 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v32 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n0
      · exact a
    have u17 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : v2 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
    have u23 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    have u24 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n9
      · exact absurd a n10
    have u25 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u23
    have u26 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u24
      · exact absurd a u21
    rcases c23 with a|a|a
    · exact absurd u22 a
    · exact absurd u25 a
    · exact absurd u26 a
  have c2577 : v17 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v12 := by
      rcases c1864 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v19 := by
      rcases c1610 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v20 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n8
      · exact a
    have u9 : ¬v18 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
    rcases c99 with a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u3
  have c2578 : v4 ∨ ¬v2 ∨ v9 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v5 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd u1 a
    rcases c729 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n10
  exact ⟨c2532, c2535, c2541, c2547, c2550, c2556, c2565, c2566, c2568, c2570, c2573, c2576, c2577, c2578⟩
