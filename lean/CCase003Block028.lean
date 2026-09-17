import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1400-1449 of the 2559-step refutation of ccase003: 132 core clauses and 89 earlier-derived ones give 17 more. -/
theorem CCase003_block028
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
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
    (c52 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c89 : ¬v22 ∨ ¬v27 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c105 : ¬v28 ∨ ¬v26 ∨ ¬v23)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
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
    (c148 : ¬v39 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c153 : ¬v39 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c169 : ¬v46 ∨ ¬v43)
    (c174 : ¬v46 ∨ ¬v44)
    (c178 : ¬v46 ∨ ¬v45)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c204 : v43 ∨ ¬v8 ∨ v4 ∨ v16 ∨ v7 ∨ v15 ∨ v1 ∨ v14 ∨ v11 ∨ v18 ∨ v9 ∨ v10 ∨ v44 ∨ v49)
    (c213 : ¬v34 ∨ v41 ∨ v42 ∨ v27 ∨ v5 ∨ v26 ∨ v33 ∨ v25 ∨ v7 ∨ v35 ∨ v39 ∨ v32 ∨ v6 ∨ v48)
    (c230 : ¬v46 ∨ v4 ∨ v40 ∨ v45 ∨ v38 ∨ v3 ∨ v39 ∨ v47)
    (c233 : v43 ∨ ¬v36 ∨ v44 ∨ v42 ∨ v30 ∨ v37 ∨ v49 ∨ v29)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c260 : ¬v46 ∨ v39 ∨ v5 ∨ v1 ∨ v4 ∨ v38 ∨ v36 ∨ v11 ∨ v10 ∨ v12 ∨ v43 ∨ v44 ∨ v45 ∨ v47)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c279 : v43 ∨ v44 ∨ ¬v23 ∨ v30 ∨ v17 ∨ v45 ∨ v18 ∨ v22 ∨ v32 ∨ v24 ∨ v16 ∨ v37 ∨ v25 ∨ v29)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c325 : ¬v33 ∨ v40 ∨ v34 ∨ v32 ∨ v41 ∨ v25 ∨ v39 ∨ v26)
    (c331 : ¬v46 ∨ v36 ∨ v3 ∨ v1 ∨ v33 ∨ v32 ∨ v31 ∨ v4 ∨ v39 ∨ v40 ∨ v43 ∨ v44 ∨ v45 ∨ v47)
    (c345 : ¬v34 ∨ v41 ∨ v33 ∨ v27 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c379 : ¬v46 ∨ v4 ∨ v40 ∨ v45 ∨ v38 ∨ v39 ∨ v5 ∨ v47)
    (c399 : ¬v40 ∨ v11 ∨ v39 ∨ v38 ∨ v5 ∨ v47 ∨ v32 ∨ v31 ∨ v33 ∨ v12 ∨ v41 ∨ v45 ∨ v13 ∨ v48)
    (c425 : ¬v33 ∨ v26 ∨ v25 ∨ v28 ∨ v19 ∨ v40 ∨ v35 ∨ v32 ∨ v13 ∨ v34 ∨ v11 ∨ v12 ∨ v41 ∨ v42)
    (c463 : ¬v25 ∨ v24 ∨ v26 ∨ v18 ∨ v31 ∨ v32 ∨ v19 ∨ v17)
    (c517 : ¬v46 ∨ v39 ∨ v5 ∨ v4 ∨ v38 ∨ v3 ∨ v45 ∨ v47)
    (c518 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v44 ∨ v10 ∨ v4)
    (c525 : v43 ∨ v44 ∨ v22 ∨ ¬v15 ∨ v49 ∨ v27 ∨ v21 ∨ v28 ∨ v20 ∨ v1 ∨ v13 ∨ v16 ∨ v9 ∨ v8)
    (c557 : ¬v31 ∨ v38 ∨ v24 ∨ v30 ∨ v32 ∨ v37 ∨ v25 ∨ v23)
    (c562 : v43 ∨ v36 ∨ v37 ∨ v26 ∨ v30 ∨ v49 ∨ v35 ∨ v28 ∨ v34 ∨ v22 ∨ v40 ∨ ¬v29 ∨ v44 ∨ v33)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c594 : v18 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c639 : ¬v18 ∨ v1 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c643 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c648 : ¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c671 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v27)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c739 : ¬v13 ∨ v4 ∨ v5 ∨ v6 ∨ v14 ∨ v18 ∨ v20 ∨ v21 ∨ v27 ∨ v33 ∨ v34 ∨ v35)
    (c771 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v26 ∨ v30 ∨ v31)
    (c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24)
    (c787 : ¬v20 ∨ ¬v24 ∨ ¬v26 ∨ v30 ∨ v31)
    (c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c852 : v28 ∨ v22 ∨ ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c855 : v28 ∨ v19 ∨ v22 ∨ ¬v25 ∨ ¬v35 ∨ v41 ∨ v42)
    (c887 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c897 : v25 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32)
    (c921 : ¬v35 ∨ v22 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c943 : ¬v34 ∨ v27 ∨ v28 ∨ v35 ∨ v40 ∨ v41 ∨ v42)
    (c946 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c1032 : ¬v27 ∨ ¬v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35)
    (c1080 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c1127 : ¬v26 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v32 ∨ v33 ∨ v34)
    (c1134 : ¬v13 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1156 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v48)
    (c1174 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1229 : ¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1232 : ¬v20 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1304 : v43 ∨ ¬v1 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1371 : v33 ∨ ¬v17 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v34)
    (c1373 : ¬v35 ∨ v22 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28)
    (c1374 : ¬v26 ∨ ¬v1 ∨ v8 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1379 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1382 : v14 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1390 : ¬v31 ∨ ¬v26 ∨ v27 ∨ ¬v28)
    (c1405 : v28 ∨ v1 ∨ v6 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1418 : ¬v34 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27)
    (c1483 : ¬v22 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v34)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1674 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v49)
    (c1679 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1700 : ¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ v35 ∨ v36 ∨ v40 ∨ v41)
    (c1713 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40 ∨ v41)
    (c1758 : v49 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v43 ∨ v44 ∨ v47 ∨ v48)
    (c1765 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v28)
    (c1780 : ¬v33 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28)
    (c1789 : v30 ∨ v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v32)
    (c1790 : v23 ∨ v17 ∨ v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32)
    (c1791 : ¬v30 ∨ v19 ∨ ¬v26 ∨ ¬v28)
    (c1837 : v27 ∨ ¬v2 ∨ v6 ∨ v22 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1842 : ¬v6 ∨ v1 ∨ ¬v2 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c1856 : ¬v9 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17)
    (c1857 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1874 : v1 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v29 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    (c1886 : ¬v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1887 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c1902 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c1903 : ¬v31 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v41 ∨ v47 ∨ v48)
    (c1916 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1920 : ¬v25 ∨ ¬v1 ∨ v24 ∨ v47 ∨ v48 ∨ v49)
    (c1927 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c1930 : ¬v40 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v32 ∨ v33 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1935 : v17 ∨ v3 ∨ v4 ∨ v16 ∨ v18 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1937 : ¬v34 ∨ ¬v1 ∨ v24 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1945 : ¬v4 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1947 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1948 : ¬v38 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c1957 : v3 ∨ ¬v1 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1959 : ¬v31 ∨ ¬v1 ∨ v6 ∨ v13 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49)
    (c1961 : ¬v24 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v31)
    (c1972 : ¬v8 ∨ ¬v1 ∨ v4 ∨ v47 ∨ v48 ∨ v49)
    (c1974 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1978 : v19 ∨ ¬v1 ∨ v4 ∨ v24 ∨ v47 ∨ v48 ∨ v49)
    : (¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v24 ∨ v34 ∨ v35) ∧ (¬v22 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31) ∧ (v26 ∨ v5 ∨ v12 ∨ v19 ∨ v25 ∨ v27 ∨ v40 ∨ v41 ∨ v47) ∧ (v32 ∨ v5 ∨ v6 ∨ v7 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v34 ∨ v39 ∨ v41 ∨ v42 ∨ v48) ∧ (¬v42 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47 ∨ v48 ∨ v49) ∧ (v26 ∨ v3 ∨ v5 ∨ v10 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v34 ∨ v41 ∨ v45 ∨ v47 ∨ v48) ∧ (¬v1 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v19 ∨ ¬v24 ∨ ¬v26) ∧ (v33 ∨ v18 ∨ v19 ∨ ¬v24 ∨ ¬v26 ∨ v31) ∧ (¬v26 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v31 ∨ v1 ∨ v8 ∨ ¬v19 ∨ ¬v24 ∨ v43 ∨ v49) ∧ (¬v36 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v19 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v29 ∨ v22 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49) ∧ (v35 ∨ v22 ∨ ¬v24 ∨ ¬v28 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v13 ∨ ¬v15 ∨ v22 ∨ v28) ∧ (¬v35 ∨ v22 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49) := by
  have c1979 : v24 ∨ ¬v1 ∨ v4 ∨ v37 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v19 := by
      rcases c1978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v8 := by
      rcases c1972 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v3 := by
      rcases c1974 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u13 : v31 := by
      rcases c1935 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u8
    have u14 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v23 := by
      rcases c557 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u1
      · exact a
    have u18 : v13 := by
      rcases c1959 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact absurd a u11
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v22 := by
      rcases c279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd u17 a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u14
    have u20 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u17 a
    have u21 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u17 a
    rcases c669 with a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u21
    · exact absurd a u1
    · exact absurd a u20
    · exact absurd a u22
  have c1981 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v24 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v27 := by
      rcases c112 with a|a|a
      · exact absurd n5 a
      · exact absurd n0 a
      · exact a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
  have c1983 : ¬v31 ∨ ¬v1 ∨ v3 ∨ ¬v19 ∨ ¬v24 ∨ v37 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : v13 := by
      rcases c1959 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u10
      · exact a
      · exact absurd n3 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u16 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u17 : v27 := by
      rcases c739 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u18 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd n4 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u17 a
    rcases c648 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u18
    · exact absurd u17 a
    · exact absurd a u19
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c1984 : ¬v22 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a u2
  have c1985 : v23 ∨ ¬v19 ∨ ¬v24 ∨ v31 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v25 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
    have u6 : ¬v22 := by
      rcases c1984 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n3
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v35 := by
      rcases c946 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v29 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u10
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v34 := by
      rcases c1758 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u14 a
      · exact a
    rcases c345 with a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a n6
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a n7
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u9
  have c1986 : ¬v19 ∨ ¬v1 ∨ v3 ∨ v6 ∨ ¬v24 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v23 := by
      rcases c1985 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v22 := by
      rcases c1984 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a u4
    have u7 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u5 a
    have u8 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u5 a
    have u10 : ¬v35 := by
      rcases c852 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd u5 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n4 a
    have u12 : ¬v33 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
    have u14 : v13 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    rcases c56 with a|a
    · exact absurd u13 a
    · exact absurd u14 a
  have c1987 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v25 ∨ v27 ∨ v40 ∨ v41 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n6
    rcases c1713 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1988 : v37 ∨ ¬v1 ∨ v8 ∨ v12 ∨ v19 ∨ v22 ∨ ¬v24 ∨ v25 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n14
    have u5 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v26 := by
      rcases c1987 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u7 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd u6 a
      · exact absurd n6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd u6 a
      · exact absurd a n8
      · exact absurd a u7
    have u10 : ¬v34 := by
      rcases c943 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v2 := by
      rcases c1837 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : v33 := by
      rcases c1374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u13 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
    have u17 : ¬v20 := by
      rcases c787 with a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u6 a
      · exact absurd a u14
      · exact absurd a u13
    have u18 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u14
    have u19 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a n13
      · exact absurd a u10
    rcases c47 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c1989 : v25 ∨ ¬v1 ∨ v8 ∨ v12 ∨ v19 ∨ v22 ∨ ¬v24 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n13
    have u5 : v27 := by
      rcases c1988 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd n6 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v23 := by
      rcases c99 with a|a|a
      · exact absurd u5 a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c1903 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n4
      · exact a
      · exact absurd a n8
    have u10 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n13
    have u15 : v17 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u7
      · exact absurd n6 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u13
    have u16 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u15 a
    rcases c1700 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a n8
    · exact absurd a n9
  have c1990 : v22 ∨ ¬v1 ∨ v8 ∨ v12 ∨ v19 ∨ ¬v24 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n12
    have u5 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v25 := by
      rcases c1989 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n5 a
    have u8 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v35 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd u6 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a n7
    have u13 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v13 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n11
    have u16 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v16 := by
      rcases c1134 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
    have u19 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n12
    have u20 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u2
      · exact a
      · exact absurd a u14
    rcases c5 with a|a|a
    · exact absurd n1 a
    · exact absurd u20 a
    · exact absurd u19 a
  have c1991 : v4 ∨ ¬v1 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c1972 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v3 := by
      rcases c1974 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
    have u7 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
    have u8 : ¬v38 := by
      rcases c1948 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a n2
    have u9 : v39 := by
      rcases c517 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n2
    have u10 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v24 := by
      rcases c1979 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v19 := by
      rcases c1986 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u15
      · exact a
      · exact absurd a u17
    have u19 : v22 := by
      rcases c1990 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v26 := by
      rcases c88 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v27 := by
      rcases c89 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u16 a
    rcases c1987 with a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a n2
  have c1992 : v32 ∨ v5 ∨ v6 ∨ v7 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v34 ∨ v39 ∨ v41 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n7 a
      · exact a
    rcases c213 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n11
  have c1993 : v27 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v25 ∨ v26 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v40 := by
      rcases c1987 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
    have u3 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v34 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n12
      · exact a
    have u6 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1992 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a u3
    · exact absurd a n12
  have c1994 : v47 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v27 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v26 := by
      rcases c1993 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u4 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v22 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n8 a
    have u6 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd u3 a
      · exact absurd n8 a
      · exact a
    have u7 : ¬v35 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a u4
    have u8 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u4
    have u9 : v42 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a n13
    have u10 : v34 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n12
      · exact a
    have u11 : v29 := by
      rcases c1642 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
    rcases c128 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c1995 : ¬v42 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u1
  have c1996 : v40 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v25 ∨ v26 ∨ v28 ∨ v41 ∨ v42 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n5
      · exact a
      · exact absurd a n0
    have u2 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    rcases c425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n10
  have c1997 : ¬v33 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v25 ∨ ¬v27 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v23 := by
      rcases c99 with a|a|a
      · exact absurd n5 a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u3
    rcases c827 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u5
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
  have c1998 : ¬v24 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v25 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v27 := by
      rcases c1994 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd n0 a
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v42 := by
      rcases c1995 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v31 := by
      rcases c1903 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v40 := by
      rcases c1996 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a n13
    have u11 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v33 := by
      rcases c1997 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n11
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a u3
    have u14 : v32 := by
      rcases c399 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n13
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n14
    have u15 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u14 a
    rcases c1032 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u15
  have c1999 : v26 ∨ v3 ∨ v5 ∨ v10 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v34 ∨ v41 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v31 := by
      rcases c1903 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n5
    have u3 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n7
      · exact a
      · exact absurd a u4
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v25 := by
      rcases c463 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n5
    rcases c325 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n0
  have c2000 : v24 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v19 ∨ ¬v26 ∨ ¬v27 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n6 a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u3 : v4 := by
      rcases c1991 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
    have u5 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    rcases c1957 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2001 : v25 ∨ ¬v1 ∨ v19 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v4 := by
      rcases c1991 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v6 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u12 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v24 := by
      rcases c1998 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v34 := by
      rcases c1937 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v18 := by
      rcases c643 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a n0
    have u21 : ¬v17 := by
      rcases c1080 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n0
    have u22 : v26 := by
      rcases c1999 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v27 := by
      rcases c2000 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd u22 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u19
    have u25 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : v28 := by
      rcases c618 with a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u23
      · exact a
    have u27 : ¬v23 := by
      rcases c105 with a|a|a
      · exact absurd u26 a
      · exact absurd u22 a
      · exact a
    have u28 : ¬v30 := by
      rcases c1791 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u22 a
      · exact absurd u26 a
    have u29 : ¬v31 := by
      rcases c1390 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u23
      · exact absurd u26 a
    have u30 : v37 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u28
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    rcases c1941 with a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
  have c2002 : v19 ∨ ¬v1 ∨ v12 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v4 := by
      rcases c1991 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u5
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u9 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v25 := by
      rcases c2001 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : v24 := by
      rcases c1920 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    have u13 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
    have u17 : ¬v42 := by
      rcases c1995 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v35 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u14
    rcases c855 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd u10 a
    · exact absurd u18 a
    · exact absurd a n3
    · exact absurd a u17
  have c2003 : v41 ∨ ¬v1 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v4 := by
      rcases c1991 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v6 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u6
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u11 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : v19 := by
      rcases c2002 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u20 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v31 := by
      rcases c1959 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v24 := by
      rcases c1961 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd u16 a
      · exact absurd a u22
    have u24 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u4
      · exact a
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u19
    have u25 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v34 := by
      rcases c1937 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u28 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u14
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u27
    have u29 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd u28 a
      · exact absurd a u27
    have u30 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u31 : v26 := by
      rcases c1491 with a|a|a|a
      · exact absurd u10 a
      · exact absurd u16 a
      · exact absurd a u30
      · exact a
    have u32 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u31 a
    have u33 : ¬v35 := by
      rcases c921 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u32
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd a u25
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u33
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd a n4
    · exact absurd a u25
    · exact absurd a u32
  have c2004 : v24 ∨ ¬v1 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v4 := by
      rcases c1991 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v41 := by
      rcases c2003 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v34 := by
      rcases c1916 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u7
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
    have u16 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u11 a
      · exact a
    have u19 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u15 a
      · exact a
    have u23 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u15 a
      · exact a
    have u24 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u17
      · exact a
    have u25 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : v25 := by
      rcases c1080 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a n0
      · exact a
    have u29 : v28 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a n4
      · exact absurd a u8
      · exact a
    have u30 : v26 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u27
      · exact absurd a u18
      · exact absurd a u9
    rcases c114 with a|a|a
    · exact absurd u29 a
    · exact absurd u30 a
    · exact absurd u28 a
  have c2005 : ¬v1 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v24 := by
      rcases c2004 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v41 := by
      rcases c2003 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v34 := by
      rcases c1916 with a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v4 := by
      rcases c1991 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u12 a
    have u16 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n0 a
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
    have u17 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v19 := by
      rcases c1961 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u20
      · exact a
      · exact absurd a u10
    have u22 : v26 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u7
    have u23 : ¬v22 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u4 a
    have u24 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u22 a
    rcases c1382 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n3
  have c2006 : ¬v34 ∨ v19 ∨ ¬v24 ∨ ¬v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u5 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v25 := by
      rcases c107 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v20 := by
      rcases c787 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u2
    have u10 : v17 := by
      rcases c1790 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
    have u11 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u10 a
    rcases c1418 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd n3 a
    · exact absurd a u8
  have c2007 : ¬v18 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v28 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v7 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u9 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u10 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u11 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u12 : ¬v38 := by
      rcases c1948 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd a n7
    have u13 : v39 := by
      rcases c517 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n7
    have u14 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v29 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1177 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd u16 a
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a u15
  have c2008 : v33 ∨ v18 ∨ v19 ∨ ¬v24 ∨ ¬v26 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c107 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v34 := by
      rcases c2006 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
    have u4 : v32 := by
      rcases c1127 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a u3
    have u5 : ¬v17 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u3
    have u6 : v20 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
    have u7 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v16 := by
      rcases c771 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a u7
      · exact absurd a n5
    rcases c69 with a|a
    · exact absurd u8 a
    · exact absurd u6 a
  have c2009 : v31 ∨ v19 ∨ ¬v24 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v25 := by
      rcases c107 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v22 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u7 : ¬v34 := by
      rcases c2006 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n3 a
    have u8 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v35 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a u2
    have u13 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : v6 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v2 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u8
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v18 := by
      rcases c2007 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v33 := by
      rcases c2008 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n0
    have u19 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u23 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u24 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u21
    have u25 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u11
    have u26 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u23
      · exact absurd a u24
      · exact a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u20
    rcases c38 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c2010 : v19 ∨ ¬v24 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c2006 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v25 := by
      rcases c107 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : v31 := by
      rcases c2009 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u3 a
      · exact a
    rcases c1127 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u1
  have c2011 : ¬v26 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c107 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v22 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u6 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v35 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u6
    have u10 : v19 := by
      rcases c2010 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : v31 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u3
    have u17 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v36 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u17
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
    rcases c1331 with a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n4
  have c2012 : ¬v31 ∨ v1 ∨ v8 ∨ ¬v19 ∨ ¬v24 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : v22 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u5 a
    rcases c847 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u5 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
  have c2013 : v29 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v30 ∨ v31 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : v36 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v42 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u7 a
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n0
    rcases c151 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c2014 : v30 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : v29 := by
      rcases c2013 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
    have u13 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
    have u15 : v6 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n13
    have u17 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
    have u18 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
    have u19 : v36 := by
      rcases c562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u11
    have u20 : v39 := by
      rcases c379 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u12
      · exact a
      · exact absurd a u17
      · exact absurd a n12
    rcases c148 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c2015 : v25 ∨ ¬v19 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c2011 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u1
    have u11 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u1
    have u12 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v31 := by
      rcases c2012 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u13
      · exact absurd a n5
    have u15 : ¬v22 := by
      rcases c1984 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd n2 a
      · exact absurd a u14
    have u16 : v23 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
    have u17 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n2 a
    have u18 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u16 a
    have u19 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u18
    have u20 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u19
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u18
    have u21 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : v30 := by
      rcases c2014 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u3
    have u26 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    rcases c1663 with a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u26
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n5
  have c2016 : ¬v30 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1758 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n8
  have c2017 : ¬v36 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n0 a
    rcases c233 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
  have c2018 : v29 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v30 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v36 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u5 a
    rcases c233 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u5 a
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n0
  have c2019 : ¬v19 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u4 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v26 := by
      rcases c2011 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v25 := by
      rcases c2015 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u14 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u15 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v30 := by
      rcases c2016 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : v29 := by
      rcases c2018 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : v6 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u7
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v2 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u24 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u1
      · exact a
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u16
    rcases c1856 with a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u7
    · exact absurd a u23
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c2020 : ¬v7 ∨ ¬v6 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n5 a
      · exact a
    rcases c517 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n6
  have c2021 : v39 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v6 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v2 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v7 := by
      rcases c2020 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd u2 a
      · exact absurd a n8
    have u11 : v14 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n10
    have u12 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v4 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : v3 := by
      rcases c230 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a u17
  have c2022 : v22 ∨ ¬v24 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v37 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v26 := by
      rcases c2011 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v27 := by
      rcases c1032 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v36 := by
      rcases c562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd n3 a
      · exact absurd a u10
      · exact absurd a u5
    have u14 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u13 a
    rcases c2021 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2023 : ¬v29 ∨ v22 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
    have u12 : v28 := by
      rcases c2022 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n2 a
    have u14 : ¬v25 := by
      rcases c109 with a|a|a
      · exact absurd n2 a
      · exact absurd u12 a
      · exact a
    have u15 : v17 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u13
      · exact absurd n2 a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u2
    have u16 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u15 a
    rcases c1981 with a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u4
    · exact absurd a u5
  have c2024 : ¬v34 ∨ v17 ∨ ¬v24 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u5 : ¬v25 := by
      rcases c109 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    rcases c1789 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd n2 a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u3
  have c2025 : v35 ∨ v22 ∨ ¬v24 ∨ ¬v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c112 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v25 := by
      rcases c109 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v29 := by
      rcases c2023 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v26 := by
      rcases c2011 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v19 := by
      rcases c2019 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v33 := by
      rcases c1780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd n3 a
    have u10 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a n0
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u15 : ¬v34 := by
      rcases c2024 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd n2 a
      · exact absurd n3 a
    have u16 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a n0
    have u18 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u15
      · exact absurd a n0
    have u19 : v21 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u15
      · exact a
    have u20 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v31 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u2
    have u23 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u4
      · exact a
      · exact absurd a u21
    have u24 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u23 a
      · exact a
    have u29 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u23 a
      · exact a
    have u30 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u23 a
      · exact a
    have u31 : ¬v40 := by
      rcases c1930 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u32 : v5 := by
      rcases c1903 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u33 : ¬v4 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u31
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u34 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u15
    have u35 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u34 a
    rcases c204 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u23 a
    · exact absurd a u33
    · exact absurd a u20
    · exact absurd a u35
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a u27
    · exact absurd a u25
    · exact absurd a u18
    · exact absurd a u28
    · exact absurd a u30
    · exact absurd a u11
    · exact absurd a n6
  have c2026 : ¬v28 ∨ v22 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v35 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v25 := by
      rcases c109 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : ¬v27 := by
      rcases c112 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v29 := by
      rcases c2023 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v26 := by
      rcases c2011 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    have u13 : v17 := by
      rcases c897 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    have u14 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u20 : v36 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    rcases c2017 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n5
  have c2027 : ¬v8 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n7 a
    have u7 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n7 a
      · exact a
    have u8 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v5 := by
      rcases c1995 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v4 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n9
    have u13 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u12 a
    rcases c230 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a n8
  have c2028 : ¬v13 ∨ ¬v15 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n1 a
      · exact a
    rcases c1765 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
  have c2029 : v27 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v38 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n12 a
    have u3 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v8 := by
      rcases c2027 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n12 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u9
      · exact a
    have u11 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v13 := by
      rcases c2028 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a n4
    have u15 : v9 := by
      rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd u10 a
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u11
      · exact a
      · exact absurd a u9
    have u16 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n14
      · exact absurd a n9
    have u17 : ¬v4 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u18 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : v5 := by
      rcases c260 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u22 : v3 := by
      rcases c331 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n10
      · exact a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    rcases c27 with a|a|a
    · exact absurd u21 a
    · exact absurd u22 a
    · exact absurd u16 a
  have c2030 : ¬v35 ∨ v22 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v26 := by
      rcases c2011 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v19 := by
      rcases c2019 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
    have u17 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
    have u18 : ¬v28 := by
      rcases c2026 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : v42 := by
      rcases c921 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u11
      · exact a
    have u20 : v27 := by
      rcases c2029 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u19 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v25 := by
      rcases c108 with a|a|a
      · exact absurd n2 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v23 := by
      rcases c99 with a|a|a
      · exact absurd u20 a
      · exact absurd n2 a
      · exact a
    have u23 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd n2 a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
    have u24 : v17 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u22
      · exact absurd n2 a
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u6
    have u25 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u24 a
    rcases c1874 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u26
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd a n5
  exact ⟨c1981, c1984, c1987, c1992, c1995, c1999, c2005, c2006, c2008, c2011, c2012, c2017, c2019, c2023, c2025, c2028, c2030⟩
