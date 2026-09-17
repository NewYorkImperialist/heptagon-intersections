import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1450-1499 of the 2559-step refutation of ccase003: 139 core clauses and 81 earlier-derived ones give 14 more. -/
theorem CCase003_block029
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v7 ∨ ¬v5 ∨ ¬v3)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c35 : v6 ∨ v4 ∨ v1 ∨ v7 ∨ v2 ∨ v3)
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
    (c51 : ¬v10 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
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
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c89 : ¬v22 ∨ ¬v27 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c117 : v23 ∨ v22 ∨ v27 ∨ v26 ∨ v24 ∨ v25)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
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
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c148 : ¬v39 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c153 : ¬v39 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c169 : ¬v46 ∨ ¬v43)
    (c170 : ¬v47 ∨ ¬v43)
    (c171 : ¬v48 ∨ ¬v43)
    (c172 : ¬v43 ∨ ¬v49)
    (c174 : ¬v46 ∨ ¬v44)
    (c178 : ¬v46 ∨ ¬v45)
    (c184 : ¬v49 ∨ ¬v46)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c197 : v29 ∨ v21 ∨ v1 ∨ v34 ∨ v7 ∨ v2 ∨ v13 ∨ ¬v14 ∨ v20 ∨ v28 ∨ v8 ∨ v16 ∨ v9 ∨ v35)
    (c228 : ¬v25 ∨ v24 ∨ v18 ∨ v26 ∨ v31 ∨ v33 ∨ v32 ∨ v19)
    (c230 : ¬v46 ∨ v4 ∨ v40 ∨ v45 ∨ v38 ∨ v3 ∨ v39 ∨ v47)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c260 : ¬v46 ∨ v39 ∨ v5 ∨ v1 ∨ v4 ∨ v38 ∨ v36 ∨ v11 ∨ v10 ∨ v12 ∨ v43 ∨ v44 ∨ v45 ∨ v47)
    (c268 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v20 ∨ v19 ∨ v26)
    (c275 : v43 ∨ v23 ∨ v1 ∨ ¬v15 ∨ v22 ∨ v17 ∨ v24 ∨ v8 ∨ v16 ∨ v21 ∨ v10 ∨ v14 ∨ v44 ∨ v49)
    (c283 : v43 ∨ ¬v8 ∨ v15 ∨ v44 ∨ v21 ∨ v14 ∨ v12 ∨ v1 ∨ v5 ∨ v9 ∨ v19 ∨ v13 ∨ v2 ∨ v49)
    (c293 : v4 ∨ v6 ∨ v11 ∨ ¬v5 ∨ v13 ∨ v12 ∨ v47 ∨ v48)
    (c299 : v29 ∨ v23 ∨ v35 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v16 ∨ v28)
    (c303 : ¬v34 ∨ v41 ∨ v27 ∨ v26 ∨ v35 ∨ v33 ∨ v40 ∨ v28)
    (c311 : v43 ∨ ¬v16 ∨ v44 ∨ v23 ∨ v9 ∨ v24 ∨ v2 ∨ v15 ∨ v11 ∨ v18 ∨ v17 ∨ v8 ∨ v25 ∨ v45)
    (c319 : ¬v21 ∨ v22 ∨ v35 ∨ v28 ∨ v13 ∨ v15 ∨ v26 ∨ v20 ∨ v19 ∨ v14 ∨ v12 ∨ v36 ∨ v41 ∨ v42)
    (c323 : ¬v25 ∨ v32 ∨ v33 ∨ v26 ∨ v24 ∨ v31 ∨ v17 ∨ v18)
    (c331 : ¬v46 ∨ v36 ∨ v3 ∨ v1 ∨ v33 ∨ v32 ∨ v31 ∨ v4 ∨ v39 ∨ v40 ∨ v43 ∨ v44 ∨ v45 ∨ v47)
    (c345 : ¬v34 ∨ v41 ∨ v33 ∨ v27 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c353 : v36 ∨ ¬v35 ∨ v42 ∨ v27 ∨ v28 ∨ v41 ∨ v34 ∨ v29)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c377 : v16 ∨ v8 ∨ v17 ∨ v3 ∨ v1 ∨ v2 ∨ v10 ∨ ¬v9)
    (c379 : ¬v46 ∨ v4 ∨ v40 ∨ v45 ∨ v38 ∨ v39 ∨ v5 ∨ v47)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c475 : v29 ∨ v15 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v22)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c481 : ¬v12 ∨ v19 ∨ v5 ∨ v18 ∨ v20 ∨ v4 ∨ v13 ∨ v11)
    (c517 : ¬v46 ∨ v39 ∨ v5 ∨ v4 ∨ v38 ∨ v3 ∨ v45 ∨ v47)
    (c518 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v44 ∨ v10 ∨ v4)
    (c525 : v43 ∨ v44 ∨ v22 ∨ ¬v15 ∨ v49 ∨ v27 ∨ v21 ∨ v28 ∨ v20 ∨ v1 ∨ v13 ∨ v16 ∨ v9 ∨ v8)
    (c566 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c594 : v18 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c605 : ¬v11 ∨ ¬v6 ∨ ¬v7 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c628 : v23 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c660 : v23 ∨ ¬v4 ∨ v19 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c873 : ¬v24 ∨ v15 ∨ ¬v22 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32)
    (c876 : ¬v27 ∨ v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v34)
    (c887 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c921 : ¬v35 ∨ v22 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1111 : ¬v28 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c1118 : ¬v22 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1156 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v48)
    (c1165 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1174 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1229 : ¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1398 : ¬v7 ∨ v1 ∨ v6 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1446 : v12 ∨ v6 ∨ ¬v11 ∨ v19 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c1465 : ¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1483 : ¬v22 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v34)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1501 : ¬v11 ∨ v17 ∨ v18 ∨ v21 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1503 : v28 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1632 : v32 ∨ v1 ∨ ¬v24 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1644 : v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1662 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v15 ∨ v21)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1690 : v9 ∨ v2 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1700 : ¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ v35 ∨ v36 ∨ v40 ∨ v41)
    (c1715 : v6 ∨ ¬v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1772 : ¬v19 ∨ ¬v22 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v35)
    (c1789 : v30 ∨ v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v32)
    (c1842 : ¬v6 ∨ v1 ∨ ¬v2 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c1854 : ¬v19 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30)
    (c1856 : ¬v9 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17)
    (c1857 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1858 : ¬v21 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1874 : v1 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v29 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    (c1884 : v26 ∨ v1 ∨ v22 ∨ v24 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1885 : v1 ∨ v22 ∨ v24 ∨ ¬v25 ∨ v29 ∨ ¬v35 ∨ v41 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c1886 : ¬v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1887 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c1889 : ¬v12 ∨ v3 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1902 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c1903 : ¬v31 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v41 ∨ v47 ∨ v48)
    (c1916 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1927 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1948 : ¬v38 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c1976 : v26 ∨ v4 ∨ v5 ∨ v6 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v47)
    (c1984 : ¬v22 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31)
    (c1987 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v25 ∨ v27 ∨ v40 ∨ v41 ∨ v47)
    (c2005 : ¬v1 ∨ v47 ∨ v48 ∨ v49)
    (c2011 : ¬v26 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49)
    (c2017 : ¬v36 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c2019 : ¬v19 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49)
    (c2023 : ¬v29 ∨ v22 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49)
    (c2025 : v35 ∨ v22 ∨ ¬v24 ∨ ¬v28 ∨ v47 ∨ v48 ∨ v49)
    (c2028 : ¬v13 ∨ ¬v15 ∨ v22 ∨ v28)
    (c2030 : ¬v35 ∨ v22 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49)
    : (¬v20 ∨ v22 ∨ v29 ∨ v36 ∨ v47 ∨ v48 ∨ v49) ∧ (v15 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49) ∧ (v14 ∨ v21 ∨ v28 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v21 ∨ ¬v22 ∨ ¬v24) ∧ (¬v24 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v2 ∨ v1 ∨ v19 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47) ∧ (v14 ∨ v1 ∨ v8 ∨ v10 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v27 ∨ v1 ∨ v2 ∨ v24 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v19 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v2 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49) ∧ (v3 ∨ v1 ∨ v2 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45) ∧ (¬v5 ∨ ¬v3 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48) ∧ (¬v12 ∨ v4 ∨ v5 ∨ v18 ∨ v19 ∨ v20) ∧ (¬v35 ∨ v47 ∨ v48 ∨ v49) := by
  have c2031 : ¬v20 ∨ v22 ∨ v29 ∨ v36 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v43 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    rcases c169 with a|a
    · exact absurd u4 a
    · exact absurd u6 a
  have c2032 : v15 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n6
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
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u8 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n0
    have u9 : ¬v20 := by
      rcases c2031 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v21 := by
      rcases c319 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u6
    have u15 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v2 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u15 a
    rcases c283 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u8 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a n10
  have c2033 : ¬v8 ∨ ¬v6 ∨ v16 ∨ v21 ∨ ¬v24 ∨ v28 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v26 := by
      rcases c2011 with a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v19 := by
      rcases c2019 with a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v4 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n5
    have u11 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u15 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u16 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u17 : ¬v38 := by
      rcases c1948 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd u7 a
      · exact absurd a n9
    have u18 : ¬v31 := by
      rcases c1903 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u19 : v15 := by
      rcases c283 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n0 a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a n11
    have u20 : v39 := by
      rcases c517 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n9
    have u21 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u20 a
      · exact a
    have u27 : ¬v22 := by
      rcases c1984 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd n4 a
      · exact absurd a u18
    have u28 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a u6
      · exact a
      · exact absurd a u24
    have u29 : ¬v29 := by
      rcases c2023 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u30 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : v25 := by
      rcases c1700 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u27
      · exact a
      · exact absurd a u5
      · exact absurd a u29
      · exact absurd a n6
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a n7
    have u32 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u30
    rcases c97 with a|a|a
    · exact absurd u32 a
    · exact absurd u31 a
    · exact absurd n4 a
  have c2034 : v34 ∨ v22 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v35 := by
      rcases c2030 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v26 := by
      rcases c2011 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v29 := by
      rcases c2023 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v19 := by
      rcases c2019 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v28 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
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
    have u9 : v15 := by
      rcases c2032 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v13 := by
      rcases c2028 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u6
    have u17 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v27 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u6
    have u19 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n0
    have u20 : ¬v2 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u8
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v8 := by
      rcases c2033 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : v9 := by
      rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u12
      · exact a
      · exact absurd a u21
    have u23 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v3 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u13
      · exact a
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd u22 a
    have u26 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u6
    rcases c29 with a|a|a
    · exact absurd u25 a
    · exact absurd u26 a
    · exact absurd u19 a
  have c2035 : ¬v9 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
    have u6 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n4
    have u7 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v6 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    rcases c33 with a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd u8 a
  have c2036 : v14 ∨ v21 ∨ v28 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n2
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
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v6 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u6 a
    have u8 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u6 a
    rcases c379 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a n8
  have c2037 : v21 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n14
    have u7 : v14 := by
      rcases c2036 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v9 := by
      rcases c2035 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v20 := by
      rcases c2031 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u10
      · exact a
    have u13 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u12 a
    rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd u12 a
    · exact absurd a n14
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u10
  have c2038 : v22 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v26 := by
      rcases c2011 with a|a|a|a|a
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
    have u3 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u7 : ¬v35 := by
      rcases c2030 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v29 := by
      rcases c2023 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u11 : ¬v19 := by
      rcases c2019 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v28 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : v34 := by
      rcases c2034 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u19 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u4
    have u20 : ¬v27 := by
      rcases c1632 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : v41 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u1
    have u22 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v21 := by
      rcases c2037 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u25 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : v14 := by
      rcases c1365 with a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u12
    have u27 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a u25
    rcases c43 with a|a
    · exact absurd u27 a
    · exact absurd u26 a
  have c2039 : ¬v21 ∨ ¬v22 ∨ ¬v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u7 : v31 := by
      rcases c1984 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd n2 a
      · exact a
    have u8 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u7 a
    rcases c847 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u10
  have c2040 : v18 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v4 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n14
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v11 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u5 a
    have u10 : ¬v12 := by
      rcases c481 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u8
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a n13
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n12
  have c2041 : v21 ∨ v15 ∨ v19 ∨ ¬v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v16 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n7
    have u2 : ¬v33 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
    have u3 : v30 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
    have u14 : v13 := by
      rcases c2040 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v6 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u5
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
    have u18 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n5
      · exact a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u12
    rcases c33 with a|a|a
    · exact absurd u18 a
    · exact absurd u13 a
    · exact absurd u17 a
  have c2042 : v20 ∨ v11 ∨ v14 ∨ v18 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ ¬v31 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n7
    have u2 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v6 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n13
    have u10 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u9 a
    have u12 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u9 a
    have u13 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u10
    have u14 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u13 a
      · exact a
    rcases c481 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n4
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a n1
  have c2043 : ¬v15 ∨ ¬v24 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v22 := by
      rcases c2038 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v26 := by
      rcases c2011 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : v31 := by
      rcases c1984 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
    have u12 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v27 := by
      rcases c89 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u11 a
      · exact a
    have u19 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u11 a
    have u20 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v11 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v9 := by
      rcases c2035 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : v14 := by
      rcases c2042 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u22
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u8
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u21
    have u29 : v6 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u27
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n5
    have u30 : ¬v2 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a u10
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u31 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u29 a
    rcases c197 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u27
    · exact absurd u24 a
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u25
    · exact absurd a u1
    · exact absurd a u23
    · exact absurd a n2
  have c2044 : v42 ∨ ¬v24 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c2011 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v22 := by
      rcases c2038 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v21 := by
      rcases c2039 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u6 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u8 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v27 := by
      rcases c89 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v19 := by
      rcases c1772 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n2
    have u14 : ¬v15 := by
      rcases c2043 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v33 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a u6
    have u16 : v29 := by
      rcases c2041 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u18
    have u22 : v17 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u18
    have u23 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u24 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a n4
    have u28 : v13 := by
      rcases c2040 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u27
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u29 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u29
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u32 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u30
      · exact absurd a u11
      · exact a
      · exact absurd a u19
    rcases c1842 with a|a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u4
    · exact absurd u32 a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2045 : v35 ∨ ¬v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v26 := by
      rcases c2011 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v22 := by
      rcases c2038 with a|a|a|a|a
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
    have u4 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v27 := by
      rcases c89 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v42 := by
      rcases c2044 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n4
    have u11 : v34 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    rcases c303 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u4
  have c2046 : ¬v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v35 := by
      rcases c2045 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v22 := by
      rcases c2038 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u6 a
    have u8 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u9 : v15 := by
      rcases c873 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u10 : v17 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u5
    rcases c61 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c2047 : ¬v42 ∨ ¬v13 ∨ v17 ∨ v19 ∨ v26 ∨ v31 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n2
    have u13 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u9 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v2 := by
      rcases c15 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u9 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u13
  have c2048 : v39 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n10
    have u4 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v4 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v5 := by
      rcases c379 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n0
      · exact a
      · exact absurd a n13
    have u8 : v3 := by
      rcases c230 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n12
      · exact a
      · exact absurd a n0
      · exact absurd a n13
    rcases c27 with a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd u3 a
  have c2049 : v4 ∨ v1 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : v3 := by
      rcases c331 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n12 a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n13
    have u5 : ¬v2 := by
      rcases c15 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n2 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n0
  have c2050 : v21 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v38 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v13 := by
      rcases c2048 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
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
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v17 := by
      rcases c2047 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n12 a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v25 := by
      rcases c662 with a|a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact absurd a u2
      · exact a
    rcases c228 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n1
  have c2051 : v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v38 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v20 := by
      rcases c2050 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v13 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c2047 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n11 a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c2052 : v21 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v19 := by
      rcases c2051 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v25 := by
      rcases c323 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
    have u15 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd a n1
    have u16 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd a n1
    have u17 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
    have u18 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u11
    have u19 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u17
      · exact a
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
    have u20 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n9
    have u22 : ¬v2 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u5
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u23 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u21 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u22
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u16
    · exact absurd a u23
  have c2053 : ¬v19 ∨ ¬v27 ∨ v29 ∨ v34 ∨ v36 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a n3
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1874 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a n7
  have c2054 : v29 ∨ v21 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v27 := by
      rcases c2052 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v19 := by
      rcases c2053 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v20 := by
      rcases c268 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a n2
    have u4 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v22 := by
      rcases c2031 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c876 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd u5 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n8
  have c2055 : v4 ∨ ¬v2 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : v5 := by
      rcases c379 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
    have u3 : v3 := by
      rcases c230 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    rcases c15 with a|a|a
    · exact absurd u3 a
    · exact absurd n1 a
    · exact absurd u2 a
  have c2056 : ¬v2 ∨ v1 ∨ v19 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd n11 a
      · exact a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n11 a
      · exact a
    have u4 : v4 := by
      rcases c2055 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
    have u5 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u4 a
    have u7 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n10
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u7 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u9
  have c2057 : v28 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v21 := by
      rcases c2054 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v2 := by
      rcases c2056 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd u7 a
      · exact absurd a n9
    have u19 : v23 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u8
      · exact absurd a u18
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u11
    have u20 : v22 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd u19 a
      · exact absurd a u13
      · exact absurd a n3
      · exact a
    have u21 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u19 a
    have u22 : ¬v13 := by
      rcases c2047 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n10
    have u24 : ¬v4 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u25 : v5 := by
      rcases c379 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a n9
    have u26 : v3 := by
      rcases c230 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a n9
    rcases c27 with a|a|a
    · exact absurd u25 a
    · exact absurd u26 a
    · exact absurd u23 a
  have c2058 : v14 ∨ v1 ∨ v8 ∨ v10 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd n4 a
      · exact a
    rcases c275 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n11
  have c2059 : ¬v27 ∨ v1 ∨ v2 ∨ v24 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u3 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u5 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u4
      · exact a
    have u6 : v9 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u7 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u8 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u6 a
      · exact a
    rcases c2058 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd u5 a
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2060 : v39 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n8
    have u4 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v4 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v5 := by
      rcases c379 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n10
    have u8 : v3 := by
      rcases c230 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    rcases c27 with a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd u3 a
  have c2061 : v19 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v38 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n11 a
      · exact a
    have u3 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v13 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
    have u11 : v4 := by
      rcases c2049 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u10 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a n12
    have u12 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    rcases c1131 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c2062 : ¬v20 ∨ v2 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v9 := by
      rcases c1856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n4
    have u10 : v22 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd u9 a
      · exact absurd a u3
      · exact absurd a n4
      · exact a
    rcases c86 with a|a|a
    · exact absurd u10 a
    · exact absurd n2 a
    · exact absurd u9 a
  have c2063 : v19 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v2 := by
      rcases c2056 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u7 a
      · exact absurd a n9
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v28 := by
      rcases c2057 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n11
    have u13 : ¬v20 := by
      rcases c2062 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v27 := by
      rcases c2059 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n11
    have u15 : v21 := by
      rcases c2061 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v23 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u10
    have u18 : ¬v22 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u17 a
    rcases c799 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2064 : v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v19 := by
      rcases c2063 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
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
    have u15 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : v22 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v27 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u16
      · exact a
      · exact absurd a n6
    have u19 : ¬v25 := by
      rcases c323 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u14
    have u20 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u18
    have u21 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u19
      · exact absurd a n0
    have u22 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u19
      · exact absurd a n0
    have u23 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u19
      · exact absurd a n0
    have u24 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u20
      · exact a
      · exact absurd u10 a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u18
    have u25 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u13
    have u26 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a n6
    have u28 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u7
    have u29 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u27 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u28
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u23
    · exact absurd a u29
  have c2065 : ¬v19 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u10 : v22 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    rcases c1854 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u10 a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n3
  have c2066 : ¬v42 ∨ ¬v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v26 := by
      rcases c2064 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v19 := by
      rcases c2065 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v28 := by
      rcases c1111 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u18 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
    have u21 : ¬v22 := by
      rcases c1118 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u18 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
    have u22 : ¬v25 := by
      rcases c1885 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u14
      · exact a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : v27 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd u18 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
    have u24 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u23 a
      · exact absurd u18 a
      · exact a
    have u25 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u17
    have u26 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u16
    have u31 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u30 a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u12
    have u32 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u30 a
      · exact absurd u31 a
      · exact a
    have u33 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u31 a
      · exact absurd u30 a
      · exact a
    rcases c260 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u4
    · exact absurd a u33
    · exact absurd a u12
    · exact absurd a u32
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u26
    · exact absurd a u29
    · exact absurd a u27
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n2
  have c2067 : v21 ∨ v19 ∨ ¬v22 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v30 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v15 := by
      rcases c876 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v20 := by
      rcases c268 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    rcases c64 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c2068 : ¬v3 ∨ ¬v2 ∨ v6 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c1976 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2069 : v28 ∨ v19 ∨ ¬v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
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
    have u18 : ¬v42 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : v27 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd n2 a
      · exact absurd a u18
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
    have u20 : v22 := by
      rcases c921 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u18
    have u21 : ¬v23 := by
      rcases c85 with a|a|a
      · exact absurd u19 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v25 := by
      rcases c92 with a|a|a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v26 := by
      rcases c94 with a|a|a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact a
    have u24 : v21 := by
      rcases c2067 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u20 a
      · exact absurd a u23
      · exact absurd u19 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
    have u25 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : v2 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u7
      · exact a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u13
    have u27 : ¬v6 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u26 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u28 : ¬v3 := by
      rcases c2068 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u27
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
    have u29 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u25
    have u30 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u29 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u26 a
    · exact absurd a u28
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u30
    · exact absurd a u31
  have c2070 : v4 ∨ v3 ∨ ¬v5 ∨ v6 ∨ v11 ∨ v12 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v13 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v49 := by
      rcases c184 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
    have u10 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
    have u11 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u6
    rcases c35 with a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n1
  have c2071 : ¬v2 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v6 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v12 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v11 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
    have u12 : v5 := by
      rcases c1987 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n8
    have u13 : ¬v3 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u12 a
    have u14 : v4 := by
      rcases c2070 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u12 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    rcases c18 with a|a|a
    · exact absurd n0 a
    · exact absurd u12 a
    · exact absurd u14 a
  have c2072 : v3 ∨ v1 ∨ v2 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v10 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n10
      · exact a
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n8
    have u6 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v43 := by
      rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n13
    have u10 : ¬v49 := by
      rcases c172 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v48 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v47 := by
      rcases c170 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v46 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u9 a
    rcases c1887 with a|a|a|a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
  have c2073 : ¬v5 ∨ ¬v3 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n6
    have u3 : v7 := by
      rcases c1131 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c28 with a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c2074 : ¬v12 ∨ v4 ∨ v5 ∨ v18 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    rcases c481 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
  have c2075 : ¬v22 ∨ v19 ∨ v26 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v27 := by
      rcases c96 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v2 := by
      rcases c2071 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u11
    have u14 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v3 := by
      rcases c2072 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u11
    have u17 : ¬v20 := by
      rcases c2062 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v4 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u15 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v5 := by
      rcases c2073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n11
    have u20 : v12 := by
      rcases c1987 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u19
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n10
    have u21 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v18 := by
      rcases c481 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a u19
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u21
    rcases c673 with a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u21
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n2
  have c2076 : v27 ∨ ¬v3 ∨ v19 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v4 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v23 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v5 := by
      rcases c2073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
    have u7 : v12 := by
      rcases c1987 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c2074 with a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n3
  have c2077 : ¬v3 ∨ v19 ∨ v22 ∨ v25 ∨ v26 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n15
    have u10 : ¬v20 := by
      rcases c2031 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v27 := by
      rcases c2076 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u11 a
    have u13 : v2 := by
      rcases c2059 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n15
    have u14 : ¬v4 := by
      rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u15 : ¬v6 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u13 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u16 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n0 a
      · exact absurd u13 a
      · exact a
    rcases c1976 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n13
  have c2078 : ¬v27 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u4 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u9
    have u12 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
    have u13 : v2 := by
      rcases c2059 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u6
      · exact a
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n13
    have u14 : ¬v6 := by
      rcases c1842 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v3 := by
      rcases c2077 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v4 := by
      rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    have u17 : v5 := by
      rcases c1976 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u16
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n11
    have u18 : ¬v12 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u8
    have u19 : v11 := by
      rcases c2070 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u17 a
      · exact absurd a u14
      · exact a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u19 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u13 a
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a u21
  have c2079 : v19 ∨ ¬v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
    have u17 : v28 := by
      rcases c2069 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v26 := by
      rcases c1111 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
    have u19 : ¬v22 := by
      rcases c2075 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd u17 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v20 := by
      rcases c2031 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v25 := by
      rcases c1884 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u22 : ¬v27 := by
      rcases c2078 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd u17 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v2 := by
      rcases c2071 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u24 : v23 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u21
    have u25 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
    have u26 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u24 a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u1
    have u27 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u4
      · exact a
      · exact absurd a u28
    have u30 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u29 a
      · exact a
    have u33 : v7 := by
      rcases c1662 with a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a u9
      · exact absurd a u23
      · exact a
      · exact absurd a u30
      · exact absurd a u28
      · exact absurd a u26
    have u34 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u3
    have u35 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u32
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u27
    rcases c29 with a|a|a
    · exact absurd u35 a
    · exact absurd u33 a
    · exact absurd u34 a
  have c2080 : ¬v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u7 : ¬v1 := by
      rcases c2005 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v24 := by
      rcases c2046 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
    have u17 : v19 := by
      rcases c2079 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u18 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u17 a
    have u24 : ¬v26 := by
      rcases c2065 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u25 : v22 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u23
      · exact a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
    have u26 : ¬v25 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u8
      · exact a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
    have u27 : ¬v27 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u23
      · exact a
      · exact absurd a u3
    have u28 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u27
    have u29 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u28
      · exact a
      · exact absurd u17 a
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u27
    have u30 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u26
      · exact absurd a u24
    have u31 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u26
      · exact absurd a u24
    have u32 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u26
      · exact absurd a u24
    have u33 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u29 a
      · exact a
    have u34 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u20
    have u35 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u3
    have u36 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd u35 a
      · exact a
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a u12
      · exact absurd a u11
    have u37 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u35 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd u34 a
    · exact absurd a u36
    · exact absurd a u31
    · exact absurd a u28
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u30
    · exact absurd a u37
  exact ⟨c2031, c2032, c2036, c2039, c2046, c2056, c2058, c2059, c2065, c2071, c2072, c2073, c2074, c2080⟩
